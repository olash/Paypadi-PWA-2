import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/services/api_service.dart' show dioProvider;

part 'home_client.g.dart';

const String _basePath = "/wallets";

@RestApi()
abstract class HomeClient {
  factory HomeClient(Dio dio) = _HomeClient;

  @POST('$_basePath/register')
  Future<ApiResponse<dynamic>> getBalance({
    @Body() required dynamic payload,
  });
}

@riverpod
HomeClient homeClient(Ref ref) {
  final dio = ref.watch(dioProvider);
  return HomeClient(dio);
}
