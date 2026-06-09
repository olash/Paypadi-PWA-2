import 'package:dio/dio.dart';
import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/models/account_payout_model/account_payout_model.dart';
import 'package:paypadi/core/models/bank_model/bank_model.dart';
import 'package:retrofit/retrofit.dart';

part 'payout_account_client.g.dart';

const String _basePath = '/auth/driver/payout-accounts/';

@RestApi()
abstract class PayoutAccountClient {
  factory PayoutAccountClient(Dio dio, {String baseUrl}) = _PayoutAccountClient;

  // @GET(_basePath)
  // Future<ApiResponse<AccountPayoutModel>> getListOfAllAccounts({
  //   @Query("page") required int page,
  // });

  @POST(_basePath)
  Future<ApiResponse<AccountPayoutModel>> createPayoutAccount({
    @Body() required Map<String, dynamic> payload,
  });

  @GET('/auth/banks/')
  Future<ApiListResponse<BankModel>> getListOfAllBanks();

  @GET('$_basePath/{id}/')
  Future<ApiResponse<AccountPayoutModel>> getAccountById({
    @Path('id') required String id,
  });

  @POST('$_basePath/{id}/set_primary/')
  Future<ApiResponse<AccountPayoutModel>> makeAccountWithIdPrimary({
    @Path('id') required String id,
    @Body() required Map<String, dynamic> payload,
  });

  @POST('$_basePath/{id}/verify/')
  Future<ApiResponse<AccountPayoutModel>> verfiyAccountWithId({
    @Path('id') required String id,
    @Body() required Map<String, dynamic> payload,
  });

  @PUT('$_basePath/{id}/')
  Future<ApiResponse<AccountPayoutModel>> updateAccount({
    @Path('id') required String id,
    @Body() required Map<String, dynamic> payload,
  });

  @PATCH('$_basePath/{id}/')
  Future<ApiResponse<AccountPayoutModel>> partiallyUpdateAccount({
    @Path('id') required String id,
    @Body() required Map<String, dynamic> payload,
  });

  @DELETE('$_basePath/{id}/')
  Future<ApiResponse> deleteAccount({
    @Path('id') required String id,
  });
}
