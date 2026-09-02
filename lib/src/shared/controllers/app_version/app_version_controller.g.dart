// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_version_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AppVersionController)
final appVersionControllerProvider = AppVersionControllerProvider._();

final class AppVersionControllerProvider
    extends $AsyncNotifierProvider<AppVersionController, PackageInfo> {
  AppVersionControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appVersionControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appVersionControllerHash();

  @$internal
  @override
  AppVersionController create() => AppVersionController();
}

String _$appVersionControllerHash() =>
    r'bb034d36c1ff59441f1974714e53d34072a21c26';

abstract class _$AppVersionController extends $AsyncNotifier<PackageInfo> {
  FutureOr<PackageInfo> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<PackageInfo>, PackageInfo>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<PackageInfo>, PackageInfo>,
              AsyncValue<PackageInfo>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
