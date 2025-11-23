// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:paypadi/src/features/authentication/domain/models/user_model.dart';

part 'responses.g.dart';

@JsonSerializable(createToJson: false)
class RequestForOtpResponse {
  const RequestForOtpResponse({
    required this.detail,
    required this.expiresIn,
    required this.otp,
  });

  final String detail;

  @JsonKey(name: "expires_in")
  final int expiresIn;

  final String otp;

  factory RequestForOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$RequestForOtpResponseFromJson(json);
}

@JsonSerializable(createToJson: false)
class VerifyOtpResponse {
  const VerifyOtpResponse({required this.detail, required this.sessionId});

  @JsonKey(name: "session_id")
  final String sessionId;

  final String detail;

  factory VerifyOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpResponseFromJson(json);
}

@JsonSerializable(createToJson: false)
class RegisterUserResponse {
  const RegisterUserResponse({
    required this.refreshToken,
    required this.accessToken,
    required this.user,
  });

  @JsonKey(name: "refresh_token")
  final String refreshToken;

  @JsonKey(name: "access_token")
  final String accessToken;

  final UserModel user;

  factory RegisterUserResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterUserResponseFromJson(json);
}
