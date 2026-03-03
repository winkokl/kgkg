import 'dart:async';

import 'package:mgkaung_dms_mobile/core/helpers/shared_preferences.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/api_base.dart';
import 'package:mgkaung_dms_mobile/core/providers.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'refresh_token_interceptor.g.dart';

@Riverpod(keepAlive: true)
RefreshTokenInterceptor refreshTokenInterceptor(RefreshTokenInterceptorRef ref) {
  return RefreshTokenInterceptor(ref);
}

class RefreshTokenInterceptor extends Interceptor {
  List<Map<dynamic, dynamic>> failedRequests = [];
  bool isRefreshing = false;

  final Ref ref;

  RefreshTokenInterceptor(this.ref);

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    String lan = '';

    options.connectTimeout = const Duration(seconds: 10);
    options.receiveTimeout = const Duration(seconds: 10);
    final token = SharedPrefs.getString('token');
    options.headers['Authorization'] = 'Bearer $token';
    // options.headers['Content-Type'] = 'application/json';
    options.headers['Access-Control-Allow-Origin'] = '*';
    options.headers['Accept'] = '';
    options.headers['Accept-Language'] = lan;
    debugPrint('REQUEST[${options.method}] => PATH: ${options.path}');
    handler.next(options);
    return;
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    debugPrint('ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}, IS REFRESHING: ${isRefreshing.toString()}');
    debugPrint('ERROR TYPE: ${err.type}');
    debugPrint('ERROR MESSAGE: ${err.message}');
    debugPrint('RESPONSE DATA: ${err.response?.data}');

    if (err.response?.statusCode == 401) {
      if (SharedPrefs.getString('refreshToken') == null) {
        debugPrint("LOGGING OUT: NO REFRESH TOKEN FOUND");
        ref.read(isSessionExpiredNotifierProvider.notifier).setSessionExpired();
        return handler.reject(err);
      }
      if (!isRefreshing) {
        debugPrint("ACCESS TOKEN EXPIRED, GETTING NEW TOKEN PAIR");
        isRefreshing = true;

        await refreshToken(err, handler);
      } else {
        debugPrint("ADDING ERRRORED REQUEST TO FAILED QUEUE");
        failedRequests.add({'err': err, 'handler': handler});
      }
    } else {
      return handler.reject(err);
    }
  }

  FutureOr refreshToken(DioException err, ErrorInterceptorHandler handler) async {
    Dio retryDio = Dio(
      BaseOptions(
        headers: <String, String>{'Content-Type': 'application/json', 'Authorization': 'Bearer ${SharedPrefs.getString('token')}'},
      ),
    );
    try {
      var response = await retryDio.post('${ApiBase.baseUrl}/mobile/auth/refresh', data: {"refresh_token": SharedPrefs.getString('refreshToken')});
      var parsedResponse = response.data;
      // handle setting tokens in your store for future requests
      SharedPrefs.setString('token', parsedResponse['data']['access_token']);
      SharedPrefs.setString('refreshToken', parsedResponse['data']['refresh_token']);

      isRefreshing = false;
      failedRequests.add({'err': err, 'handler': handler});

      debugPrint("RETRYING ${failedRequests.length} FAILED REQUEST(s)");

      await retryRequests(parsedResponse['data']['access_token']);
    } on DioException catch (e) {
      isRefreshing = false;
      if (e.response == null) return handler.reject(err);
      if (e.response!.statusCode == 401 || e.response!.statusCode == 403) {
        debugPrint("LOGGING OUT: EXPIRED REFRESH TOKEN");
        SharedPrefs.remove("token");
        SharedPrefs.remove("refreshToken");
        ref.read(isSessionExpiredNotifierProvider.notifier).setSessionExpired();
        return handler.reject(err);
      }
    } catch (e) {
      isRefreshing = false;

      return handler.reject(err);
    }
  }

  Future retryRequests(token) async {
    Dio retryDio = Dio();
    // retryDio.interceptors.add(PrettyDioLogger(requestHeader: true, requestBody: true, responseBody: true, responseHeader: false, error: true, compact: true, maxWidth: 90));

    for (var i = 0; i < failedRequests.length; i++) {
      debugPrint('RETRYING[$i] => PATH: ${failedRequests[i]['err'].requestOptions.path}');
      RequestOptions requestOptions = failedRequests[i]['err'].requestOptions as RequestOptions;
      requestOptions.headers = {'Authorization': 'Bearer $token', 'Content-Type': 'application/json'};
      await retryDio.fetch(requestOptions).then(
            failedRequests[i]['handler'].resolve,
            onError: (error) => failedRequests[i]['handler'].reject(error as DioException),
          );
    }
    isRefreshing = false;
    failedRequests = [];
  }
}
