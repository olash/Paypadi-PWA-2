// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_loading_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AppLoadingController)
final appLoadingControllerProvider = AppLoadingControllerProvider._();

final class AppLoadingControllerProvider
    extends $NotifierProvider<AppLoadingController, bool> {
  AppLoadingControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appLoadingControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appLoadingControllerHash();

  @$internal
  @override
  AppLoadingController create() => AppLoadingController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$appLoadingControllerHash() =>
    r'89d318ee0f218c2eeed72c2008260b7ab5d2277d';

abstract class _$AppLoadingController extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
