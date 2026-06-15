import 'package:paypadi/core/models/account_payout_model/account_payout_model.dart';
import 'package:paypadi/core/models/bank_model/bank_model.dart';
import 'package:paypadi/core/utils/typedefs.dart';

abstract interface class IPayoutAccountRepository {
  FutureResultListOf<BankModel> getListOfBanks();

  FutureApiResultOf<AccountPayoutModel> createAccount(
    Map<String, dynamic> payload,
  );
}
