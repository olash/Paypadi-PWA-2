import 'package:paypadi/core/models/bank_model/bank_model.dart';
import 'package:paypadi/core/models/beneficiary_model/beneficiary_model.dart';
import 'package:paypadi/core/models/transaction_model/transaction_model.dart';
import 'package:paypadi/core/models/user_bank_account_model/user_bank_account_model.dart';
import 'package:paypadi/core/models/wallet_model/wallet_model.dart';
import 'package:paypadi/core/utils/typedefs.dart';

abstract interface class IWalletRepository {
  FutureApiResultOf<WalletModel> fetchWalletBalance();

  FutureApiResultOf<UserBankAccountModel> getDepositAccount();

  FuturePaginatedApiOf<TransactionHistoryModel> getTransactionHistory({
    int page = 1,
    int pageSize = 10,
  });

  FutureResultOf<VerifiedBankAccountModel> verifyBankInformation(
    Map<String, dynamic> payload,
  );

  FutureApiResultOf<BeneficiaryModel> saveBeneficiary(
    Map<String, dynamic> payload,
  );
}
