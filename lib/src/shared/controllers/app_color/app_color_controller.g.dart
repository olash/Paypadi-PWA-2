// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_color_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ColorIndexNotifier)
final colorIndexProvider = ColorIndexNotifierProvider._();

final class ColorIndexNotifierProvider
    extends $AsyncNotifierProvider<ColorIndexNotifier, int> {
  ColorIndexNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'colorIndexProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$colorIndexNotifierHash();

  @$internal
  @override
  ColorIndexNotifier create() => ColorIndexNotifier();
}

String _$colorIndexNotifierHash() =>
    r'bab407f928a6aa6d8599c17ac2934d1a85231e25';

abstract class _$ColorIndexNotifier extends $AsyncNotifier<int> {
  FutureOr<int> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<int>, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<int>, int>,
              AsyncValue<int>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
