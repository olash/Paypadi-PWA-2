import 'package:dio/dio.dart';
import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/clients/wallet/i_wallet_client.dart';
import 'package:paypadi/core/models/bank_model/bank_model.dart';
import 'package:paypadi/core/models/beneficiary_model/beneficiary_model.dart';
import 'package:paypadi/core/models/transaction_model/transaction_model.dart';
import 'package:paypadi/core/models/user_bank_account_model/user_bank_account_model.dart';
import 'package:paypadi/core/models/wallet_model/wallet_model.dart';
import 'package:retrofit/retrofit.dart';

part 'wallet_client.g.dart';

const String _basePath = '/wallet';

@RestApi()
abstract class WalletClient implements IWalletClient {
  factory WalletClient(Dio dio, {String baseUrl}) = _WalletClient;

  @override
  @GET('$_basePath/wallet/')
  Future<ApiResponse<WalletModel>> getBalance();

  @override
  @GET('$_basePath/transactions/')
  Future<ApiResponse<PaginatedListResponse<TransactionModel>>>
  getTransactionHistory({
    @Query('page') required int page,
    @Query('page_size') required int pageSize,
  });

  @override
  @GET('$_basePath/deposit/account/')
  Future<ApiResponse<UserBankAccountModel>> getDepositAccount();

  @override
  @POST('$_basePath/beneficiaries/')
  Future<ApiResponse<BeneficiaryModel>> saveBeneficiary({
    @Body() required Map<String, dynamic> payload,
  });

  @override
  @POST('$_basePath/transfer/verify-bank-account/')
  Future<ApiResponse<VerifiedBankAccountModel>> verifyBankInformation({
    @Body() required Map<String, dynamic> payload,
  });
}
