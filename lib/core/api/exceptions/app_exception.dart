import 'dart:io';
import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart' show PlatformException;
import 'package:paypadi/core/api/exceptions/client_exception.dart';
import 'package:paypadi/core/utils/typedefs.dart';

import 'server_exception.dart';

bool _isResponseParsingError(Object error) =>
    error is TypeError || error is NoSuchMethodError;

abstract class AppException implements Exception {
  const AppException();
  static ExceptionLogger? logger;

  factory AppException.handleException(dynamic exception) {
    try {
      return switch (exception) {
        DioException e => switch (e.type) {
          DioExceptionType.cancel => const ServerException.requestCancelled(),
          DioExceptionType.connectionTimeout =>
            const ServerException.requestTimeout(),
          DioExceptionType.sendTimeout => const ServerException.sendTimeout(),
          DioExceptionType.receiveTimeout =>
            const ServerException.receiveTimeout(),
          DioExceptionType.badCertificate =>
            const ServerException.internalServerError(),
          DioExceptionType.badResponse =>
            e.response != null
                ? ServerException.handleResponse(e.response)
                : const ServerException.internalServerError(),
          DioExceptionType.connectionError =>
            const ServerException.noInternetConnection(),
          DioExceptionType.unknown =>
            const ServerException.serviceUnavailable(),
        },
        TimeoutException _ => const ServerException.requestTimeout(),
        HttpException he => ClientException(message: he.message),
        HandshakeException _ => const ServerException.internalServerError(),
        WebSocketException we => ClientException(message: we.message),
        TypeError te => ClientException(
          message: 'Invalid response format from server.',
          cause: te,
        ),
        NoSuchMethodError ne => ClientException(
          message: 'Invalid response shape from server.',
          cause: ne,
        ),
        // Rethrow Dart Errors so programming errors surface in tests/runtime.
        Error e => throw e,
        PlatformException pe => ClientException(
          message: '${pe.code}: ${pe.message ?? pe.details?.toString() ?? ''}',
        ),
        FormatException fe => ClientException(message: fe.message),
        SocketException se => ClientException(message: se.message),
        Exception ex => ClientException(message: ex.toString(), cause: ex),
        Object() => ClientException(message: '$exception'),
        null => const ClientException(message: 'Null exception'),
      };
    } on Error catch (e, st) {
      logger?.call(e, st);
      if (_isResponseParsingError(e)) {
        return ClientException(
          message:
              'Failed to parse server response. Please update the app or try again later.',
          cause: e,
          stackTrace: st,
        );
      }
      rethrow;
    } on Exception catch (ex, st) {
      logger?.call(ex, st);
      return ClientException(message: ex.toString(), cause: ex, stackTrace: st);
    }
  }

  static String getExceptionMessage(AppException exception) {
    return switch (exception) {
      ServerException serverEx => serverEx.map(
        requestCancelled: (_) =>
            'Your request was cancelled. Please try again.',
        requestTimeout: (_) =>
            'Connection timed out. Please check your internet connection and try again.',
        sendTimeout: (_) =>
            'Request is taking too long to send. Please try again.',
        receiveTimeout: (_) =>
            'Server is taking too long to respond. Please try again later.',
        badRequest: (e) =>
            e.reason ??
            'Invalid request. Please check your input and try again.',
        unauthorizedRequest: (e) =>
            e.reason ?? 'You are not authorized to perform this action.',
        forbiddenRequest: (e) =>
            e.reason ?? 'You are forbidden from performing this action.',
        methodNotAllowed: (e) =>
            e.reason ?? 'The requested method is not allowed.',
        notAcceptable: (e) =>
            e.reason ?? 'The requested resource is not acceptable.',
        conflict: (e) =>
            e.reason ?? 'The request conflicts with the current state.',
        unsupportedMediaType: (e) => e.reason ?? 'Unsupported media type.',
        tooManyRequests: (e) {
          final suffix = e.retryAfter != null
              ? ' Try again in ${e.retryAfter!.inSeconds} seconds.'
              : ' Please try again later.';
          return (e.reason ?? 'Too many requests.') + suffix;
        },
        notImplemented: (e) => e.reason ?? 'This feature is not yet available.',
        badGateway: (e) => e.reason ?? 'Bad gateway. Please try again later.',
        notFound: (e) => e.reason ?? 'The requested resource was not found.',
        unprocessableEntity: (e) =>
            e.reason ??
            'Unable to process your request. Please check your input.',
        internalServerError: (_) =>
            'Something went wrong on our end. Please try again later.',
        serviceUnavailable: (_) =>
            'Service is currently unavailable. Please try again later.',
        noInternetConnection: (_) =>
            'No internet connection. Please check your network and try again.',
        defaultError: (e) =>
            e.error ?? 'An unexpected error occurred. Please try again.',
      ),
      ClientException clientEx => _getClientExceptionMessage(clientEx),
      _ => 'Something went wrong. Please try again later.',
    };
  }

  static String _getClientExceptionMessage(ClientException ex) {
    final msg = ex.message.toLowerCase();

    if (msg.contains('network') || msg.contains('connection')) {
      return 'Network connection problem. Please check your internet and try again.';
    }
    if (msg.contains('timeout')) {
      return 'Request timed out. Please try again.';
    }
    if (msg.contains('certificate') || msg.contains('ssl')) {
      return 'Security connection error. Please try again later.';
    }
    if (msg.contains('permission') || msg.contains('denied')) {
      return 'Permission denied. Please check your settings.';
    }
    if (msg.contains('format') || msg.contains('parse')) {
      return 'Data format error. Please try again.';
    }

    return ex.message.isNotEmpty
        ? ex.message
        : 'An error occurred. Please try again later.';
  }
}
