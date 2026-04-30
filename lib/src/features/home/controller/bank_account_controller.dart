import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/core/models/user_bank_account_model/user_bank_account_model.dart';
import 'package:paypadi/core/repositories/wallet_repo.dart';

part 'bank_account_controller.g.dart';

@riverpod
class BankAccountController extends _$BankAccountController {
  late final WalletRepository _repository;

  @override
  FutureOr<UserBankAccountModel?> build() async {
    _repository = ref.watch(walletRepositoryProvider);
    final result = await _repository.getDepositAccount();

    return result.fold(
      (success) => success.data,
      (failure) => throw failure,
    );
  }
}
