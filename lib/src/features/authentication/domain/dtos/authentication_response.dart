import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:paypadi/src/features/authentication/domain/models/user_model.dart';

part 'authentication_response.freezed.dart';
part 'authentication_response.g.dart';

@Freezed(fromJson: true, toJson: false)
abstract class AuthenticationResponse with _$AuthenticationResponse {
  const factory AuthenticationResponse.requestForOtp({
    required String detail,
    @JsonKey(name: "expires_in") required String expiresIn,
  }) = RequestForOtpResponse;

  const factory AuthenticationResponse.verifyOtp({required String detail}) =
      VerifyOtpResponse;

  const factory AuthenticationResponse.registerUser({
    @JsonKey(name: "refresh") required String refreshToken,
    @JsonKey(name: "access") required String accessToken,
    required UserModel user,
  }) = RegisterUserResponse;

}
