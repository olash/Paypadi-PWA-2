import 'package:paypadi/core/api/exceptions/app_exception.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/core/repositories/transaction_repo.dart';

part 'transaction_controller.g.dart';

@riverpod
class TransactionController extends _$TransactionController {
  late final TransactionRepository _repository;

  @override
  FutureOr<void> build() async {
    _repository = ref.watch(transactionRepositoryProvider);
  }


  void transfer() async {
    final Map<String, dynamic> payload = {};

    state = AsyncLoading();
    final result = await _repository.transfer(payload);

    result.fold(
      (success) {
        state = AsyncValue.data(null);
      },
      (failure) {
        final AppException exception = AppException.handleException(failure);
        final String message = AppException.getExceptionMessage(exception);
        state = AsyncError(message, StackTrace.current);
      },
    );
  }
}
