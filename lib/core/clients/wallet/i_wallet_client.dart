import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/models/bank_model/bank_model.dart';
import 'package:paypadi/core/models/beneficiary_model/beneficiary_model.dart';
import 'package:paypadi/core/models/transaction_model/transaction_model.dart';
import 'package:paypadi/core/models/user_bank_account_model/user_bank_account_model.dart';
import 'package:paypadi/core/models/wallet_model/wallet_model.dart';

abstract interface class IWalletClient {
  Future<ApiResponse<WalletModel>> getBalance();

  Future<ApiResponse<PaginatedListResponse<TransactionModel>>>
  getTransactionHistory({
    required int page,
    required int pageSize,
  });

  Future<ApiResponse<UserBankAccountModel>> getDepositAccount();

  Future<ApiResponse<BeneficiaryModel>> saveBeneficiary({
    required Map<String, dynamic> payload,
  });

  Future<ApiResponse<VerifiedBankAccountModel>> verifyBankInformation({
    required Map<String, dynamic> payload,
  });
}
