import 'package:dio/dio.dart' show Dio, BaseOptions;
import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

import 'package:paypadi/config/env.dart';
import 'package:paypadi/core/utils/constants.dart' show debugLogger;

part 'api_service.g.dart';

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
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
