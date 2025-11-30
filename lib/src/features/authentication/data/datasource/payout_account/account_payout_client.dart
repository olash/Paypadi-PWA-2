import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/src/features/authentication/domain/dtos/requests/payloads.dart';
import 'package:paypadi/src/features/authentication/domain/models/account_payout_model.dart';

part 'account_payout_client.g.dart';

const String _basePath = "/auth/driver/payout-accounts/";

@RestApi()
abstract class AccountPayoutClient {
  factory AccountPayoutClient(Dio dio, {String baseUrl}) = _AccountPayoutClient;

  @GET(_basePath)
  Future<ApiListResponse<AccountPayoutModel>> getListOfAllAccounts({
    @Query("page") required int page,
  });

  @POST(_basePath)
  Future<AccountPayoutModel> createAccount({
    @Body() required PayoutAccountPayload payload,
  });

  @GET("$_basePath/list-banks/")
  Future<ApiListResponse<AccountPayoutModel>> getListOfAllBanks({
    @Query("page") required int page,
  });

  @GET("$_basePath/{id}/")
  Future<AccountPayoutModel> getAccountById({
    @Path("id") required String id,
  });

  @POST("$_basePath/{id}/set_primary/")
  Future<AccountPayoutModel> makeAccountWithIdPrimary({
    @Path("id") required String id,
    @Body() required PayoutAccountPayload payload,
  });

  @POST("$_basePath/{id}/verify/")
  Future<AccountPayoutModel> verfiyAccountWithId({
    @Path("id") required String id,
    @Body() required PayoutAccountPayload payload,
  });

  @PUT("$_basePath/{id}/")
  Future<AccountPayoutModel> updateAccount({
    @Path("id") required String id,
    @Body() required PayoutAccountPayload payload,
  });

  @PATCH("$_basePath/{id}/")
  Future<AccountPayoutModel> partiallyUpdateAccount({
    @Path("id") required String id,
    @Body() required PayoutAccountPayload payload,
  });

  @DELETE("$_basePath/{id}/")
  Future<void> deleteAccount({
    @Path("id") required String id,
  });
}
