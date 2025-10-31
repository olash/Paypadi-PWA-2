import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/services/api_service.dart' show dioProvider;

part 'transfer_client.g.dart';

const String _basePath = "/wallets";

@RestApi()
abstract class TransferClient {
  factory TransferClient(Dio dio) = _TransferClient;

  @POST('$_basePath/transfer')
  Future<ApiResponse<dynamic>> transfer({
    @Body() required dynamic payload,
  });
}

@riverpod
TransferClient transferClient(Ref ref) {
  final dio = ref.watch(dioProvider);
  return TransferClient(dio);
}
