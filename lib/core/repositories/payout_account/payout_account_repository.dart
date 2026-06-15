import 'package:paypadi/core/api/response/api_response.dart';
import 'package:paypadi/core/api/result.dart';
import 'package:paypadi/core/clients/payout_account/i_payout_account_client.dart';
import 'package:paypadi/core/models/account_payout_model/account_payout_model.dart';
import 'package:paypadi/core/models/bank_model/bank_model.dart';
import 'package:paypadi/core/repositories/payout_account/i_payout_account_repository.dart';
import 'package:paypadi/core/utils/typedefs.dart';

class PayoutAccountRepository implements IPayoutAccountRepository {
  const PayoutAccountRepository({required IPayoutAccountClient client})
    : _client = client;
  final IPayoutAccountClient _client;

  @override
  FutureResultListOf<BankModel> getListOfBanks() async {
    final response = await Result.fromAsync<List<BankModel>>(
      () async {
        final banks = await _client.getListOfAllBanks();
        return banks.data;
      },
    );
    return response;
  }

  @override
  FutureApiResultOf<AccountPayoutModel> createAccount(
    Map<String, dynamic> payload,
  ) async {
    final response = await Result.fromAsync<ApiResponse<AccountPayoutModel>>(
      () async => _client.createPayoutAccount(payload: payload),
    );
    return response;
  }
}
