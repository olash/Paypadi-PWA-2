import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/models/account_lookup_model/account_lookup_model.dart';
import 'package:paypadi/core/models/beneficiary_model/beneficiary_model.dart';
import 'package:paypadi/core/models/payment_model/payment_model.dart';
import 'package:paypadi/core/models/transaction_model/transaction_model.dart';
import 'package:paypadi/core/utils/typedefs.dart';

abstract interface class ITransactionRepository {
  FutureResultOf<ApiResponse<PaymentModel>> initiatePayment(
    Map<String, dynamic> payload,
  );

  FutureResultOf<ApiResponse<TransactionModel>> transfer(
    Map<String, dynamic> payload,
  );

  FuturePaginatedApiOf<BeneficiaryModel> getRecentBeneficiaries();

  FuturePaginatedApiOf<BeneficiaryModel> getSavedBeneficiaries();

  FutureApiResultOf<AccountLookupModel> getAccountDetails(
    Map<String, dynamic> payload,
  );

  FutureApiResultOf<TransactionModel> getTransactionDetailsById(
    String reference,
  );

  FutureResultOf<void> deleteBeneficiaryById(
    String beneficiaryId,
  );
}
