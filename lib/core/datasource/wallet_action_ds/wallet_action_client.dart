import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'wallet_action_client.g.dart';

const String _basePath = "/wallets";

@RestApi()
abstract class WalletActionClient {
  factory WalletActionClient(Dio dio, {String baseUrl}) = _WalletActionClient;

  @POST('$_basePath/transfer/')
  Future<dynamic> transfer({
    @Body() required dynamic payload,
  });

  @POST('$_basePath/transfer/')
  Future<dynamic> withdraw({
    @Body() required dynamic payload,
  });

  @POST('$_basePath/transfer/')
  Future<dynamic> deposit({
    @Body() required dynamic payload,
  });
}
