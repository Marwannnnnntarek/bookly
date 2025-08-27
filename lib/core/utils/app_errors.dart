import 'dart:io';

import 'package:dio/dio.dart';

enum ErrorType {
  network,
  server,
  cache,
  unauthorized,
  notFound,
  timeout,
  cancelled,
  badRequest,
  unknown,
}

class AppErrors {
  final ErrorType type;
  final String? message;
  final dynamic exception;
  final int? statusCode;

  AppErrors({
    required this.type,
    this.message,
    this.exception,
    this.statusCode,
  });

  factory AppErrors.fromDioError(DioException error) {
    ErrorType errorType = ErrorType.unknown;
    String? errorMessage;
    int? statusCode;

    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        errorType = ErrorType.timeout;
        errorMessage = "Connection timed out";
        break;
      case DioExceptionType.badResponse:
        statusCode = error.response?.statusCode;
        switch (statusCode) {
          case 400:
            errorType = ErrorType.badRequest;
            errorMessage = "Bad request";
            break;
          case 401:
          case 403:
            errorType = ErrorType.unauthorized;
            errorMessage = "Unauthorized";
            break;
          case 404:
            errorType = ErrorType.notFound;
            errorMessage = "Not found";
            break;
          case 500:
          default:
            errorType = ErrorType.server;
            errorMessage = "Server error";
            break;
        }
        break;
      case DioExceptionType.cancel:
        errorType = ErrorType.cancelled;
        errorMessage = "Request cancelled";
        break;
      case DioExceptionType.unknown:
        if (error.error is SocketException) {
          errorType = ErrorType.network;
          errorMessage = "No Internet connection";
        } else {
          errorType = ErrorType.unknown;
          errorMessage = error.message;
        }
        break;
      default:
        errorType = ErrorType.unknown;
        errorMessage = error.message;
    }

    return AppErrors(
      type: errorType,
      message: errorMessage ?? error.message,
      exception: error,
      statusCode: statusCode,
    );
  }

  @override
  String toString() {
    return 'AppErrors(type: $type, message: $message, statusCode: $statusCode, exception: $exception)';
  }
}
