import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

import 'package:paypadi/config/env.dart';
import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/core/services/secure_cache_service.dart';
import 'package:paypadi/core/utils/constants.dart' show CacheKeys, debugLogger;

part 'api_service.g.dart';

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  final cache = ref.watch(secureCacheProvider);
  final Dio dio =
      Dio(
          BaseOptions(
            baseUrl: Env.baseUrl,
            connectTimeout: Duration(seconds: 30),
            receiveTimeout: Duration(seconds: 30),
            sendTimeout: Duration(seconds: 30),
          ),
        )
        ..interceptors.addAll(
          [
            AuthenticationCredentialsInterceptor(cacheService: cache),
            if (kDebugMode)
              TalkerDioLogger(
                talker: debugLogger,
                settings: const TalkerDioLoggerSettings(
                  printRequestHeaders: true,
                  printResponseHeaders: true,
                  printResponseMessage: true,
                ),
              ),
          ],
        );

  return dio;
}

class AuthenticationCredentialsInterceptor extends Interceptor {
  AuthenticationCredentialsInterceptor({required this.cacheService});
  final SecureCacheService cacheService;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (!pathDoesNotRequireCredential(options.path)) {
      final String? token = await cacheService.read(CacheKeys.accessToken);
      if (token != null && token.isNotEmpty) {
        options.headers['Authorization'] = 'Bearer $token';
      }
    }
    super.onRequest(options, handler);
  }

  bool pathDoesNotRequireCredential(String path) {
    return switch (path) {
      '/auth/login/' => true,
      '/auth/register/' => true,
      '/auth/otp/request/' => true,
      '/auth/otp/verify/' => true,
      _ => false,
    };
  }
}
