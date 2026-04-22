import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/api/result.dart';
import 'package:paypadi/core/models/account_lookup_model/account_lookup_model.dart';
import 'package:paypadi/core/models/beneficiary_model/beneficiary_model.dart';
import 'package:paypadi/core/models/transaction_model/transaction_model.dart';
import 'package:paypadi/core/utils/typedefs.dart';
import 'package:paypadi/core/datasource/transaction_ds/transaction_client.dart';

class TransactionRepository {
  const TransactionRepository(this.client);
  final TransactionClient client;

  FutureResultOf<TransactionModel> initiatePayment(
    Map<String, dynamic> payload,
  ) async {
    final response = await Result.fromAsync<TransactionModel>(
      () => client.initiatePayment(payload: payload),
    );
    return response;
  }

  FutureResultOf<TransactionModel> transfer(
    Map<String, dynamic> payload,
  ) async {
    final response = await Result.fromAsync<TransactionModel>(
      () => client.transfer(payload: payload),
    );
    return response;
  }

  FutureResultPaginatedListOf<BeneficiaryModel> getRecentBeneficiaries() async {
    final response =
        await Result.fromAsync<PaginatedListResponse<BeneficiaryModel>>(
          () => client.getRecentBeneficiaries(),
        );
    return response;
  }

  FutureResultPaginatedListOf<BeneficiaryModel> getSavedBeneficiaries() async {
    final response =
        await Result.fromAsync<PaginatedListResponse<BeneficiaryModel>>(
          () => client.getSavedBeneficiaries(),
        );
    return response;
  }

  FutureResultOf<AccountLookupModel> getAccountDetails(
    Map<String, dynamic> payload,
  ) async {
    final response = await Result.fromAsync<AccountLookupModel>(
      () => client.getAccountDetails(payload: payload),
    );
    return response;
  }

  FutureResultOf<TransactionHistoryModel> getTransactionDetailsById(
    String reference,
  ) async {
    final response = await Result.fromAsync<TransactionHistoryModel>(
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
