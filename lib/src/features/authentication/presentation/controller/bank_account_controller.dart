import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/core/models/bank_model/bank_model.dart';
import 'package:paypadi/core/repositories/wallet_repo.dart';
import 'package:paypadi/core/utils/extensions.dart';

part 'bank_account_controller.g.dart';

@riverpod
class BankListController extends _$BankListController {
  @override
  FutureOr<List<BankModel>> build() async {
    final repository = ref.watch(payoutAccountRepositoryProvider);
    final result = await repository.getListOfBanks();

    return result.fold(
      (success) => success,
      (failure) => throw failure,
    );
  }

  Future<void> refresh() {
    ref.invalidateSelf();
    return future;
  }
}

@riverpod
class VerifiedBankAccount extends _$VerifiedBankAccount {
  late final WalletRepository _repository;

  @override
  FutureOr<VerifiedBankAccountModel?> build() {
    _repository = ref.watch(walletRepositoryProvider);
    return null;
  }

  void verifyBankInformation(Map<String, dynamic> payload) async {
    state = const AsyncLoading();
    final result = await _repository.verifyBankInformation(payload);

    // Check if provider is still mounted
    if (!ref.mounted) return;

    result.fold(
      (success) async => state = AsyncData(success),
      (failure) {
        ref.showExceptionMessage(failure);
        state = const AsyncData(null);
      },
    );
  }
}
