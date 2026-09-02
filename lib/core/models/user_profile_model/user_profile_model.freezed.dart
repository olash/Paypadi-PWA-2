// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserProfileModel {

 String get id;@JsonKey(unknownEnumValue: AccountType.unknown) AccountType get role;@JsonKey(name: 'phone_number') String get phoneNumber;@JsonKey(name: 'first_name') String get firstName;@JsonKey(name: 'last_name') String get lastName;@JsonKey(name: 'is_active') bool get isActive;@JsonKey(name: 'verified_phone') bool get phoneVerified;@JsonKey(name: 'date_joined') String get dateJoined;@JsonKey(name: 'referral_code') String get referralCode;@JsonKey(name: 'total_referrals') int get totalReferrals; String? get email;@JsonKey(name: 'last_login') String? get lastLogin;@JsonKey(name: 'driver_profile') String? get driverProfile;@JsonKey(name: 'kyc_status') String? get kycStatus; ProfileModel? get profile;
/// Create a copy of UserProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileModelCopyWith<UserProfileModel> get copyWith => _$UserProfileModelCopyWithImpl<UserProfileModel>(this as UserProfileModel, _$identity);

  /// Serializes this UserProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.role, role) || other.role == role)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.phoneVerified, phoneVerified) || other.phoneVerified == phoneVerified)&&(identical(other.dateJoined, dateJoined) || other.dateJoined == dateJoined)&&(identical(other.referralCode, referralCode) || other.referralCode == referralCode)&&(identical(other.totalReferrals, totalReferrals) || other.totalReferrals == totalReferrals)&&(identical(other.email, email) || other.email == email)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&(identical(other.driverProfile, driverProfile) || other.driverProfile == driverProfile)&&(identical(other.kycStatus, kycStatus) || other.kycStatus == kycStatus)&&(identical(other.profile, profile) || other.profile == profile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,role,phoneNumber,firstName,lastName,isActive,phoneVerified,dateJoined,referralCode,totalReferrals,email,lastLogin,driverProfile,kycStatus,profile);

@override
String toString() {
  return 'UserProfileModel(id: $id, role: $role, phoneNumber: $phoneNumber, firstName: $firstName, lastName: $lastName, isActive: $isActive, phoneVerified: $phoneVerified, dateJoined: $dateJoined, referralCode: $referralCode, totalReferrals: $totalReferrals, email: $email, lastLogin: $lastLogin, driverProfile: $driverProfile, kycStatus: $kycStatus, profile: $profile)';
}


}

/// @nodoc
abstract mixin class $UserProfileModelCopyWith<$Res>  {
  factory $UserProfileModelCopyWith(UserProfileModel value, $Res Function(UserProfileModel) _then) = _$UserProfileModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(unknownEnumValue: AccountType.unknown) AccountType role,@JsonKey(name: 'phone_number') String phoneNumber,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'verified_phone') bool phoneVerified,@JsonKey(name: 'date_joined') String dateJoined,@JsonKey(name: 'referral_code') String referralCode,@JsonKey(name: 'total_referrals') int totalReferrals, String? email,@JsonKey(name: 'last_login') String? lastLogin,@JsonKey(name: 'driver_profile') String? driverProfile,@JsonKey(name: 'kyc_status') String? kycStatus, ProfileModel? profile
});


