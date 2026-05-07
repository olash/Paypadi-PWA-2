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
  const factory ServerException.badRequest(String? reason) = _BadRequest;
  const factory ServerException.unauthorizedRequest(String? reason) =
      _UnauthorizedRequest;
  const factory ServerException.forbiddenRequest(String? reason) =
      _ForbiddenRequest;
  const factory ServerException.methodNotAllowed(String? reason) =
      _MethodNotAllowed;
  const factory ServerException.notAcceptable(String? reason) = _NotAcceptable;
  const factory ServerException.conflict(String? reason) = _Conflict;
  const factory ServerException.unsupportedMediaType(String? reason) =
      _UnsupportedMediaType;

  const factory ServerException.tooManyRequests({
    String? reason,
    Duration? retryAfter,
  }) = _TooManyRequests;

  const factory ServerException.notImplemented(String? reason) =
      _NotImplemented;
  const factory ServerException.badGateway(String? reason) = _BadGateway;
  const factory ServerException.notFound(String? reason) = _NotFound;
  const factory ServerException.unprocessableEntity(String? reason) =
      _UnprocessableEntity;
  const factory ServerException.internalServerError() = _InternalServerError;
  const factory ServerException.serviceUnavailable() = _ServiceUnavailable;
  const factory ServerException.noInternetConnection() = _NoInternetConnection;
  const factory ServerException.defaultError(String? error) = _DefaultError;

  static ServerException handleResponse(Response<dynamic>? response) {
    final statusCode = response?.statusCode;

    if (statusCode == null) {
      return const ServerException.defaultError(
        'No status code received from server.',
      );
    }

    // avoids double null-check and bad cast if detail is not a String.
    String? message;
    final data = response?.data;
    if (data is Map) {
      final errorMessage = data['error'];
      if (errorMessage is String) message = errorMessage;
    }

    switch (statusCode) {
      case 400:
        return ServerException.badRequest(message);
      case 401:
        return ServerException.unauthorizedRequest(message);
      case 403:
        return ServerException.forbiddenRequest(message);
      case 404:
        return ServerException.notFound(message);
      case 405:
        return ServerException.methodNotAllowed(message);
      case 406:
        return ServerException.notAcceptable(message);
      case 408:
        return const ServerException.requestTimeout();
      case 409:
        return ServerException.conflict(message);
      case 415:
        return ServerException.unsupportedMediaType(message);
      case 422:
        return ServerException.unprocessableEntity(message);
      case 429:
        // Parse Retry-After header (seconds integer form; ignores HTTP-date form).
        final raw = response?.headers.value('Retry-After');
        final seconds = raw != null ? int.tryParse(raw) : null;
        return ServerException.tooManyRequests(
          reason: message,
          retryAfter: seconds != null ? Duration(seconds: seconds) : null,
        );
      case 500:
        return const ServerException.internalServerError();
      case 501:
        return ServerException.notImplemented(message);
      case 502:
        return ServerException.badGateway(message);
      case 503:
        return const ServerException.serviceUnavailable();
      default:
        return ServerException.defaultError(
          'Unrecognised status code: $statusCode',
        );
    }
  }
}
