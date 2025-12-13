import 'package:dio/dio.dart';
import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/models/beneficiary_model/beneficiary_model.dart';
import 'package:paypadi/core/models/wallet_model/wallet_model.dart';
import 'package:retrofit/retrofit.dart';

part 'wallet_client.g.dart';

const String _basePath = "/wallets";

@RestApi()
abstract class WalletClient {
  factory WalletClient(Dio dio, {String baseUrl}) = _WalletClient;

  @GET('$_basePath/wallet/')
  Future<WalletModel> getBalance();

  @GET('$_basePath/transactions/')
  Future<WalletModel> getTransactionHistory();

  @GET('$_basePath/beneficiaries/')
  Future<ApiListResponse<BeneficiaryModel>> getBeneficiaries();

  @GET('$_basePath/transactions/{reference}')
  Future<WalletModel> getTransactionByRefNo({
    @Path("reference") required String reference,
  });
}
