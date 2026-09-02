// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(transactionPayload)
final transactionPayloadProvider = TransactionPayloadProvider._();

final class TransactionPayloadProvider
    extends
        $FunctionalProvider<
          Map<String, dynamic>,
          Map<String, dynamic>,
          Map<String, dynamic>
        >
    with $Provider<Map<String, dynamic>> {
  TransactionPayloadProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'transactionPayloadProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$transactionPayloadHash();

  @$internal
  @override
  $ProviderElement<Map<String, dynamic>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  Map<String, dynamic> create(Ref ref) {
    return transactionPayload(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Map<String, dynamic> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<String, dynamic>>(value),
    );
  }
}

String _$transactionPayloadHash() =>
    r'97b3410c518a0527db3716ab45a63cefefae853b';

@ProviderFor(AccountLookup)
final accountLookupProvider = AccountLookupFamily._();

final class AccountLookupProvider
    extends $AsyncNotifierProvider<AccountLookup, AccountLookupModel?> {
  AccountLookupProvider._({
    required AccountLookupFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'accountLookupProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$accountLookupHash();

  @override
  String toString() {
    return r'accountLookupProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  AccountLookup create() => AccountLookup();

  @override
  bool operator ==(Object other) {
    return other is AccountLookupProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$accountLookupHash() => r'22031a443c82b2f20fd78a5f9d747ff6cf81d3b1';

final class AccountLookupFamily extends $Family
    with
        $ClassFamilyOverride<
          AccountLookup,
          AsyncValue<AccountLookupModel?>,
          AccountLookupModel?,
          FutureOr<AccountLookupModel?>,
          String
        > {
  AccountLookupFamily._()
    : super(
        retry: null,
        name: r'accountLookupProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AccountLookupProvider call(String recipientNumber) =>
      AccountLookupProvider._(argument: recipientNumber, from: this);

  @override
  String toString() => r'accountLookupProvider';
}

abstract class _$AccountLookup extends $AsyncNotifier<AccountLookupModel?> {
  late final _$args = ref.$arg as String;
  String get recipientNumber => _$args;

  FutureOr<AccountLookupModel?> build(String recipientNumber);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<AccountLookupModel?>, AccountLookupModel?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<AccountLookupModel?>, AccountLookupModel?>,
              AsyncValue<AccountLookupModel?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}

@ProviderFor(InitiatePaymentController)
final initiatePaymentControllerProvider = InitiatePaymentControllerProvider._();

final class InitiatePaymentControllerProvider
    extends $AsyncNotifierProvider<InitiatePaymentController, PaymentModel?> {
  InitiatePaymentControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'initiatePaymentControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$initiatePaymentControllerHash();

  @$internal
  @override
  InitiatePaymentController create() => InitiatePaymentController();
}

String _$initiatePaymentControllerHash() =>
    r'305016164f224b57f018106de2cdf25f6844fe43';

abstract class _$InitiatePaymentController
    extends $AsyncNotifier<PaymentModel?> {
  FutureOr<PaymentModel?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<PaymentModel?>, PaymentModel?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<PaymentModel?>, PaymentModel?>,
              AsyncValue<PaymentModel?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(TransactionController)
final transactionControllerProvider = TransactionControllerProvider._();

final class TransactionControllerProvider
    extends $AsyncNotifierProvider<TransactionController, TransactionModel?> {
  TransactionControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'transactionControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$transactionControllerHash();

  @$internal
  @override
  TransactionController create() => TransactionController();
}

String _$transactionControllerHash() =>
    r'd30e4e359ba072483f124c894d92c523c831850f';

abstract class _$TransactionController
    extends $AsyncNotifier<TransactionModel?> {
  FutureOr<TransactionModel?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<TransactionModel?>, TransactionModel?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<TransactionModel?>, TransactionModel?>,
              AsyncValue<TransactionModel?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
