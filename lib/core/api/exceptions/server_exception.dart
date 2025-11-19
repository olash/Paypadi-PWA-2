import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:paypadi/core/api/exceptions/app_exception.dart';

part 'server_exception.freezed.dart';

@freezed
sealed class ServerException extends AppException with _$ServerException {
  const ServerException._() : super();
  const factory ServerException.requestCancelled() = _RequestCancelled;
  const factory ServerException.requestTimeout() = _RequestTimeout;
  const factory ServerException.sendTimeout() = _SendTimeout;
  const factory ServerException.receiveTimeout() = _ReceiveTimeout;
  const factory ServerException.badRequest(String? error) = _BadRequest;
  const factory ServerException.unauthorizedRequest(String? reason) =
      _UnauthorizedRequest;
  const factory ServerException.notFound(String? reason) = _NotFound;
  const factory ServerException.unprocessableEntity(String? reason) =
      _UnprocessableEntity;
  const factory ServerException.internalServerError() = _InternalServerError;
  const factory ServerException.serviceUnavailable() = _ServiceUnavailable;
  const factory ServerException.noInternetConnection() = _NoInternetConnection;
  const factory ServerException.defaultError(String? error) = _DefaultError;

  static ServerException handleResponse(Response<dynamic>? response) {
    int? statusCode = response?.statusCode;

    // Safely extract message from response data if available
    String? message;
    if (response?.data is Map && response?.data.containsKey("message")) {
      message = response?.data["message"] as String?;
    }

    if (statusCode == null) {
      return ServerException.defaultError(
        "No status code received from server.",
      );
    }

    switch (statusCode) {
      case 400:
        return ServerException.badRequest(message);
      case 401:
        return ServerException.unauthorizedRequest(message);
      case 403:
        return ServerException.unauthorizedRequest(message);
      case 404:
        return ServerException.notFound(message);
      case 408:
        return const ServerException.requestTimeout();
      case 422:
        return ServerException.unprocessableEntity(message);
      case 500:
        return const ServerException.internalServerError();
      case 503:
        return const ServerException.serviceUnavailable();
      default:
        // The default error message is used when the status code is unrecognized.
        return ServerException.defaultError(
          "Unknown error with status code: $statusCode",
        );
    }
  }

}
