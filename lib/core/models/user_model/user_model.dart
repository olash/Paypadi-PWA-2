import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:paypadi/core/models/driver_profile_model/driver_profile_model.dart';
import 'package:paypadi/core/models/user_profile_model/user_profile_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
sealed class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    @JsonKey(name: 'phone_number') required String phoneNumber,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'is_active') required bool isActive,
    String? email,
    UserProfileModel? profile,
    @JsonKey(name: 'driver_profile') DriverProfileModel? driverProfile,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
