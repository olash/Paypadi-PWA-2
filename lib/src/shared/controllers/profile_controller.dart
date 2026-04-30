import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/core/repositories/profile_repo.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';

part 'profile_controller.g.dart';

@Riverpod(keepAlive: true)
Map<String, dynamic> profilePayload(Ref ref) => <String, dynamic>{};

@riverpod
class RiderProfile extends _$RiderProfile {
  late final ProfileRepository _profileRepository;

  @override
  FutureOr<void> build() {
    _profileRepository = ref.watch(profileRepositoryProvider);
  }

  void setTransactionPin(String newPin, String confirmedPin) async {
    state = AsyncLoading();
    final Map<String, dynamic> payload = {
      "new_pin": newPin,
      "confirm_pin": confirmedPin,
    };

    final result = await _profileRepository.setTransactionPin(payload);
    result.fold(
      (success) {
        ref
            .read(secureCacheProvider)
            .write(key: CacheKeys.transactionPin, value: confirmedPin);
        ref.read(appRouterProvider).push(BiometricAuthenticationRoute());
        state = AsyncData(null);
      },
      (failure) {
        ref.showExceptionMessage(failure);
        state = const AsyncData(null);
      },
    );
  }
}

@riverpod
class DriverProfile extends _$DriverProfile {
  late final ProfileRepository _profileRepository;

  @override
  FutureOr<void> build() {
    _profileRepository = ref.watch(profileRepositoryProvider);
  }

  Future<void> createProfile() async {
    state = AsyncLoading();

    final payload = ref.read(profilePayloadProvider);
    final result = await _profileRepository.createDriverProfile(payload);

    result.fold(
      (success) {
        state = AsyncData(null);
        ref.read(appRouterProvider).push(LicensingRoute());
      },
      (failure) {
        ref.showExceptionMessage(failure);
        state = const AsyncData(null);
      },
    );
  }

  Future<void> updateDriverProfile() async {
    state = AsyncLoading();

    final payload = ref.read(profilePayloadProvider);
    final result = await _profileRepository.updateDriverProfile(payload);

    result.fold(
      (success) {
        state = AsyncData(null);
        ref.read(appRouterProvider).push(DocumentUploadRoute());
      },
      (failure) {
        ref.showExceptionMessage(failure);
        state = const AsyncData(null);
      },
    );
  }
}
