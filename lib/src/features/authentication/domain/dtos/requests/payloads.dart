// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:paypadi/core/utils/constants.dart';

part 'payloads.freezed.dart';
part 'payloads.g.dart';
part 'payload_builder.dart';

@JsonSerializable()
class RequestForOtpPayload {
  const RequestForOtpPayload({
    required this.phoneNumber,
    required this.purpose,
  });

  @JsonKey(name: "phone_number")
  final String phoneNumber;

  final String purpose;

  factory RequestForOtpPayload.fromJson(Map<String, dynamic> json) =>
      _$RequestForOtpPayloadFromJson(json);

  Map<String, dynamic> toJson() => _$RequestForOtpPayloadToJson(this);
}

@JsonSerializable()
class VerifyOtpPayload {
  const VerifyOtpPayload({
    required this.phoneNumber,
    required this.purpose,
    required this.code,
  });

  @JsonKey(name: "phone_number")
  final String phoneNumber;

  final String purpose;

  final String code;

  factory VerifyOtpPayload.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpPayloadFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyOtpPayloadToJson(this);
}

@Freezed(fromJson: false, toJson: true)
abstract class RegisterUserPayload with _$RegisterUserPayload {
  const RegisterUserPayload._();

  const factory RegisterUserPayload({
    @JsonKey(name: "phone_number") required String phoneNumber,
    @JsonKey(name: "first_name", defaultValue: "") required String firstName,
    @JsonKey(name: "last_name", defaultValue: "") required String lastName,
    required String password,
    @Default("") String? email,
    @Default("") String? role,
    @JsonKey(name: "referred_by") String? referredBy,
  }) = _RegisterUserPayload;

  static RegisterUserPayloadBuilder builder() =>
      diLocator.get<RegisterUserPayloadBuilder>();
}