$ProfileModelCopyWith<$Res>? get profile;

}
/// @nodoc
class _$UserProfileModelCopyWithImpl<$Res>
    implements $UserProfileModelCopyWith<$Res> {
  _$UserProfileModelCopyWithImpl(this._self, this._then);

  final UserProfileModel _self;
  final $Res Function(UserProfileModel) _then;

/// Create a copy of UserProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? role = null,Object? phoneNumber = null,Object? firstName = null,Object? lastName = null,Object? isActive = null,Object? phoneVerified = null,Object? dateJoined = null,Object? referralCode = null,Object? totalReferrals = null,Object? email = freezed,Object? lastLogin = freezed,Object? driverProfile = freezed,Object? kycStatus = freezed,Object? profile = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as AccountType,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,phoneVerified: null == phoneVerified ? _self.phoneVerified : phoneVerified // ignore: cast_nullable_to_non_nullable
as bool,dateJoined: null == dateJoined ? _self.dateJoined : dateJoined // ignore: cast_nullable_to_non_nullable
as String,referralCode: null == referralCode ? _self.referralCode : referralCode // ignore: cast_nullable_to_non_nullable
as String,totalReferrals: null == totalReferrals ? _self.totalReferrals : totalReferrals // ignore: cast_nullable_to_non_nullable
as int,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,lastLogin: freezed == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as String?,driverProfile: freezed == driverProfile ? _self.driverProfile : driverProfile // ignore: cast_nullable_to_non_nullable
as String?,kycStatus: freezed == kycStatus ? _self.kycStatus : kycStatus // ignore: cast_nullable_to_non_nullable
as String?,profile: freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileModel?,
  ));
}
/// Create a copy of UserProfileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileModelCopyWith<$Res>? get profile {
    if (_self.profile == null) {
    return null;
  }

  return $ProfileModelCopyWith<$Res>(_self.profile!, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserProfileModel].
