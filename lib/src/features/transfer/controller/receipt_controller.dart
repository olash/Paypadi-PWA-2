import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/core/models/transaction_model/transaction_model.dart';
import 'package:paypadi/core/repositories/transaction_repo.dart';

part 'receipt_controller.g.dart';

@riverpod
class ReceiptController extends _$ReceiptController {
  late final TransactionRepository _repository;

  @override
  FutureOr<TransactionHistoryModel?> build(String receiptId) async {
    _repository = ref.watch(transactionRepositoryProvider);
    final result = await _repository.getTransactionDetailsById(receiptId);

    if (!ref.mounted) return null;

    return result.fold(
      (success) => success.data,
      (failure) => throw failure,
    );
  }
}
