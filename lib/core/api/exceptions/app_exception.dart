// Package imports:
import 'dart:io';
import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart' show PlatformException;
import 'package:paypadi/core/api/exceptions/client_exception.dart';

import 'server_exception.dart';

abstract class AppException implements Exception {
  const AppException();

  factory AppException.handleException(dynamic exception) {
    try {
      return switch (exception) {
        DioException e => switch (e.type) {
          DioExceptionType.cancel => const ServerException.requestCancelled(),
          DioExceptionType.connectionTimeout =>
            const ServerException.requestTimeout(),
          DioExceptionType.sendTimeout => const ServerException.sendTimeout(),
          DioExceptionType.receiveTimeout =>
            const ServerException.requestTimeout(),
          DioExceptionType.badCertificate =>
            const ServerException.internalServerError(),
          DioExceptionType.badResponse => ServerException.handleResponse(
            e.response,
          ),
          DioExceptionType.connectionError =>
            const ServerException.noInternetConnection(),
          DioExceptionType.unknown =>
            const ServerException.serviceUnavailable(),
        },
        TimeoutException _ => const ServerException.requestTimeout(),
        HttpException he => ClientException(message: he.message),
        HandshakeException _ => const ServerException.internalServerError(),
        WebSocketException we => ClientException(message: we.message),
        // Rethrow Dart Errors so programming errors surface in tests/runtime.
        Error e => throw e,
        PlatformException pe => ClientException(
          message: '${pe.code}: ${pe.message ?? pe.details ?? ''}',
        ),
        FormatException fe => ClientException(message: fe.message),
        SocketException se => ClientException(message: se.message),
        Exception ex => ClientException(message: ex.toString()),
        Object() => ClientException(message: "$exception"),
        null => ClientException(message: "Null Exception"),
      };
    } on Error {
      // Don't swallow programming errors — let them surface
      rethrow;
    } on Exception catch (ex, st) {
      // Preserve stack trace when wrapping
      return ClientException(message: "${ex.toString()}\n$st");
    }
  }
}
