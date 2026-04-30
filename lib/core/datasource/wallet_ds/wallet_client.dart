import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/models/bank_model/bank_model.dart';
import 'package:paypadi/core/models/beneficiary_model/beneficiary_model.dart';
import 'package:paypadi/core/models/transaction_model/transaction_model.dart';
import 'package:paypadi/core/models/user_bank_account_model/user_bank_account_model.dart';
import 'package:paypadi/core/models/wallet_model/wallet_model.dart';

part 'wallet_client.g.dart';

const String _basePath = "/wallets";

@RestApi()
abstract class WalletClient {
  factory WalletClient(Dio dio, {String baseUrl}) = _WalletClient;

  @GET('$_basePath/wallet/')
  Future<ApiResponse<WalletModel>> getBalance();

  @GET('$_basePath/transactions/')
  Future<ApiResponse<PaginatedListResponse<TransactionHistoryModel>>>
  getTransactionHistory({
    @Query('page') required int page,
    @Query('page_size') required int pageSize,
  });

  @GET('$_basePath/deposit/account/')
  Future<ApiResponse<UserBankAccountModel>> getDepositAccount();

  @POST('$_basePath/beneficiaries/')
  Future<ApiResponse<BeneficiaryModel>> saveBeneficiary({
    @Body() required Map<String, dynamic> payload,
  });

  @POST('$_basePath/bank/verify/')
  Future<ApiResponse<VerifiedBankAccountModel>> verifyBankInformation({
    @Body() required Map<String, dynamic> payload,
  });
}
