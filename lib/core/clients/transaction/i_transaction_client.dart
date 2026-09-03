import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/models/account_lookup_model/account_lookup_model.dart';
import 'package:paypadi/core/models/beneficiary_model/beneficiary_model.dart';
import 'package:paypadi/core/models/payment_model/payment_model.dart';
import 'package:paypadi/core/models/transaction_model/transaction_model.dart';

abstract interface class ITransactionClient {
  Future<ApiResponse<PaymentModel>> initiatePayment({
    required Map<String, dynamic> payload,
  });

  Future<ApiResponse<TransactionModel>> transfer({
    required Map<String, dynamic> payload,
  });

  Future<ApiResponse<TransactionModel>> withdraw({
    required Map<String, dynamic> payload,
  });

  Future<ApiResponse<TransactionModel>> deposit({
    required Map<String, dynamic> payload,
  });

  Future<ApiResponse<AccountLookupModel>> getAccountDetails({
    required Map<String, dynamic> payload,
  });

  Future<ApiResponse<PaginatedListResponse<BeneficiaryModel>>>
  getSavedBeneficiaries();

  Future<ApiResponse<PaginatedListResponse<BeneficiaryModel>>> getRecentBeneficiaries();

  Future<ApiResponse<TransactionModel>> getTransactionByRefNo({
    required String reference,
  });

  Future<void> deleteBeneficiary({
    required String beneficiaryId,
  });
}
