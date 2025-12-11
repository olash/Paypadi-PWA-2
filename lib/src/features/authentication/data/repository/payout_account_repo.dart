import 'package:paypadi/core/api/result.dart';
import 'package:paypadi/core/utils/typedefs.dart';
import 'package:paypadi/src/features/authentication/data/datasource/payout_account/payout_account_client.dart';
import 'package:paypadi/src/features/authentication/domain/models/bank_model.dart';

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
}
