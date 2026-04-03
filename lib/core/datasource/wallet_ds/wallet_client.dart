import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/models/bank_account_model/bank_account_model.dart';
import 'package:paypadi/core/models/beneficiary_model/beneficiary_model.dart';
import 'package:paypadi/core/models/wallet_model/wallet_model.dart';

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

  @GET('$_basePath/deposit/account/')
  Future<WalletModel> getDepositAccount();

  @POST('$_basePath/payments/lookup/')
  Future<WalletModel> getAccountDetails({
    @Body() required Map<String, dynamic> payload,
  });

  @GET('$_basePath/transactions/{reference}/')
  Future<WalletModel> getTransactionByRefNo({
    @Path("reference") required String reference,
  });

  @POST('$_basePath/bank/verify/')
  Future<ApiResponse<BankAccountModel>> verifyBankAndGetAccountName({
    @Body() required Map<String, dynamic> payload,
  });
}
