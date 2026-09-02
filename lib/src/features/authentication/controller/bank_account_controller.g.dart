// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_account_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BankListController)
final bankListControllerProvider = BankListControllerProvider._();

final class BankListControllerProvider
    extends $AsyncNotifierProvider<BankListController, List<BankModel>> {
  BankListControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bankListControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bankListControllerHash();

  @$internal
  @override
  BankListController create() => BankListController();
}

String _$bankListControllerHash() =>
    r'b46636a6da3da5e0248666b18b746559a7f90297';

abstract class _$BankListController extends $AsyncNotifier<List<BankModel>> {
  FutureOr<List<BankModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<BankModel>>, List<BankModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<BankModel>>, List<BankModel>>,
              AsyncValue<List<BankModel>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(VerifiedBankAccount)
final verifiedBankAccountProvider = VerifiedBankAccountProvider._();

final class VerifiedBankAccountProvider
    extends
        $AsyncNotifierProvider<VerifiedBankAccount, VerifiedBankAccountModel?> {
  VerifiedBankAccountProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'verifiedBankAccountProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$verifiedBankAccountHash();

  @$internal
  @override
  VerifiedBankAccount create() => VerifiedBankAccount();
}

String _$verifiedBankAccountHash() =>
    r'c7ecd6fd26c6275d76eacb47341cb1fab5b3143e';

abstract class _$VerifiedBankAccount
    extends $AsyncNotifier<VerifiedBankAccountModel?> {
  FutureOr<VerifiedBankAccountModel?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<VerifiedBankAccountModel?>,
              VerifiedBankAccountModel?
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<VerifiedBankAccountModel?>,
                VerifiedBankAccountModel?
              >,
              AsyncValue<VerifiedBankAccountModel?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(PayoutAccount)
final payoutAccountProvider = PayoutAccountProvider._();

final class PayoutAccountProvider
    extends $AsyncNotifierProvider<PayoutAccount, AccountPayoutModel?> {
  PayoutAccountProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'payoutAccountProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$payoutAccountHash();

  @$internal
  @override
  PayoutAccount create() => PayoutAccount();
}

String _$payoutAccountHash() => r'b7c34725a4cecf78bc7e496faa1bd39c80574251';

abstract class _$PayoutAccount extends $AsyncNotifier<AccountPayoutModel?> {
  FutureOr<AccountPayoutModel?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<AccountPayoutModel?>, AccountPayoutModel?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<AccountPayoutModel?>, AccountPayoutModel?>,
              AsyncValue<AccountPayoutModel?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
