import 'dart:io';

import 'package:paypadi/core/api/exceptions/client_exception.dart';
import 'package:paypadi/core/utils/enums.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/config/provider_registry/provider_registry.dart';

part 'upload_state.dart';
part 'file_upload_controller.g.dart';

@riverpod
class FilePickerController extends _$FilePickerController {
  @override
  AsyncValue<Map<DocumentCategory, File?>> build() => AsyncData(_default);

  Future<void> pickFile(DocumentCategory documentCategory) async {
    try {
      final result = await ref
          .read(filePickerServiceProvider)
          .pickFileFromSystem();

      if (!ref.mounted) return;

      final path = result.files.first.xFile.path;

      final updated = Map<DocumentCategory, File?>.from(
        state.value ?? _default,
      );
      updated[documentCategory] = File(path);

      state = AsyncData(updated);
    } on ClientException catch (e) {
      if (!ref.mounted) return;

      ref.showExceptionMessage(e);

      // Only clear the failed category
      final current = Map<DocumentCategory, File?>.from(
        state.value ?? _default,
      );
      current[documentCategory] = null;

      state = AsyncData(current);
    }
  }

  void clearFile(DocumentCategory documentCategory) {
    final current = Map<DocumentCategory, File?>.from(
      state.value ?? _default,
    );
    current[documentCategory] = null;
    state = AsyncData(current);
  }

  final Map<DocumentCategory, File?> _default = <DocumentCategory, File?>{
    DocumentCategory.driverLicenseBack: null,
    DocumentCategory.driverLicenseFront: null,
    DocumentCategory.vehicleLicense: null,
  };
}

@riverpod
class FileUploadController extends _$FileUploadController {
  @override
  UploadState build(DocumentCategory category) {
    final pickerState = ref.watch(filePickerControllerProvider);
    final file = pickerState.value?[category];
    return UploadState(file: file);
  }

  Future<void> upload() async {
    final pickerState = ref.read(filePickerControllerProvider);
    final file = pickerState.value?[category]; // ✅ Read specific category

    if (file == null) return;

    state = UploadState(
      status: UploadStatus.uploading,
      file: file,
      sentBytes: 0,
      totalBytes: file.lengthSync(),
    );

    final result = await ref
        .read(profileRepositoryProvider)
        .uploadDocument(
          file: file,
          fileName: file.path.split('/').last,
          onSendProgress: (sent, total) =>
              state = state.copyWith(sentBytes: sent, totalBytes: total),
        );

    result.fold(
      (success) => state = state.copyWith(status: UploadStatus.complete),
      (failure) {
        ref.showExceptionMessage(failure);
        state = state.copyWith(status: UploadStatus.failed);
      },
    );
  }

  Future<void> retry() => upload();

  void reset() {
    ref.read(filePickerControllerProvider.notifier).clearFile(category);
    state = const UploadState();
  }
}
