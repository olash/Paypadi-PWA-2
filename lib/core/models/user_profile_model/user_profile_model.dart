import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:paypadi/core/utils/enums.dart';

part 'user_profile_model.freezed.dart';
part 'user_profile_model.g.dart';

@freezed
sealed class UserProfileModel with _$UserProfileModel {
  const factory UserProfileModel({
    required String id,
    @JsonKey(unknownEnumValue: AccountType.unknown) required AccountType role,
    @JsonKey(name: 'phone_number') required String phoneNumber,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'verified_phone') required bool phoneVerified,
    @JsonKey(name: 'date_joined') required String dateJoined,
    @JsonKey(name: 'referral_code') required String referralCode,
    @JsonKey(name: 'total_referrals') required int totalReferrals,
    String? email,
    @JsonKey(name: 'last_login') String? lastLogin,
    @JsonKey(name: 'driver_profile') String? driverProfile,
    @JsonKey(name: 'kyc_status') String? kycStatus,
    ProfileModel? profile,
  }) = _UserProfileModel;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
}

@freezed
sealed class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    required int id,
    @JsonKey(name: 'is_email_verified') required bool emailVerified,
    String? address,
    String? city,
    String? state,
    String? country,
    @JsonKey(name: 'date_of_birth') String? dob,
    @JsonKey(name: 'profile_picture') String? profilePicture,
    @JsonKey(name: 'id_document') String? idDocument,
    @JsonKey(name: 'id_document_type') String? idDocumentType,
    @JsonKey(name: 'id_document_number') String? idDocumentNumber,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}
