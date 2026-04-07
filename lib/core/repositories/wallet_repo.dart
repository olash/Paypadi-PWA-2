import 'package:paypadi/core/api/result.dart';
import 'package:paypadi/core/datasource/wallet_ds/wallet_client.dart';
import 'package:paypadi/core/models/bank_account_model/bank_account_model.dart';
import 'package:paypadi/core/models/beneficiary_model/beneficiary_model.dart';
import 'package:paypadi/core/models/wallet_model/wallet_model.dart';
import 'package:paypadi/core/utils/typedefs.dart';

class WalletRepository {
  const WalletRepository(this.client);
  final WalletClient client;

  FutureResultOf<WalletModel> fetchWalletBalance() async {
    final response = await Result.fromAsync<WalletModel>(
      () => client.getBalance(),
    );
    return response;
  }

  FutureResultOf<BankAccountModel> getDepositAccount() async {
    final response = await Result.fromAsync<BankAccountModel>(
      () => client.getDepositAccount(),
    );
    return response;
  }

  FutureResultOf<BankAccountModel> getTransactionHistory() async {
    final response = await Result.fromAsync<BankAccountModel>(
      () => client.getDepositAccount(),
    );
    return response;
  }

  FutureResultOf<BankAccountModel> verifyBankInformation(
    Map<String, dynamic> payload,
  ) async {
    final response = await Result.fromAsync<BankAccountModel>(
      () async {
        final result = await client.verifyBankInformation(payload: payload);
        return result.data;
      },
    );
    return response;
  }

  FutureResultOf<BeneficiaryModel> saveBeneficiary(
    Map<String, dynamic> payload,
  ) async {
    final response = await Result.fromAsync<BeneficiaryModel>(
      () => client.saveBeneficiary(payload: payload),
    );
    return response;
  }
}
