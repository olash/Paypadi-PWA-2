import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/models/account_payout_model/account_payout_model.dart';
import 'package:paypadi/core/models/bank_model/bank_model.dart';

abstract interface class IPayoutAccountClient {
  Future<ApiResponse<AccountPayoutModel>> createPayoutAccount({
    required Map<String, dynamic> payload,
  });

  Future<ApiListResponse<BankModel>> getListOfAllBanks();

  Future<ApiResponse<AccountPayoutModel>> getAccountById({
    required String id,
  });

  Future<ApiResponse<AccountPayoutModel>> makeAccountWithIdPrimary({
    required String id,
    required Map<String, dynamic> payload,
  });

  Future<ApiResponse<AccountPayoutModel>> verfiyAccountWithId({
    required String id,
    required Map<String, dynamic> payload,
  });

  Future<ApiResponse<AccountPayoutModel>> updateAccount({
    required String id,
    required Map<String, dynamic> payload,
  });

  Future<ApiResponse<AccountPayoutModel>> partiallyUpdateAccount({
    required String id,
    required Map<String, dynamic> payload,
  });

  Future<ApiResponse<void>> deleteAccount({
    required String id,
  });
}