extension UserProfileModelPatterns on UserProfileModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProfileModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _UserProfileModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserProfileModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(unknownEnumValue: AccountType.unknown)  AccountType role, @JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'verified_phone')  bool phoneVerified, @JsonKey(name: 'date_joined')  String dateJoined, @JsonKey(name: 'referral_code')  String referralCode, @JsonKey(name: 'total_referrals')  int totalReferrals,  String? email, @JsonKey(name: 'last_login')  String? lastLogin, @JsonKey(name: 'driver_profile')  String? driverProfile, @JsonKey(name: 'kyc_status')  String? kycStatus,  ProfileModel? profile)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfileModel() when $default != null:
return $default(_that.id,_that.role,_that.phoneNumber,_that.firstName,_that.lastName,_that.isActive,_that.phoneVerified,_that.dateJoined,_that.referralCode,_that.totalReferrals,_that.email,_that.lastLogin,_that.driverProfile,_that.kycStatus,_that.profile);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(unknownEnumValue: AccountType.unknown)  AccountType role, @JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'verified_phone')  bool phoneVerified, @JsonKey(name: 'date_joined')  String dateJoined, @JsonKey(name: 'referral_code')  String referralCode, @JsonKey(name: 'total_referrals')  int totalReferrals,  String? email, @JsonKey(name: 'last_login')  String? lastLogin, @JsonKey(name: 'driver_profile')  String? driverProfile, @JsonKey(name: 'kyc_status')  String? kycStatus,  ProfileModel? profile)  $default,) {final _that = this;
switch (_that) {
case _UserProfileModel():
return $default(_that.id,_that.role,_that.phoneNumber,_that.firstName,_that.lastName,_that.isActive,_that.phoneVerified,_that.dateJoined,_that.referralCode,_that.totalReferrals,_that.email,_that.lastLogin,_that.driverProfile,_that.kycStatus,_that.profile);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(unknownEnumValue: AccountType.unknown)  AccountType role, @JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'verified_phone')  bool phoneVerified, @JsonKey(name: 'date_joined')  String dateJoined, @JsonKey(name: 'referral_code')  String referralCode, @JsonKey(name: 'total_referrals')  int totalReferrals,  String? email, @JsonKey(name: 'last_login')  String? lastLogin, @JsonKey(name: 'driver_profile')  String? driverProfile, @JsonKey(name: 'kyc_status')  String? kycStatus,  ProfileModel? profile)?  $default,) {final _that = this;
switch (_that) {
case _UserProfileModel() when $default != null:
return $default(_that.id,_that.role,_that.phoneNumber,_that.firstName,_that.lastName,_that.isActive,_that.phoneVerified,_that.dateJoined,_that.referralCode,_that.totalReferrals,_that.email,_that.lastLogin,_that.driverProfile,_that.kycStatus,_that.profile);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserProfileModel implements UserProfileModel {
  const _UserProfileModel({required this.id, @JsonKey(unknownEnumValue: AccountType.unknown) required this.role, @JsonKey(name: 'phone_number') required this.phoneNumber, @JsonKey(name: 'first_name') required this.firstName, @JsonKey(name: 'last_name') required this.lastName, @JsonKey(name: 'is_active') required this.isActive, @JsonKey(name: 'verified_phone') required this.phoneVerified, @JsonKey(name: 'date_joined') required this.dateJoined, @JsonKey(name: 'referral_code') required this.referralCode, @JsonKey(name: 'total_referrals') required this.totalReferrals, this.email, @JsonKey(name: 'last_login') this.lastLogin, @JsonKey(name: 'driver_profile') this.driverProfile, @JsonKey(name: 'kyc_status') this.kycStatus, this.profile});
  factory _UserProfileModel.fromJson(Map<String, dynamic> json) => _$UserProfileModelFromJson(json);

@override final  String id;
@override@JsonKey(unknownEnumValue: AccountType.unknown) final  AccountType role;
@override@JsonKey(name: 'phone_number') final  String phoneNumber;
@override@JsonKey(name: 'first_name') final  String firstName;
@override@JsonKey(name: 'last_name') final  String lastName;
@override@JsonKey(name: 'is_active') final  bool isActive;
@override@JsonKey(name: 'verified_phone') final  bool phoneVerified;
@override@JsonKey(name: 'date_joined') final  String dateJoined;
@override@JsonKey(name: 'referral_code') final  String referralCode;
@override@JsonKey(name: 'total_referrals') final  int totalReferrals;
@override final  String? email;
@override@JsonKey(name: 'last_login') final  String? lastLogin;
@override@JsonKey(name: 'driver_profile') final  String? driverProfile;
@override@JsonKey(name: 'kyc_status') final  String? kycStatus;
@override final  ProfileModel? profile;

/// Create a copy of UserProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileModelCopyWith<_UserProfileModel> get copyWith => __$UserProfileModelCopyWithImpl<_UserProfileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserProfileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.role, role) || other.role == role)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.phoneVerified, phoneVerified) || other.phoneVerified == phoneVerified)&&(identical(other.dateJoined, dateJoined) || other.dateJoined == dateJoined)&&(identical(other.referralCode, referralCode) || other.referralCode == referralCode)&&(identical(other.totalReferrals, totalReferrals) || other.totalReferrals == totalReferrals)&&(identical(other.email, email) || other.email == email)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&(identical(other.driverProfile, driverProfile) || other.driverProfile == driverProfile)&&(identical(other.kycStatus, kycStatus) || other.kycStatus == kycStatus)&&(identical(other.profile, profile) || other.profile == profile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,role,phoneNumber,firstName,lastName,isActive,phoneVerified,dateJoined,referralCode,totalReferrals,email,lastLogin,driverProfile,kycStatus,profile);

@override
String toString() {
  return 'UserProfileModel(id: $id, role: $role, phoneNumber: $phoneNumber, firstName: $firstName, lastName: $lastName, isActive: $isActive, phoneVerified: $phoneVerified, dateJoined: $dateJoined, referralCode: $referralCode, totalReferrals: $totalReferrals, email: $email, lastLogin: $lastLogin, driverProfile: $driverProfile, kycStatus: $kycStatus, profile: $profile)';
}


}

/// @nodoc
abstract mixin class _$UserProfileModelCopyWith<$Res> implements $UserProfileModelCopyWith<$Res> {
  factory _$UserProfileModelCopyWith(_UserProfileModel value, $Res Function(_UserProfileModel) _then) = __$UserProfileModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(unknownEnumValue: AccountType.unknown) AccountType role,@JsonKey(name: 'phone_number') String phoneNumber,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'verified_phone') bool phoneVerified,@JsonKey(name: 'date_joined') String dateJoined,@JsonKey(name: 'referral_code') String referralCode,@JsonKey(name: 'total_referrals') int totalReferrals, String? email,@JsonKey(name: 'last_login') String? lastLogin,@JsonKey(name: 'driver_profile') String? driverProfile,@JsonKey(name: 'kyc_status') String? kycStatus, ProfileModel? profile
});


