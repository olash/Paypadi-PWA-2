import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/core/api/exceptions/app_exception.dart';
import 'package:paypadi/core/models/bank_account_model/bank_account_model.dart';
import 'package:paypadi/core/repositories/wallet_repo.dart';

part 'payout_account_controller.g.dart';

@riverpod
class PayoutAccountController extends _$PayoutAccountController {
  late final WalletRepository _repository;

  @override
  FutureOr<BankAccountModel?> build() {
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
        final AppException exception = AppException.handleException(failure);
        final String message = AppException.getExceptionMessage(exception);
        state = AsyncError(message, StackTrace.current);
      },
    );
  }
}
