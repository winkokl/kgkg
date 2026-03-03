import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';

class DioExceptions implements Exception {
  DioExceptions.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.cancel:
        message = '';
        break;
      case DioExceptionType.connectionTimeout:
        message = 'Server error: connection timeout';
        break;
      case DioExceptionType.unknown:
        message = 'Server error: unknown';
        break;
      case DioExceptionType.receiveTimeout:
        message = 'Server error: receive timeout';
        break;
      case DioExceptionType.connectionError:
        message = 'Server error: connection error';
        break;
      case DioExceptionType.sendTimeout:
        message = 'Server error: send timeout';
        break;
      default:
        if (dioError.response != null) {
          try {
            final authError = dioError.response!.statusCode == 401;
            final accessError = dioError.response!.statusCode == 403;

            message = authError
                ? "Session expired. Please login again."
                : accessError
                    ? "** ${dioError.response!.data['message']}"
                    : dioError.response!.data['message'];
          } catch (e) {
            var errorStatuscode = dioError.response!.statusCode;
            message = "Error status code : $errorStatuscode and $commonErrorString";
          }
        } else {
          message = commonErrorString;
        }
        break;
    }
  }

  String message = '';

  @override
  String toString() => message;
}
