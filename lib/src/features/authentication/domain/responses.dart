// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:paypadi/core/models/user_model/user_model.dart';

part 'responses.g.dart';

@JsonSerializable(createToJson: false)
class RequestForOtpResponse {
  const RequestForOtpResponse({
    required this.expiresIn,
    required this.otp,
  });

  final String otp;

  @JsonKey(name: 'expires_in')
  final int expiresIn;

  factory RequestForOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$RequestForOtpResponseFromJson(json);
}

@JsonSerializable(createToJson: false)
class VerifyOtpResponse {
  const VerifyOtpResponse({required this.phoneToken});
  
  @JsonKey(name: 'phone_token')
  final String phoneToken;

  factory VerifyOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpResponseFromJson(json);
}

@JsonSerializable(createToJson: false)
class CreateAccountResponse {
  const CreateAccountResponse({
    required this.refreshToken,
    required this.accessToken,
    required this.user,
  });

  @JsonKey(name: 'refresh')
  final String refreshToken;

  @JsonKey(name: 'access')
  final String accessToken;


  final UserModel user;

  factory CreateAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateAccountResponseFromJson(json);
}

@JsonSerializable(createToJson: false)
class LoginResponse {
  const LoginResponse({
    required this.refreshToken,
    required this.accessToken,
    required this.user,
  });

  @JsonKey(name: 'refresh')
  final String refreshToken;

  @JsonKey(name: 'access')
  final String accessToken;

  final UserModel user;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
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
