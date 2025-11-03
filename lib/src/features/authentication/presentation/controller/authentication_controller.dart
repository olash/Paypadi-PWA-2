import 'package:paypadi/src/features/authentication/data/repository/authentication_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_controller.g.dart';

String pinProvider(Ref ref) => "";

@riverpod
class AuthController extends _$AuthController {
  late final AuthenticationRepo _authRepository;

  @override
  FutureOr<void> build() {
    _authRepository = ref.watch(authRepoProvider);
  }
}
