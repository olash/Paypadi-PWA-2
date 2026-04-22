import 'package:paypadi/config/router/router.gr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/core/models/account_lookup_model/account_lookup_model.dart';
import 'package:paypadi/core/repositories/transaction_repo.dart';
import 'package:paypadi/core/utils/extensions.dart';

part 'transaction_controller.g.dart';

@Riverpod(keepAlive: true)
class TransactionController extends _$TransactionController {
  late Map<String, dynamic> payloadBuilder;
  late final TransactionRepository _repository;

  @override
  FutureOr<void> build() async {
    payloadBuilder = {};
    _repository = ref.watch(transactionRepositoryProvider);
  }

  void initiatePayment() async {
    final Map<String, dynamic> payload = {
      "amount": payloadBuilder["amount"],
      "transaction_type": "transfer",
      "description": payloadBuilder["description"],
    };

    state = AsyncLoading();
    final result = await _repository.initiatePayment(payload);

    result.fold(
      (success) => state = AsyncValue.data(null),
      (failure) {
        ref.showExceptionToast(failure);
        state = const AsyncData(null);
      },
    );
  }

  void transfer() async {
    state = AsyncLoading();
    final result = await _repository.transfer(payloadBuilder);

    result.fold(
      (success) => state = AsyncValue.data(null),
      (failure) {
        ref.showExceptionToast(failure);
        state = const AsyncData(null);
      },
    );
  }
}

@riverpod
class AccountLookupController extends _$AccountLookupController {
  late final TransactionRepository _repository;

  @override
  FutureOr<AccountLookupModel?> build(String receipientNumber) async {
    _repository = ref.watch(transactionRepositoryProvider);

    final Map<String, dynamic> payload = {"phone_number": receipientNumber};

    state = AsyncLoading();
    final result = await _repository.getAccountDetails(payload);

    if (!ref.mounted) return null;

    result.fold(
      (success) {
        state = AsyncValue.data(success);
      },
      (failure) {
        ref.showExceptionToast(failure);
        state = const AsyncData(null);
      },
    );

    return state.value;
  }
}
