import 'dart:io';

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

  FutureResultOf getDriverProfile() async {
    final response = await Result.fromAsync(
      () => client.getDriverProfile(),
    );
    return response;
  }

  FutureResultOf createDriverProfile(Map<String, dynamic> payload) async {
    final response = await Result.fromAsync(
      () => client.createDriverProfile(payload: payload),
    );
    return response;
  }

  FutureResultOf updateDriverProfile(Map<String, dynamic> payload) async {
    final response = await Result.fromAsync(
      () => client.updateDriverProfile(payload: payload),
    );
    return response;
  }

  FutureResultOf uploadDocument({
    required File file,
    required String fileName,
    required void Function(int, int)? onSendProgress,
  }) async {
    final response = await Result.fromAsync(
      () => client.uploadDocument(
        file: file,
        fileName: fileName,
        onSendProgress: onSendProgress,
      ),
    );
    return response;
  }
}
