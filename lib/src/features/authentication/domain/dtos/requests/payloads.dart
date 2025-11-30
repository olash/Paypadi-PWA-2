// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

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
abstract class RegisterPayload with _$RegisterPayload {
  const factory RegisterPayload({
    String? email,
    required String password,
    @Default("rider") String? role,
    @JsonKey(name: "phone_number") required String phoneNumber,
    @JsonKey(name: "first_name") required String firstName,
    @JsonKey(name: "last_name") required String lastName,
    @JsonKey(name: "cab_number") String? cabNumber,
    @JsonKey(name: "license_plate") String? licensePlate,
    @JsonKey(name: "driver_license_number") String? driverLicenseNumber,
    @JsonKey(name: "referred_by") String? referredBy,
  }) = _RegisterPayload;
}

@JsonSerializable()
class SetPinPayload {
  const SetPinPayload({
    required this.newPin,
    required this.currentPin,
    required this.confirmPin,
  });

  final String newPin;

  @JsonKey(name: "current_pin")
  final String currentPin;

  @JsonKey(name: "confirm_pin")
  final String confirmPin;

  Map<String, dynamic> toJson() => _$SetPinPayloadToJson(this);
}

@JsonSerializable()
class PasswordChangePayload {
  const PasswordChangePayload({
    required this.oldPassword,
    required this.newPassword,
  });

  @JsonKey(name: "old_password")
  final String oldPassword;

  @JsonKey(name: "new_password")
  final String newPassword;

  Map<String, dynamic> toJson() => _$PasswordChangePayloadToJson(this);
}

@JsonSerializable()
class GetJwtPayload {
  const GetJwtPayload({
    required this.phoneNumber,
    required this.password,
  });

  @JsonKey(name: "phone_number")
  final String phoneNumber;

  final String password;

  Map<String, dynamic> toJson() => _$GetJwtPayloadToJson(this);
}

@JsonSerializable()
class PayoutAccountPayload {
  const PayoutAccountPayload({
    required this.accountType,
    required this.accountName,
    required this.accountNumber,
    required this.bankName,
    required this.bankCode,
    required this.isPrimary,
  });

  @JsonKey(name: "account_type")
  final String accountType;

  @JsonKey(name: "account_name")
  final String accountName;

  @JsonKey(name: "account_number")
  final String accountNumber;

  @JsonKey(name: "bank_name")
  final String bankName;

  @JsonKey(name: "bank_code")
  final String bankCode;

  @JsonKey(name: "is_primary")
  final bool isPrimary;

  Map<String, dynamic> toJson() => _$PayoutAccountPayloadToJson(this);
}
