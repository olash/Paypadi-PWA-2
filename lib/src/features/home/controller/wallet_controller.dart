import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/api/exceptions/app_exception.dart';
import 'package:paypadi/core/models/bank_account_model/bank_account_model.dart';
import 'package:paypadi/core/models/wallet_model/wallet_model.dart';
import 'package:paypadi/core/repositories/wallet_repo.dart';

part 'wallet_controller.g.dart';

@riverpod
class BankAccountController extends _$BankAccountController {
  @override
  BankAccountModel? build() => null;

  void update(BankAccountModel account) => state = account;
}

@riverpod
class WalletController extends _$WalletController {
  late final WalletRepository _repository;

  @override
  FutureOr<WalletModel?> build() async {
    _repository = ref.watch(walletRepositoryProvider);
    state = const AsyncLoading();

    final result = await _repository.fetchWalletBalance();

    return result.fold(
      (success) {
        state = AsyncValue.data(success);
        return success;
      },
      (failure) {
        final AppException exception = AppException.handleException(failure);
        final String message = AppException.getExceptionMessage(exception);
        state = AsyncError(message, StackTrace.current);
        return null;
      },
    );
  }

  void verifyBankAndGetAccountName(Map<String, dynamic> payload) async {
    state = const AsyncLoading();

    final result = await _repository.verifyBankAndGetAccountName(payload);

    // Check if provider is still mounted
    if (!ref.mounted) return;

    result.fold(
      (success) async {
        ref.read(bankAccountControllerProvider.notifier).update(success);

        await Future.delayed(
          Duration(seconds: 2),
          () => ref.read(appRouterProvider).push(PasswordRoute()),
        );

        state = AsyncValue.data(null);
      },
      (failure) {
        final AppException exception = AppException.handleException(failure);
        final String message = AppException.getExceptionMessage(exception);
        state = AsyncError(message, StackTrace.current);
      },
    );
  }

  void getWalletInfo() async {
    state = const AsyncLoading();

    final result = await _repository.fetchWalletBalance();

    // Check if provider is still mounted
    if (!ref.mounted) return;

    result.fold(
      (success) {
        state = AsyncValue.data(success);
        return;
      },
      (failure) {
        final AppException exception = AppException.handleException(failure);
        final String message = AppException.getExceptionMessage(exception);
        state = AsyncError(message, StackTrace.current);
        return;
      },
    );
  }
}
