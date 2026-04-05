import 'package:paypadi/core/api/result.dart';
import 'package:paypadi/core/utils/typedefs.dart';
import 'package:paypadi/core/datasource/transaction_ds/transaction_client.dart';

class TransactionRepository {
  const TransactionRepository(this.client);
  final TransactionClient client;

  FutureResultOf transfer(Map<String, dynamic> payload) async {
    final response = await Result.fromAsync<dynamic>(
      () => client.transfer(payload: payload),
    );
    return response;
  }
}
