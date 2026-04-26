import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/core/api/exceptions/app_exception.dart';
import 'package:paypadi/core/models/user_bank_account_model/user_bank_account_model.dart';
import 'package:paypadi/core/repositories/wallet_repo.dart';

part 'bank_account_controller.g.dart';

@riverpod
class BankAccountController extends _$BankAccountController {
  late final WalletRepository _repository;

  @override
  FutureOr<UserBankAccountModel?> build() async {
    _repository = ref.watch(walletRepositoryProvider);
    state = const AsyncLoading();

    final result = await _repository.getDepositAccount();

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
}
