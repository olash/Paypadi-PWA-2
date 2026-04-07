import 'package:paypadi/core/api/result.dart';
import 'package:paypadi/core/utils/typedefs.dart';
import 'package:paypadi/core/datasource/payout_account_ds/payout_account_client.dart';
import 'package:paypadi/core/models/bank_model/bank_model.dart';

class PayoutAccountRepository {
  const PayoutAccountRepository({required this.client});
  final PayoutAccountClient client;

  FutureResultApiListOf<BankModel> getListOfBanks() async {
    final response = await Result.fromAsync<List<BankModel>>(
      () async {
        final banks = await client.getListOfAllBanks();
        return banks.data;
      },
    );
    return response;
  }
}
