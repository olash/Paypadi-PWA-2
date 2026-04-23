import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/models/payment_model/payment_model.dart';
import 'package:paypadi/core/models/transaction_model/transaction_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/core/models/account_lookup_model/account_lookup_model.dart';
import 'package:paypadi/core/repositories/transaction_repo.dart';
import 'package:paypadi/core/utils/extensions.dart';

part 'transaction_controller.g.dart';

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

@riverpod
class InitiatePaymentController extends _$InitiatePaymentController {
  late final TransactionRepository _repository;

  @override
  FutureOr<PaymentModel?> build() async {
    _repository = ref.watch(transactionRepositoryProvider);
    return null;
  }

  void initiatePayment() async {
    final Map<String, dynamic> body = ref
        .read(transactionControllerProvider.notifier)
        .payloadBuilder;

    final Map<String, dynamic> payload = {
      "amount": body["amount"],
      "transaction_type": "transfer",
      "description": body["description"],
    };

    state = AsyncLoading();
    final result = await _repository.initiatePayment(payload);

    // Check if provider is still mounted
    if (!ref.mounted) return;

    result.fold(
      (success) {
        state = AsyncValue.data(success.data);
        ref.read(appRouterProvider).push(ConfirmPaymentRoute());
      },
      (failure) {
        ref.showExceptionToast(failure);
        state = const AsyncData(null);
      },
    );
  }
}

@Riverpod(keepAlive: true)
class TransactionController extends _$TransactionController {
  late Map<String, dynamic> payloadBuilder;
  late final TransactionRepository _repository;

  @override
  FutureOr<TransactionModel?> build() async {
    payloadBuilder = {};
    _repository = ref.watch(transactionRepositoryProvider);
    return null;
  }

  void transfer() async {
    state = AsyncLoading();
    final result = await _repository.transfer(payloadBuilder);

    result.fold(
      (success) {
        state = AsyncValue.data(success.data);
        ref
            .read(appRouterProvider)
            .push(ReceiptRoute(referenceId: success.data.reference));
      },
      (failure) {
        ref.showExceptionToast(failure);
        state = const AsyncData(null);
      },
    );
  }
}
