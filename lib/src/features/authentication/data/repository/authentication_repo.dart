import 'package:paypadi/core/api/response/api_response.dart' show ApiResponse;
import 'package:paypadi/core/api/result.dart';
import 'package:paypadi/core/utils/typedefs.dart';
import 'package:paypadi/src/features/authentication/data/datasource/authentication_client.dart'
    show AuthenticationClient, authClientProvider;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication_repo.g.dart';

class AuthenticationRepo {
  const AuthenticationRepo(this.authClient);
  final AuthenticationClient authClient;

  FutureResultOf createAccount() async {
    final response = await Result.fromAsync<ApiResponse>(
      () => authClient.createAccount(payload: ""),
    );
    return response;
  }
}

@riverpod
AuthenticationRepo authRepo(Ref ref) {
  final apiClient = ref.watch(authClientProvider);
  return AuthenticationRepo(apiClient);
}
