import 'dart:async';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/models/account_lookup_model/account_lookup_model.dart';
import 'package:paypadi/core/models/payment_model/payment_model.dart';
import 'package:paypadi/core/models/transaction_model/transaction_model.dart';
import 'package:paypadi/core/repositories/transaction/i_transaction_repository.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'transaction_controller.g.dart';

@Riverpod(keepAlive: true)
Map<String, dynamic> transactionPayload(Ref ref) => <String, dynamic>{};

@riverpod
class AccountLookup extends _$AccountLookup {
  @override
  FutureOr<AccountLookupModel?> build(String recipientNumber) async {
    final repository = ref.watch(transactionRepositoryProvider);
    final result = await repository.getAccountDetails({
      'phone_number': recipientNumber,
    });

    return result.fold(
      (success) => success.data,
      (failure) {
        ref.showExceptionMessage(failure);
        return null;
      },
    );
  }
}

@riverpod
class InitiatePaymentController extends _$InitiatePaymentController {
  late final ITransactionRepository _repository;

  @override
  FutureOr<PaymentModel?> build() async {
    _repository = ref.watch(transactionRepositoryProvider);
    return null;
  }

  Future<void> initiatePayment() async {
    final payloadBuilder = ref.read(transactionPayloadProvider);
    final Map<String, dynamic> payload = <String, dynamic>{
      'amount': payloadBuilder['amount'],
      'transaction_type': 'transfer',
      'description': payloadBuilder['description'],
    };

    state = const AsyncLoading();

    final result = await _repository.initiatePayment(payload);

    // Check if provider is still mounted
    if (!ref.mounted) return;

    result.fold(
      (success) {
        state = AsyncValue.data(success.data);
        unawaited(ref.read(appRouterProvider).push(const ConfirmPaymentRoute()));
      },
      (failure) {
        ref.showExceptionMessage(failure);
        state = const AsyncData(null);
      },
    );
  }
}

@riverpod
class TransactionController extends _$TransactionController {
  late final ITransactionRepository _repository;

  @override
  FutureOr<TransactionModel?> build() async {
    _repository = ref.watch(transactionRepositoryProvider);
    return null;
  }

  Future<void> transfer() async {
    state = const AsyncLoading();
    final payload = ref.read(transactionPayloadProvider);
    final result = await _repository.transfer(payload);

    result.fold(
      (success) {
        state = AsyncValue.data(success.data);
        unawaited(ref
            .read(appRouterProvider)
            .push(ReceiptRoute(referenceId: success.data.reference)));
      },
      (failure) {
        ref.showExceptionMessage(failure);
        state = const AsyncData(null);
      },
    );
  }
}
