import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/core/services/api_service.dart' show dioProvider;

part 'authentication_client.g.dart';

@RestApi()
abstract class AuthenticationClient {
  factory AuthenticationClient(Dio dio) = _AuthenticationClient;
}

@riverpod
AuthenticationClient authClient(Ref ref) {
  final dio = ref.watch(dioProvider);
  return AuthenticationClient(dio);
}
