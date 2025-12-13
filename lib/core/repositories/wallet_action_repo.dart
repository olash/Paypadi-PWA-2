import 'package:paypadi/core/api/result.dart';
import 'package:paypadi/core/utils/typedefs.dart';
import 'package:paypadi/core/datasource/wallet_action_ds/wallet_action_client.dart';

class WalletActionRepository {
  const WalletActionRepository(this.client);
  final WalletActionClient client;

  FutureResultOf transfer() async {
    final response = await Result.fromAsync<dynamic>(
      () => client.transfer(payload: ""),
    );
    return response;
  }
}
