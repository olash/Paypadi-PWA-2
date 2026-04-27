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
  AsyncValue<File?> build() => const AsyncData(null);

  Future<void> pickFile() async {
    state = const AsyncLoading();
    try {
      final result = await ref
          .read(filePickerServiceProvider)
          .pickFileFromSystem();
      final path = result.files.first.xFile.path;
      state = AsyncData(File(path));
    } on ClientException catch (e) {
      if (!ref.mounted) return;

      ref.showExceptionMessage(e);
      state = const AsyncData(null);
    }
  }

  void clear() => state = const AsyncData(null);
}

@riverpod
class FileUploadController extends _$FileUploadController {
  @override
  UploadState build() => const UploadState();

  Future<void> upload() async {
    final fileState = ref.read(filePickerControllerProvider);
    if (!fileState.hasValue || fileState.value == null) return;

    final file = fileState.value!;

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
    ref.read(filePickerControllerProvider.notifier).clear();
    state = const UploadState();
  }
}
