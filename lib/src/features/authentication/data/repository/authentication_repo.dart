
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/src/features/authentication/data/datasource/authentication_client.dart' show AuthenticationClient, authClientProvider;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_repo.g.dart';

class AuthenticationRepo {
  const AuthenticationRepo(this._api);
  final AuthenticationClient _api;


}

@riverpod
AuthenticationRepo authRepo(Ref ref) {
  final apiClient = ref.watch(authClientProvider);
  return AuthenticationRepo(apiClient);
}
