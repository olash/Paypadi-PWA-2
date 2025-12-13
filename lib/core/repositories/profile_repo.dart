import 'package:paypadi/core/api/result.dart';
import 'package:paypadi/core/utils/typedefs.dart';
import 'package:paypadi/core/datasource/profile_ds/profile_client.dart';
import 'package:paypadi/src/features/authentication/domain/responses.dart';

class ProfileRepository {
  const ProfileRepository({required this.client});
  final ProfileClient client;

  FutureResultOf<SetPinResponse> setTransactionPin(
    Map<String, dynamic> payload,
  ) async {
    final response = await Result.fromAsync<SetPinResponse>(
      () => client.setTransactionPin(payload: payload),
    );
    return response;
  }

  FutureResultOf getUserProfile() async {
    final response = await Result.fromAsync(
      () => client.getUserInfo(),
    );
    return response;
  }
}
