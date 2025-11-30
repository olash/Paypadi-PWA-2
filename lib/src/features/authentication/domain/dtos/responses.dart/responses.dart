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

  @JsonKey(name: "expires_in")
  final int expiresIn;

  final String detail;
  final String otp;

  factory RequestForOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$RequestForOtpResponseFromJson(json);
}

@JsonSerializable(createToJson: false)
class VerifyOtpResponse {
  const VerifyOtpResponse({
    required this.detail,
    required this.sessionId,
  });

  @JsonKey(name: "session_id")
  final String sessionId;

  final String detail;

  factory VerifyOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpResponseFromJson(json);
}

@JsonSerializable(createToJson: false)
class RegisterUserResponse {
  const RegisterUserResponse({
    required this.detail,
    required this.refreshToken,
    required this.accessToken,
    required this.user,
  });

  @JsonKey(name: "refresh")
  final String refreshToken;

  @JsonKey(name: "access")
  final String accessToken;

  final String detail;
  
  final UserModel user;

  factory RegisterUserResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterUserResponseFromJson(json);
}

@JsonSerializable(createToJson: false)
class TokenResponse {
  const TokenResponse({
    required this.refresh,
    required this.access,
  });

  final String refresh;
  final String access;

  factory TokenResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenResponseFromJson(json);
}
