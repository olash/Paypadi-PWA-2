import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/api/result.dart';
import 'package:paypadi/core/datasource/wallet_ds/wallet_client.dart';
import 'package:paypadi/core/models/user_bank_account_model/user_bank_account_model.dart';
import 'package:paypadi/core/models/beneficiary_model/beneficiary_model.dart';
import 'package:paypadi/core/models/transaction_model/transaction_model.dart';
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

  FutureResultOf<UserBankAccountModel> getDepositAccount() async {
    final response = await Result.fromAsync<UserBankAccountModel>(
      () => client.getDepositAccount(),
    );
    return response;
  }

  FutureResultPaginatedListOf<TransactionHistoryModel> getTransactionHistory({
    int page = 1,
    int pageSize = 10,
  }) async {
    final response =
        await Result.fromAsync<PaginatedListResponse<TransactionHistoryModel>>(
          () => client.getTransactionHistory(page: page, pageSize: pageSize),
        );
    return response;
  }

  FutureResultOf<UserBankAccountModel> verifyBankInformation(
    Map<String, dynamic> payload,
  ) async {
    final response = await Result.fromAsync<UserBankAccountModel>(
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
