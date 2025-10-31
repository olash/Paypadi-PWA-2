import 'package:paypadi/core/api/response/api_response.dart' show ApiResponse;
import 'package:paypadi/core/api/result.dart';
import 'package:paypadi/core/utils/typedefs.dart';
import 'package:paypadi/src/features/home/data/datasource/home_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_repo.g.dart';

class HomeRepo {
  const HomeRepo(this.client);
  final HomeClient client;

  FutureResultOf createAccount() async {
    final response = await Result.fromAsync<ApiResponse>(
      () => client.getBalance(payload: ""),
    );
    return response;
  }
}

@riverpod
HomeRepo homeRepo(Ref ref) {
  final apiClient = ref.watch(homeClientProvider);
  return HomeRepo(apiClient);
}
