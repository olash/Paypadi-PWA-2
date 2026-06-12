import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/api/result.dart';
import 'package:paypadi/core/clients/transaction/transaction_client.dart';
import 'package:paypadi/core/models/account_lookup_model/account_lookup_model.dart';
import 'package:paypadi/core/models/beneficiary_model/beneficiary_model.dart';
import 'package:paypadi/core/models/payment_model/payment_model.dart';
import 'package:paypadi/core/models/transaction_model/transaction_model.dart';
import 'package:paypadi/core/utils/typedefs.dart';

class TransactionRepository {
  const TransactionRepository(this.client);
  final TransactionClient client;

  FutureResultOf<ApiResponse<PaymentModel>> initiatePayment(
    Map<String, dynamic> payload,
  ) async {
    final response = await Result.fromAsync<ApiResponse<PaymentModel>>(
      () => client.initiatePayment(payload: payload),
    );
    return response;
  }

  FutureResultOf<ApiResponse<TransactionModel>> transfer(
    Map<String, dynamic> payload,
  ) async {
    final response = await Result.fromAsync<ApiResponse<TransactionModel>>(
      () => client.transfer(payload: payload),
    );
    return response;
  }

  FutureResultOf<ApiListResponse<BeneficiaryModel>>
  getRecentBeneficiaries() async {
    final response = await Result.fromAsync<ApiListResponse<BeneficiaryModel>>(
      client.getRecentBeneficiaries,
    );
    return response;
  }

  FuturePaginatedApiOf<BeneficiaryModel> getSavedBeneficiaries() async {
    final response =
        await Result.fromAsync<
          ApiResponse<PaginatedListResponse<BeneficiaryModel>>
        >(client.getSavedBeneficiaries);
    return response;
  }

  FutureApiResultOf<AccountLookupModel> getAccountDetails(
    Map<String, dynamic> payload,
  ) async {
    final response = await Result.fromAsync<ApiResponse<AccountLookupModel>>(
      () => client.getAccountDetails(payload: payload),
    );
    return response;
  }

  FutureApiResultOf<TransactionHistoryModel> getTransactionDetailsById(
    String reference,
  ) async {
    final response =
        await Result.fromAsync<ApiResponse<TransactionHistoryModel>>(
          () => client.getTransactionByRefNo(reference: reference),
        );
    return response;
  }

  FutureResultOf<void> deleteBeneficiaryById(String beneficiaryId) async {
    final response = await Result.fromAsync<void>(
      () => client.deleteBeneficiary(beneficiaryId: beneficiaryId),
    );
    return response;
  }
}
