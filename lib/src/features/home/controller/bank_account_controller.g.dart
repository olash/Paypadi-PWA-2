// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_account_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BankAccountController)
final bankAccountControllerProvider = BankAccountControllerProvider._();

final class BankAccountControllerProvider
    extends
        $AsyncNotifierProvider<BankAccountController, UserBankAccountModel?> {
  BankAccountControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bankAccountControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bankAccountControllerHash();

  @$internal
  @override
  BankAccountController create() => BankAccountController();
}

String _$bankAccountControllerHash() =>
    r'4955d22c8243d8ef27593642bb31c764d77949de';

abstract class _$BankAccountController
    extends $AsyncNotifier<UserBankAccountModel?> {
  FutureOr<UserBankAccountModel?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<UserBankAccountModel?>, UserBankAccountModel?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<UserBankAccountModel?>,
                UserBankAccountModel?
              >,
              AsyncValue<UserBankAccountModel?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
