import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/api/result.dart';
import 'package:paypadi/core/clients/wallet/wallet_client.dart';
import 'package:paypadi/core/models/bank_model/bank_model.dart';
import 'package:paypadi/core/models/beneficiary_model/beneficiary_model.dart';
import 'package:paypadi/core/models/transaction_model/transaction_model.dart';
import 'package:paypadi/core/models/user_bank_account_model/user_bank_account_model.dart';
import 'package:paypadi/core/models/wallet_model/wallet_model.dart';
import 'package:paypadi/core/utils/typedefs.dart';

class WalletRepository {
  const WalletRepository(this.client);
  final WalletClient client;

  FutureApiResultOf<WalletModel> fetchWalletBalance() async {
    final response = await Result.fromAsync<ApiResponse<WalletModel>>(
      client.getBalance,
    );
    return response;
  }

  FutureApiResultOf<UserBankAccountModel> getDepositAccount() async {
    final response = await Result.fromAsync<ApiResponse<UserBankAccountModel>>(
      client.getDepositAccount,
    );
    return response;
  }

  FuturePaginatedApiOf<TransactionHistoryModel> getTransactionHistory({
    int page = 1,
    int pageSize = 10,
  }) async {
    final response =
        await Result.fromAsync<
          ApiResponse<PaginatedListResponse<TransactionHistoryModel>>
        >(() => client.getTransactionHistory(page: page, pageSize: pageSize));
    return response;
  }

  FutureResultOf<VerifiedBankAccountModel> verifyBankInformation(
    Map<String, dynamic> payload,
  ) async {
    final response = await Result.fromAsync<VerifiedBankAccountModel>(
      () async {
        final result = await client.verifyBankInformation(payload: payload);
        return result.data;
      },
    );
    return response;
  }

  FutureApiResultOf<BeneficiaryModel> saveBeneficiary(
    Map<String, dynamic> payload,
  ) async {
    final response = await Result.fromAsync<ApiResponse<BeneficiaryModel>>(
      () => client.saveBeneficiary(payload: payload),
    );
    return response;
  }
}
