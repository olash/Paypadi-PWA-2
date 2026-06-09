import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/core/services/image_picker_service.dart';
import 'package:share_plus/share_plus.dart';

part 'profile_picture_controller.g.dart';

@riverpod
class ProfilePicture extends _$ProfilePicture {
  late final ImagePickerService _service;

  @override
  FutureOr<XFile?> build() {
    _service = ref.watch(imagePickerServiceProvider);
    return null;
  }

  Future<void> uploadPicture() async {
    state = AsyncLoading();
    final XFile? image = await _service.pickImage();

    if (image == null) return;
    // TODO: Complete this function
    final _ = await ref
        .read(walletRepositoryProvider)
        .fetchWalletBalance();
  }
}
