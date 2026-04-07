// Package imports:
import 'dart:io';
import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart' show PlatformException;
import 'package:paypadi/core/api/exceptions/client_exception.dart';

import 'server_exception.dart';

bool _isResponseParsingError(Object error) =>
    error is TypeError ||
    error.runtimeType.toString() == 'CastError' ||
    error is NoSuchMethodError;

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
            const ServerException.receiveTimeout(),
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
        TypeError te => ClientException(
          message: 'Invalid response format from server: ${te.toString()}',
        ),
        NoSuchMethodError ne => ClientException(
          message: 'Invalid response shape from server: ${ne.toString()}',
        ),
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
    } on Error catch (e) {
      if (_isResponseParsingError(e)) {
        return ClientException(
          message:
              'Failed to parse server response. Please update the app or try again later.',
        );
      }

      // Don't swallow programming errors — let them surface.
      rethrow;
    } on Exception catch (ex, st) {
      // Preserve stack trace when wrapping
      return ClientException(message: "${ex.toString()}\n$st");
    }
  }

  // Add this static method to the AppException class
  static String getExceptionMessage(AppException exception) {
    return switch (exception) {
      ServerException serverEx => serverEx.map(
        requestCancelled: (_) =>
            "Your request was cancelled. Please try again.",
        requestTimeout: (_) =>
            "Connection timed out. Please check your internet connection and try again.",
        sendTimeout: (_) =>
            "Request is taking too long to send. Please try again.",
        receiveTimeout: (_) =>
            "Server is taking too long to respond. Please try again later.",
        badRequest: (e) =>
            e.reason ??
            "Invalid request. Please check your input and try again.",
        unauthorizedRequest: (e) =>
            e.reason ?? "You are not authorized to perform this action.",
        notFound: (e) => e.reason ?? "The requested resource was not found.",
        unprocessableEntity: (e) =>
            e.reason ??
            "Unable to process your request. Please check your input.",
        internalServerError: (_) =>
            "Something went wrong on our end. Please try again later.",
        serviceUnavailable: (_) =>
            "Service is currently unavailable. Please try again later.",
        noInternetConnection: (_) =>
            "No internet connection. Please check your network and try again.",
        defaultError: (e) =>
            e.error ?? "An unexpected error occurred. Please try again.",
      ),
      ClientException clientEx => _getClientExceptionMessage(clientEx.message),
      _ => "Something went wrong. Please try again later.",
    };
  }

  // Helper method to provide more specific client error messages
  static String _getClientExceptionMessage(String originalMessage) {
    final lowercaseMessage = originalMessage.toLowerCase();

    if (lowercaseMessage.contains('network') ||
        lowercaseMessage.contains('connection')) {
      return "Network connection problem. Please check your internet and try again.";
    }

    if (lowercaseMessage.contains('timeout')) {
      return "Request timed out. Please try again.";
    }

    if (lowercaseMessage.contains('certificate') ||
        lowercaseMessage.contains('ssl')) {
      return "Security connection error. Please try again later.";
    }

    if (lowercaseMessage.contains('permission') ||
        lowercaseMessage.contains('denied')) {
      return "Permission denied. Please check your settings.";
    }

    if (lowercaseMessage.contains('format') ||
        lowercaseMessage.contains('parse')) {
      return "Data format error. Please try again.";
    }

    // Return a user-friendly version or fallback
    return "An error occurred. Please try again later.";
  }
}
