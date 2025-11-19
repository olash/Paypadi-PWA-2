import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_request.freezed.dart';
part 'authentication_request.g.dart';

@Freezed(fromJson: false, toJson: true)
abstract class AuthenticationRequest with _$AuthenticationRequest {
  const factory AuthenticationRequest.requestForOtp({
    @JsonKey(name: "phone_number") required String phoneNumber,
    required String purpose,
  }) = RequestForOtpPayload;

  const factory AuthenticationRequest.verifyOtp({
    @JsonKey(name: "phone_number") required String phoneNumber,
    required String purpose,
    required String code,
  }) = VerifyOtpPayload;

  const factory AuthenticationRequest.registerUser({
    @JsonKey(name: "phone_number") required String phoneNumber,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    String? password,
    String? email,
    @JsonKey(name: "referred_by") String? referredBy,
  }) = RegisterUserPayload;

  // factory AuthenticationRequest.fromJson(Map<String, dynamic> json) =>
  //     _$AuthenticationRequestFromJson(json);
}

extension AuthenticationRequestApi on AuthenticationRequest {
  /// Returns JSON suitable for API payloads (strips the Freezed union key).
  Map<String, dynamic> toApiJson() {
    final map = toJson();
    map.remove('runtimeType');
    return map;
  }
}
