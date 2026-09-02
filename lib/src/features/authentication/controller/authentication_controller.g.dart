// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(authenticationPayload)
final authenticationPayloadProvider = AuthenticationPayloadProvider._();

final class AuthenticationPayloadProvider
    extends
        $FunctionalProvider<
          Map<String, dynamic>,
          Map<String, dynamic>,
          Map<String, dynamic>
        >
    with $Provider<Map<String, dynamic>> {
  AuthenticationPayloadProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authenticationPayloadProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authenticationPayloadHash();

  @$internal
  @override
  $ProviderElement<Map<String, dynamic>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  Map<String, dynamic> create(Ref ref) {
    return authenticationPayload(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Map<String, dynamic> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<String, dynamic>>(value),
    );
  }
}

String _$authenticationPayloadHash() =>
    r'4a23f0f6fce5e50223ff1219499debdc61b9f36b';

@ProviderFor(AuthenticationController)
final authenticationControllerProvider = AuthenticationControllerProvider._();

final class AuthenticationControllerProvider
    extends $AsyncNotifierProvider<AuthenticationController, void> {
  AuthenticationControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authenticationControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authenticationControllerHash();

  @$internal
  @override
  AuthenticationController create() => AuthenticationController();
}

String _$authenticationControllerHash() =>
    r'f5f8088960aff88db0c2365f434ba44022d09dce';

abstract class _$AuthenticationController extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
