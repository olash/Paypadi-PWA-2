// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_picture_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProfilePicture)
final profilePictureProvider = ProfilePictureProvider._();

final class ProfilePictureProvider
    extends $AsyncNotifierProvider<ProfilePicture, XFile?> {
  ProfilePictureProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profilePictureProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profilePictureHash();

  @$internal
  @override
  ProfilePicture create() => ProfilePicture();
}

String _$profilePictureHash() => r'496cc211664350181fc33bbab90e068214ebd690';

abstract class _$ProfilePicture extends $AsyncNotifier<XFile?> {
  FutureOr<XFile?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<XFile?>, XFile?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<XFile?>, XFile?>,
              AsyncValue<XFile?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
