import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/core/api/result.dart';
import 'package:paypadi/core/utils/typedefs.dart';
import 'package:paypadi/src/features/transfer/data/datasource/transfer_client.dart';

part 'transfer_repo.g.dart';

class TransferRepo {
  const TransferRepo(this.client);
  final TransferClient client;

  FutureResultOf transfer() async {
    final response = await Result.fromAsync<dynamic>(
      () => client.transfer(payload: ""),
    );
    return response;
  }
}

@riverpod
TransferRepo transferRepo(Ref ref) {
  final apiClient = ref.watch(transferClientProvider);
  return TransferRepo(apiClient);
}