@override $ProfileModelCopyWith<$Res>? get profile;

}
/// @nodoc
class __$UserProfileModelCopyWithImpl<$Res>
    implements _$UserProfileModelCopyWith<$Res> {
  __$UserProfileModelCopyWithImpl(this._self, this._then);

  final _UserProfileModel _self;
  final $Res Function(_UserProfileModel) _then;

/// Create a copy of UserProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? role = null,Object? phoneNumber = null,Object? firstName = null,Object? lastName = null,Object? isActive = null,Object? phoneVerified = null,Object? dateJoined = null,Object? referralCode = null,Object? totalReferrals = null,Object? email = freezed,Object? lastLogin = freezed,Object? driverProfile = freezed,Object? kycStatus = freezed,Object? profile = freezed,}) {
  return _then(_UserProfileModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as AccountType,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,phoneVerified: null == phoneVerified ? _self.phoneVerified : phoneVerified // ignore: cast_nullable_to_non_nullable
as bool,dateJoined: null == dateJoined ? _self.dateJoined : dateJoined // ignore: cast_nullable_to_non_nullable
as String,referralCode: null == referralCode ? _self.referralCode : referralCode // ignore: cast_nullable_to_non_nullable
as String,totalReferrals: null == totalReferrals ? _self.totalReferrals : totalReferrals // ignore: cast_nullable_to_non_nullable
as int,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,lastLogin: freezed == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as String?,driverProfile: freezed == driverProfile ? _self.driverProfile : driverProfile // ignore: cast_nullable_to_non_nullable
as String?,kycStatus: freezed == kycStatus ? _self.kycStatus : kycStatus // ignore: cast_nullable_to_non_nullable
as String?,profile: freezed == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileModel?,
  ));
}

/// Create a copy of UserProfileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileModelCopyWith<$Res>? get profile {
    if (_self.profile == null) {
    return null;
  }

  return $ProfileModelCopyWith<$Res>(_self.profile!, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}


/// @nodoc
mixin _$ProfileModel {

 int get id;@JsonKey(name: 'is_email_verified') bool get emailVerified; String? get address; String? get city; String? get state; String? get country;@JsonKey(name: 'date_of_birth') String? get dob;@JsonKey(name: 'profile_picture') String? get profilePicture;@JsonKey(name: 'id_document') String? get idDocument;@JsonKey(name: 'id_document_type') String? get idDocumentType;@JsonKey(name: 'id_document_number') String? get idDocumentNumber;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;
/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileModelCopyWith<ProfileModel> get copyWith => _$ProfileModelCopyWithImpl<ProfileModel>(this as ProfileModel, _$identity);

  /// Serializes this ProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.emailVerified, emailVerified) || other.emailVerified == emailVerified)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.profilePicture, profilePicture) || other.profilePicture == profilePicture)&&(identical(other.idDocument, idDocument) || other.idDocument == idDocument)&&(identical(other.idDocumentType, idDocumentType) || other.idDocumentType == idDocumentType)&&(identical(other.idDocumentNumber, idDocumentNumber) || other.idDocumentNumber == idDocumentNumber)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,emailVerified,address,city,state,country,dob,profilePicture,idDocument,idDocumentType,idDocumentNumber,createdAt,updatedAt);

@override
String toString() {
  return 'ProfileModel(id: $id, emailVerified: $emailVerified, address: $address, city: $city, state: $state, country: $country, dob: $dob, profilePicture: $profilePicture, idDocument: $idDocument, idDocumentType: $idDocumentType, idDocumentNumber: $idDocumentNumber, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ProfileModelCopyWith<$Res>  {
  factory $ProfileModelCopyWith(ProfileModel value, $Res Function(ProfileModel) _then) = _$ProfileModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'is_email_verified') bool emailVerified, String? address, String? city, String? state, String? country,@JsonKey(name: 'date_of_birth') String? dob,@JsonKey(name: 'profile_picture') String? profilePicture,@JsonKey(name: 'id_document') String? idDocument,@JsonKey(name: 'id_document_type') String? idDocumentType,@JsonKey(name: 'id_document_number') String? idDocumentNumber,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class _$ProfileModelCopyWithImpl<$Res>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._self, this._then);

  final ProfileModel _self;
  final $Res Function(ProfileModel) _then;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? emailVerified = null,Object? address = freezed,Object? city = freezed,Object? state = freezed,Object? country = freezed,Object? dob = freezed,Object? profilePicture = freezed,Object? idDocument = freezed,Object? idDocumentType = freezed,Object? idDocumentNumber = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,emailVerified: null == emailVerified ? _self.emailVerified : emailVerified // ignore: cast_nullable_to_non_nullable
