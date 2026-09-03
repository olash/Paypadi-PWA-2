// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiaries_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RecentBeneficiaries)
final recentBeneficiariesProvider = RecentBeneficiariesProvider._();

final class RecentBeneficiariesProvider
    extends
        $AsyncNotifierProvider<RecentBeneficiaries, List<BeneficiaryModel>> {
  RecentBeneficiariesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'recentBeneficiariesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$recentBeneficiariesHash();

  @$internal
  @override
  RecentBeneficiaries create() => RecentBeneficiaries();
}

String _$recentBeneficiariesHash() =>
    r'6d9da4e98065d5ac8a9a2d8bb23fc1ecff302a6c';

abstract class _$RecentBeneficiaries
    extends $AsyncNotifier<List<BeneficiaryModel>> {
  FutureOr<List<BeneficiaryModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<BeneficiaryModel>>, List<BeneficiaryModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<BeneficiaryModel>>,
                List<BeneficiaryModel>
              >,
              AsyncValue<List<BeneficiaryModel>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(SavedBeneficiaries)
final savedBeneficiariesProvider = SavedBeneficiariesProvider._();

final class SavedBeneficiariesProvider
    extends $AsyncNotifierProvider<SavedBeneficiaries, List<BeneficiaryModel>> {
  SavedBeneficiariesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'savedBeneficiariesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$savedBeneficiariesHash();

  @$internal
  @override
  SavedBeneficiaries create() => SavedBeneficiaries();
}

String _$savedBeneficiariesHash() =>
    r'e9e9aadcd6cacde99a9989868f40d1e9e6918a6e';

abstract class _$SavedBeneficiaries
    extends $AsyncNotifier<List<BeneficiaryModel>> {
  FutureOr<List<BeneficiaryModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<BeneficiaryModel>>, List<BeneficiaryModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<BeneficiaryModel>>,
                List<BeneficiaryModel>
              >,
              AsyncValue<List<BeneficiaryModel>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(BeneficiaryTypeController)
final beneficiaryTypeControllerProvider = BeneficiaryTypeControllerProvider._();

final class BeneficiaryTypeControllerProvider
    extends $NotifierProvider<BeneficiaryTypeController, BeneficiaryType> {
  BeneficiaryTypeControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'beneficiaryTypeControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$beneficiaryTypeControllerHash();

  @$internal
  @override
  BeneficiaryTypeController create() => BeneficiaryTypeController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BeneficiaryType value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BeneficiaryType>(value),
    );
  }
}

String _$beneficiaryTypeControllerHash() =>
    r'dfa160536ffec6211547a6041b536898337c7d2c';

abstract class _$BeneficiaryTypeController extends $Notifier<BeneficiaryType> {
  BeneficiaryType build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<BeneficiaryType, BeneficiaryType>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<BeneficiaryType, BeneficiaryType>,
              BeneficiaryType,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
