import 'package:paypadi/config/router/router.gr.dart';
import 'package:paypadi/config/provider_registry/provider_registry.dart';
import 'package:paypadi/src/features/authentication/data/repository/profile_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/core/api/exceptions/app_exception.dart';
import 'package:paypadi/core/utils/constants.dart';

part 'profile_controller.g.dart';

@riverpod
class ProfileController extends _$ProfileController {
  late final ProfileRepository _profileRepository;

  @override
  FutureOr<void> build() {
    _profileRepository = ref.watch(profileRepositoryProvider);
  }

  void setTransactionPin(String newPin, String confirmedPin) async {
    state = AsyncLoading();

    final Map<String, dynamic> payload = {
      "new_pin": newPin,
      "current_pin": confirmedPin,
    };

    final result = await _profileRepository.setTransactionPin(payload);

    state = result.fold(
      (success) {
        ref
            .read(secureCacheProvider)
            .write(key: CacheKeys.transactionPin, value: confirmedPin);
        ref.read(appRouterProvider).push(BiometricAuthenticationRoute());
        return AsyncData(null);
      },
      (failure) {
        final AppException exception = AppException.handleException(failure);
        final String message = AppException.getExceptionMessage(exception);
        return AsyncError(message, StackTrace.current);
      },
    );
  }
}
