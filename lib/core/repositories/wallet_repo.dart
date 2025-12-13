import 'package:paypadi/core/api/result.dart';
import 'package:paypadi/core/models/wallet_model/wallet_model.dart';
import 'package:paypadi/core/utils/typedefs.dart';
import 'package:paypadi/core/datasource/wallet_ds/wallet_client.dart';

class WalletRepository {
  const WalletRepository(this.client);
  final WalletClient client;

  FutureResultOf<WalletModel> fetchWalletBalance() async {
    final response = await Result.fromAsync<WalletModel>(
      () => client.getBalance(),
    );
    return response;
  }
}