as bool,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String?,profilePicture: freezed == profilePicture ? _self.profilePicture : profilePicture // ignore: cast_nullable_to_non_nullable
as String?,idDocument: freezed == idDocument ? _self.idDocument : idDocument // ignore: cast_nullable_to_non_nullable
as String?,idDocumentType: freezed == idDocumentType ? _self.idDocumentType : idDocumentType // ignore: cast_nullable_to_non_nullable
as String?,idDocumentNumber: freezed == idDocumentNumber ? _self.idDocumentNumber : idDocumentNumber // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileModel].
extension ProfileModelPatterns on ProfileModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _ProfileModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'is_email_verified')  bool emailVerified,  String? address,  String? city,  String? state,  String? country, @JsonKey(name: 'date_of_birth')  String? dob, @JsonKey(name: 'profile_picture')  String? profilePicture, @JsonKey(name: 'id_document')  String? idDocument, @JsonKey(name: 'id_document_type')  String? idDocumentType, @JsonKey(name: 'id_document_number')  String? idDocumentNumber, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
return $default(_that.id,_that.emailVerified,_that.address,_that.city,_that.state,_that.country,_that.dob,_that.profilePicture,_that.idDocument,_that.idDocumentType,_that.idDocumentNumber,_that.createdAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'is_email_verified')  bool emailVerified,  String? address,  String? city,  String? state,  String? country, @JsonKey(name: 'date_of_birth')  String? dob, @JsonKey(name: 'profile_picture')  String? profilePicture, @JsonKey(name: 'id_document')  String? idDocument, @JsonKey(name: 'id_document_type')  String? idDocumentType, @JsonKey(name: 'id_document_number')  String? idDocumentNumber, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ProfileModel():
return $default(_that.id,_that.emailVerified,_that.address,_that.city,_that.state,_that.country,_that.dob,_that.profilePicture,_that.idDocument,_that.idDocumentType,_that.idDocumentNumber,_that.createdAt,_that.updatedAt);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'is_email_verified')  bool emailVerified,  String? address,  String? city,  String? state,  String? country, @JsonKey(name: 'date_of_birth')  String? dob, @JsonKey(name: 'profile_picture')  String? profilePicture, @JsonKey(name: 'id_document')  String? idDocument, @JsonKey(name: 'id_document_type')  String? idDocumentType, @JsonKey(name: 'id_document_number')  String? idDocumentNumber, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
return $default(_that.id,_that.emailVerified,_that.address,_that.city,_that.state,_that.country,_that.dob,_that.profilePicture,_that.idDocument,_that.idDocumentType,_that.idDocumentNumber,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileModel implements ProfileModel {
  const _ProfileModel({required this.id, @JsonKey(name: 'is_email_verified') required this.emailVerified, this.address, this.city, this.state, this.country, @JsonKey(name: 'date_of_birth') this.dob, @JsonKey(name: 'profile_picture') this.profilePicture, @JsonKey(name: 'id_document') this.idDocument, @JsonKey(name: 'id_document_type') this.idDocumentType, @JsonKey(name: 'id_document_number') this.idDocumentNumber, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'is_email_verified') final  bool emailVerified;
@override final  String? address;
@override final  String? city;
@override final  String? state;
@override final  String? country;
@override@JsonKey(name: 'date_of_birth') final  String? dob;
@override@JsonKey(name: 'profile_picture') final  String? profilePicture;
@override@JsonKey(name: 'id_document') final  String? idDocument;
@override@JsonKey(name: 'id_document_type') final  String? idDocumentType;
@override@JsonKey(name: 'id_document_number') final  String? idDocumentNumber;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileModelCopyWith<_ProfileModel> get copyWith => __$ProfileModelCopyWithImpl<_ProfileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.emailVerified, emailVerified) || other.emailVerified == emailVerified)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.profilePicture, profilePicture) || other.profilePicture == profilePicture)&&(identical(other.idDocument, idDocument) || other.idDocument == idDocument)&&(identical(other.idDocumentType, idDocumentType) || other.idDocumentType == idDocumentType)&&(identical(other.idDocumentNumber, idDocumentNumber) || other.idDocumentNumber == idDocumentNumber)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,emailVerified,address,city,state,country,dob,profilePicture,idDocument,idDocumentType,idDocumentNumber,createdAt,updatedAt);

