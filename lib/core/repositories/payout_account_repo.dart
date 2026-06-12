import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/api/result.dart';
import 'package:paypadi/core/clients/payout_account/payout_account_client.dart';
import 'package:paypadi/core/models/account_payout_model/account_payout_model.dart';
import 'package:paypadi/core/models/bank_model/bank_model.dart';
import 'package:paypadi/core/utils/typedefs.dart';

class PayoutAccountRepository {
  const PayoutAccountRepository({required this.client});
  final PayoutAccountClient client;

  FutureResultListOf<BankModel> getListOfBanks() async {
    final response = await Result.fromAsync<List<BankModel>>(
      () async {
        final banks = await client.getListOfAllBanks();
        return banks.data;
      },
    );
    return response;
  }

  FutureApiResultOf<AccountPayoutModel> createAccount(
    Map<String, dynamic> payload,
  ) async {
    final response = await Result.fromAsync<ApiResponse<AccountPayoutModel>>(
      () async => client.createPayoutAccount(payload: payload),
    );
    return response;
  }
}
