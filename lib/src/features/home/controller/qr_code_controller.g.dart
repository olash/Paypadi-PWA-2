// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_code_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(QrCodeController)
final qrCodeControllerProvider = QrCodeControllerProvider._();

final class QrCodeControllerProvider
    extends $AsyncNotifierProvider<QrCodeController, String?> {
  QrCodeControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'qrCodeControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$qrCodeControllerHash();

  @$internal
  @override
  QrCodeController create() => QrCodeController();
}

String _$qrCodeControllerHash() => r'17048770ced1783b3cdc22c04bbf401b154afa44';

abstract class _$QrCodeController extends $AsyncNotifier<String?> {
  FutureOr<String?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<String?>, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<String?>, String?>,
              AsyncValue<String?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