@override
String toString() {
  return 'ProfileModel(id: $id, emailVerified: $emailVerified, address: $address, city: $city, state: $state, country: $country, dob: $dob, profilePicture: $profilePicture, idDocument: $idDocument, idDocumentType: $idDocumentType, idDocumentNumber: $idDocumentNumber, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ProfileModelCopyWith<$Res> implements $ProfileModelCopyWith<$Res> {
  factory _$ProfileModelCopyWith(_ProfileModel value, $Res Function(_ProfileModel) _then) = __$ProfileModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'is_email_verified') bool emailVerified, String? address, String? city, String? state, String? country,@JsonKey(name: 'date_of_birth') String? dob,@JsonKey(name: 'profile_picture') String? profilePicture,@JsonKey(name: 'id_document') String? idDocument,@JsonKey(name: 'id_document_type') String? idDocumentType,@JsonKey(name: 'id_document_number') String? idDocumentNumber,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class __$ProfileModelCopyWithImpl<$Res>
    implements _$ProfileModelCopyWith<$Res> {
  __$ProfileModelCopyWithImpl(this._self, this._then);

  final _ProfileModel _self;
  final $Res Function(_ProfileModel) _then;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? emailVerified = null,Object? address = freezed,Object? city = freezed,Object? state = freezed,Object? country = freezed,Object? dob = freezed,Object? profilePicture = freezed,Object? idDocument = freezed,Object? idDocumentType = freezed,Object? idDocumentNumber = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_ProfileModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,emailVerified: null == emailVerified ? _self.emailVerified : emailVerified // ignore: cast_nullable_to_non_nullable
as bool,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String?,profilePicture: freezed == profilePicture ? _self.profilePicture : profilePicture // ignore: cast_nullable_to_non_nullable
as String?,idDocument: freezed == idDocument ? _self.idDocument : idDocument // ignore: cast_nullable_to_non_nullable
as String?,idDocumentType: freezed == idDocumentType ? _self.idDocumentType : idDocumentType // ignore: cast_nullable_to_non_nullable
as String?,idDocumentNumber: freezed == idDocumentNumber ? _self.idDocumentNumber : idDocumentNumber // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
