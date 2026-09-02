// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_upload_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FilePickerController)
final filePickerControllerProvider = FilePickerControllerProvider._();

final class FilePickerControllerProvider
    extends
        $NotifierProvider<
          FilePickerController,
          AsyncValue<Map<DocumentCategory, File?>>
        > {
  FilePickerControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'filePickerControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$filePickerControllerHash();

  @$internal
  @override
  FilePickerController create() => FilePickerController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<Map<DocumentCategory, File?>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<AsyncValue<Map<DocumentCategory, File?>>>(value),
    );
  }
}

String _$filePickerControllerHash() =>
    r'41999aca401516e9e3bee9ff5a7b74e116aeb2f0';

abstract class _$FilePickerController
    extends $Notifier<AsyncValue<Map<DocumentCategory, File?>>> {
  AsyncValue<Map<DocumentCategory, File?>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<Map<DocumentCategory, File?>>,
              AsyncValue<Map<DocumentCategory, File?>>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<Map<DocumentCategory, File?>>,
                AsyncValue<Map<DocumentCategory, File?>>
              >,
              AsyncValue<Map<DocumentCategory, File?>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(FileUploadController)
final fileUploadControllerProvider = FileUploadControllerProvider._();

final class FileUploadControllerProvider
    extends
        $NotifierProvider<
          FileUploadController,
          Map<DocumentCategory, UploadState>
        > {
  FileUploadControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fileUploadControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fileUploadControllerHash();

  @$internal
  @override
  FileUploadController create() => FileUploadController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Map<DocumentCategory, UploadState> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Map<DocumentCategory, UploadState>>(
        value,
      ),
    );
  }
}

String _$fileUploadControllerHash() =>
    r'047a58fb307c4ae60fe6003980b263f0f3ad2eef';

abstract class _$FileUploadController
    extends $Notifier<Map<DocumentCategory, UploadState>> {
  Map<DocumentCategory, UploadState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              Map<DocumentCategory, UploadState>,
              Map<DocumentCategory, UploadState>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                Map<DocumentCategory, UploadState>,
                Map<DocumentCategory, UploadState>
              >,
              Map<DocumentCategory, UploadState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
