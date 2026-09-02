// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_toast_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AppToastController)
final appToastControllerProvider = AppToastControllerProvider._();

final class AppToastControllerProvider
    extends $NotifierProvider<AppToastController, void> {
  AppToastControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appToastControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appToastControllerHash();

  @$internal
  @override
  AppToastController create() => AppToastController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$appToastControllerHash() =>
    r'65e845b5452bcc07387ad144143c80a9a92499c9';

abstract class _$AppToastController extends $Notifier<void> {
  void build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<void, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<void, void>,
              void,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
