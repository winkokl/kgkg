import 'package:mgkaung_dms_mobile/core/infrastructure/api_base.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/custom_response.dart';
import 'package:mgkaung_dms_mobile/core/infrastructure/refresh_token_interceptor.dart';
import 'package:dio/dio.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'dio_client.g.dart';

@Riverpod(keepAlive: true)
DioClient dioClient(DioClientRef ref) {
  final dioClient = DioClient(ref.watch(refreshTokenInterceptorProvider));
  ref.onDispose(dioClient.dio.close);
  return dioClient;
}

class DioClient<T> {
  final RefreshTokenInterceptor refreshTokenInterceptor;

  final dio = Dio(BaseOptions(
    contentType: 'application/json',
    baseUrl: ApiBase.baseUrl,
    headers: {
      // Prevent ngrok browser warning when tunneling
      'ngrok-skip-browser-warning': 'true',
    },
  ));

  DioClient(this.refreshTokenInterceptor) {
    dio.interceptors.add(refreshTokenInterceptor);
    // dio.interceptors.add(PrettyDioLogger(requestHeader: true, requestBody: true, responseBody: true, responseHeader: false, error: true, compact: true, maxWidth: 90));
  }

  Future<dynamic> get(
    String uri, {
    Map<String, dynamic>? queryParam,
    Map<String, dynamic>? headers,
    CancelToken? cancelToken,
  }) async {
    dio.options.headers = headers;
    if (queryParam != null) {
      queryParam.removeWhere((key, value) => value.toString().isEmpty);
    }
    final Response response = await dio.get(uri, queryParameters: queryParam, cancelToken: cancelToken);
    return response.data;
  }

  Future<CustomResponse> post(
    String uri, {
    Object? data,
    Map<String, dynamic>? queryParam,
    Map<String, dynamic>? headers,
    CancelToken? cancelToken,
    String? contentType,
  }) async {
    final Response response = await dio.post(uri, data: data, cancelToken: cancelToken);
    return CustomResponse.fromJson(response.data);
  }

  Future<dynamic> put(
    String uri, {
    Object? data,
    Map<String, dynamic>? queryParam,
    Map<String, dynamic>? headers,
    String? token,
    CancelToken? cancelToken,
  }) async {
    final Response response = await dio.put(uri, data: data, cancelToken: cancelToken);
    return response.data;
  }

  Future<CustomResponse> patch(
    String uri, {
    Object? data,
    Map<String, dynamic>? queryParam,
    Map<String, dynamic>? headers,
    String? token,
    CancelToken? cancelToken,
  }) async {
    final Response response = await dio.patch(uri, data: data, cancelToken: cancelToken);
    return CustomResponse.fromJson(response.data);
  }

  Future<CustomResponse> delete(
    String uri, {
    Object? data,
    Map<String, dynamic>? queryParam,
    Map<String, dynamic>? headers,
    CancelToken? cancelToken,
  }) async {
    final Response response = await dio.delete(uri, data: data, cancelToken: cancelToken);
    return CustomResponse.fromJson(response.data);
  }
}
