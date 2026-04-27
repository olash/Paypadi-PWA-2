import 'package:paypadi/core/models/bank_model/bank_model.dart';
import 'package:paypadi/core/repositories/payout_account_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/core/models/user_bank_account_model/user_bank_account_model.dart';
import 'package:paypadi/core/repositories/wallet_repo.dart';
import 'package:paypadi/core/utils/extensions.dart';

part 'payout_account_controller.g.dart';

@riverpod
class PayoutAccountController extends _$PayoutAccountController {
  late final WalletRepository _repository;

  @override
  FutureOr<UserBankAccountModel?> build() {
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
