import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'transaction_client.g.dart';

const String _basePath = "/wallets";

@RestApi()
abstract class TransactionClient {
  factory TransactionClient(Dio dio, {String baseUrl}) = _TransactionClient;

  @POST('$_basePath/transfer/')
  Future<dynamic> transfer({@Body() required Map<String, dynamic> payload});

  @POST('$_basePath/transfer/')
  Future<dynamic> withdraw({@Body() required Map<String, dynamic> payload});

  @POST('$_basePath/transfer/')
  Future<dynamic> deposit({@Body() required Map<String, dynamic> payload});
}
