import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_exception.freezed.dart';

@freezed
sealed class ServerException with _$ServerException implements Exception {
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
  const factory ServerException.formatException(String message) =
      _FormatException;
  const factory ServerException.typeException(String message) = _TypeException;
  const factory ServerException.randomException(String message) =
      _RandomException;

  static ServerException _handleResponse(Response<dynamic>? response) {
    int statusCode = response?.statusCode ?? 0;
    String message = response?.data["message"];

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
        return ServerException.defaultError(
          "Unknown error with status code: $statusCode",
        );
    }
  }

  static ServerException handleException(dynamic exception) {
    ServerException networkExceptions;

    if (exception is Exception) {
      try {
        if (exception is DioException) {
          switch (exception.type) {
            case DioExceptionType.cancel:
              networkExceptions = const ServerException.requestCancelled();
              break;

            case DioExceptionType.connectionTimeout:
              networkExceptions = const ServerException.requestTimeout();
              break;

            case DioExceptionType.receiveTimeout:
              networkExceptions = const ServerException.receiveTimeout();
              break;

            case DioExceptionType.sendTimeout:
              networkExceptions = const ServerException.sendTimeout();
              break;

            case DioExceptionType.connectionError:
              networkExceptions = const ServerException.noInternetConnection();
              break;

            case DioExceptionType.badCertificate:
              networkExceptions = const ServerException.internalServerError();
              break;

            case DioExceptionType.badResponse:
              networkExceptions = _handleResponse(exception.response);
              break;

            case DioExceptionType.unknown:
              if (exception.error is SocketException) {
                networkExceptions =
                    const ServerException.noInternetConnection();
              } else {
                networkExceptions = const ServerException.serviceUnavailable();
              }
              break;
          }
        }
        networkExceptions = ServerException.randomException(
          "A Random Exception has occurred!: $exception",
        );
        return networkExceptions;
      } on FormatException catch (e) {
        return ServerException.formatException(e.toString());
      } catch (e) {
        return ServerException.randomException(
          "A Exception has occurred!: $exception",
        );
      }
    } else {
      if (exception.toString().contains("is not a subtype of")) {
        return ServerException.typeException(exception.toString());
      }
      return ServerException.randomException(
        "A Exception has occurred!: $exception",
      );
    }
  }

  static String getErrorMessage(ServerException appException) {
    return switch (appException) {
      ServerException.receiveTimeout => "A receive timeout occurred",
      ServerException.requestCancelled => "Your request was cancelled.",
      ServerException.internalServerError => "Internal Server Error",
      ServerException.serviceUnavailable => "Service unavailable",
      ServerException.requestTimeout => "Connection request timeout",
      ServerException.noInternetConnection => "No internet connection",
      ServerException.sendTimeout =>
        "Send timeout in connection with API server",
      _NotFound(:final reason) => "$reason",
      _BadRequest(:final error) => "$error",
      _UnauthorizedRequest(:final reason) => "$reason",
      _UnprocessableEntity(:final reason) => "$reason",

      _ => "Oops!, we ran into technical difficulties. Try again later.",
    };
  }
}
