import 'package:dio/dio.dart';
import 'package:paypadi/core/models/transaction_model/transaction_model.dart';
import 'package:retrofit/retrofit.dart';

import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/models/account_lookup_model/account_lookup_model.dart';
import 'package:paypadi/core/models/beneficiary_model/beneficiary_model.dart';

part 'transaction_client.g.dart';

const String _basePath = "/wallets";

@RestApi()
abstract class TransactionClient {
  factory TransactionClient(Dio dio, {String baseUrl}) = _TransactionClient;

  @POST('$_basePath/payments/initiate/')
  Future<TransactionModel> initiatePayment({
    @Body() required Map<String, dynamic> payload,
  });

  @POST('$_basePath/transfer/')
  Future<TransactionModel> transfer({
    @Body() required Map<String, dynamic> payload,
  });

  @POST('$_basePath/transfer/')
  Future<dynamic> withdraw({@Body() required Map<String, dynamic> payload});

  @POST('$_basePath/transfer/')
  Future<dynamic> deposit({@Body() required Map<String, dynamic> payload});

  @POST('$_basePath/payments/lookup/')
  Future<AccountLookupModel> getAccountDetails({
    @Body() required Map<String, dynamic> payload,
  });

  @GET('$_basePath/beneficiaries/')
  Future<PaginatedListResponse<BeneficiaryModel>> getSavedBeneficiaries();

  @GET('$_basePath/beneficiaries/recent/')
  Future<PaginatedListResponse<BeneficiaryModel>> getRecentBeneficiaries();

  @GET('$_basePath/transactions/{reference}/')
  Future<TransactionHistoryModel> getTransactionByRefNo({
    @Path("reference") required String reference,
  });

  @DELETE('$_basePath/beneficiaries/{id}/')
  Future<void> deleteBeneficiary({
    @Path("id") required String beneficiaryId,
  });
}
