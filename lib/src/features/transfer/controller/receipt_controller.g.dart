// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ReceiptController)
final receiptControllerProvider = ReceiptControllerFamily._();

final class ReceiptControllerProvider
    extends
        $AsyncNotifierProvider<ReceiptController, TransactionHistoryModel?> {
  ReceiptControllerProvider._({
    required ReceiptControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'receiptControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$receiptControllerHash();

  @override
  String toString() {
    return r'receiptControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ReceiptController create() => ReceiptController();

  @override
  bool operator ==(Object other) {
    return other is ReceiptControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$receiptControllerHash() => r'32a1bf0eb66c33f37f7005c6048ab5aeee50b27e';

final class ReceiptControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          ReceiptController,
          AsyncValue<TransactionHistoryModel?>,
          TransactionHistoryModel?,
          FutureOr<TransactionHistoryModel?>,
          String
        > {
  ReceiptControllerFamily._()
    : super(
        retry: null,
        name: r'receiptControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ReceiptControllerProvider call(String receiptId) =>
      ReceiptControllerProvider._(argument: receiptId, from: this);

  @override
  String toString() => r'receiptControllerProvider';
}

abstract class _$ReceiptController
    extends $AsyncNotifier<TransactionHistoryModel?> {
  late final _$args = ref.$arg as String;
  String get receiptId => _$args;

  FutureOr<TransactionHistoryModel?> build(String receiptId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<TransactionHistoryModel?>,
              TransactionHistoryModel?
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<TransactionHistoryModel?>,
                TransactionHistoryModel?
              >,
              AsyncValue<TransactionHistoryModel?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
