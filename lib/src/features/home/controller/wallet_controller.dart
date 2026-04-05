import 'package:paypadi/config/router/router.gr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/core/api/exceptions/app_exception.dart';
import 'package:paypadi/core/models/wallet_model/wallet_model.dart';
import 'package:paypadi/core/repositories/wallet_repo.dart';

part 'wallet_controller.g.dart';

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
