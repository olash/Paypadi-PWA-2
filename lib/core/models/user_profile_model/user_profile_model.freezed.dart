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

@JsonKey(name: 'referral_code') String get referralCode;@JsonKey(name: 'total_referrals') int get totalReferrals;@JsonKey(name: 'last_login') String? get lastLogin;@JsonKey(name: 'kyc_status') String? get kycStatus;@JsonKey(name: 'profile_picture') String? get profilePicture; String? get address; String? get city; String? get state; String? get country;
/// Create a copy of UserProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileModelCopyWith<UserProfileModel> get copyWith => _$UserProfileModelCopyWithImpl<UserProfileModel>(this as UserProfileModel, _$identity);

  /// Serializes this UserProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfileModel&&(identical(other.referralCode, referralCode) || other.referralCode == referralCode)&&(identical(other.totalReferrals, totalReferrals) || other.totalReferrals == totalReferrals)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&(identical(other.kycStatus, kycStatus) || other.kycStatus == kycStatus)&&(identical(other.profilePicture, profilePicture) || other.profilePicture == profilePicture)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,referralCode,totalReferrals,lastLogin,kycStatus,profilePicture,address,city,state,country);

@override
String toString() {
  return 'UserProfileModel(referralCode: $referralCode, totalReferrals: $totalReferrals, lastLogin: $lastLogin, kycStatus: $kycStatus, profilePicture: $profilePicture, address: $address, city: $city, state: $state, country: $country)';
}


}

/// @nodoc
abstract mixin class $UserProfileModelCopyWith<$Res>  {
  factory $UserProfileModelCopyWith(UserProfileModel value, $Res Function(UserProfileModel) _then) = _$UserProfileModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'referral_code') String referralCode,@JsonKey(name: 'total_referrals') int totalReferrals,@JsonKey(name: 'last_login') String? lastLogin,@JsonKey(name: 'kyc_status') String? kycStatus,@JsonKey(name: 'profile_picture') String? profilePicture, String? address, String? city, String? state, String? country
});




}
/// @nodoc
class _$UserProfileModelCopyWithImpl<$Res>
    implements $UserProfileModelCopyWith<$Res> {
  _$UserProfileModelCopyWithImpl(this._self, this._then);

  final UserProfileModel _self;
  final $Res Function(UserProfileModel) _then;

/// Create a copy of UserProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? referralCode = null,Object? totalReferrals = null,Object? lastLogin = freezed,Object? kycStatus = freezed,Object? profilePicture = freezed,Object? address = freezed,Object? city = freezed,Object? state = freezed,Object? country = freezed,}) {
  return _then(_self.copyWith(
referralCode: null == referralCode ? _self.referralCode : referralCode // ignore: cast_nullable_to_non_nullable
as String,totalReferrals: null == totalReferrals ? _self.totalReferrals : totalReferrals // ignore: cast_nullable_to_non_nullable
as int,lastLogin: freezed == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as String?,kycStatus: freezed == kycStatus ? _self.kycStatus : kycStatus // ignore: cast_nullable_to_non_nullable
as String?,profilePicture: freezed == profilePicture ? _self.profilePicture : profilePicture // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'referral_code')  String referralCode, @JsonKey(name: 'total_referrals')  int totalReferrals, @JsonKey(name: 'last_login')  String? lastLogin, @JsonKey(name: 'kyc_status')  String? kycStatus, @JsonKey(name: 'profile_picture')  String? profilePicture,  String? address,  String? city,  String? state,  String? country)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfileModel() when $default != null:
return $default(_that.referralCode,_that.totalReferrals,_that.lastLogin,_that.kycStatus,_that.profilePicture,_that.address,_that.city,_that.state,_that.country);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'referral_code')  String referralCode, @JsonKey(name: 'total_referrals')  int totalReferrals, @JsonKey(name: 'last_login')  String? lastLogin, @JsonKey(name: 'kyc_status')  String? kycStatus, @JsonKey(name: 'profile_picture')  String? profilePicture,  String? address,  String? city,  String? state,  String? country)  $default,) {final _that = this;
switch (_that) {
case _UserProfileModel():
return $default(_that.referralCode,_that.totalReferrals,_that.lastLogin,_that.kycStatus,_that.profilePicture,_that.address,_that.city,_that.state,_that.country);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'referral_code')  String referralCode, @JsonKey(name: 'total_referrals')  int totalReferrals, @JsonKey(name: 'last_login')  String? lastLogin, @JsonKey(name: 'kyc_status')  String? kycStatus, @JsonKey(name: 'profile_picture')  String? profilePicture,  String? address,  String? city,  String? state,  String? country)?  $default,) {final _that = this;
switch (_that) {
case _UserProfileModel() when $default != null:
return $default(_that.referralCode,_that.totalReferrals,_that.lastLogin,_that.kycStatus,_that.profilePicture,_that.address,_that.city,_that.state,_that.country);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserProfileModel implements UserProfileModel {
  const _UserProfileModel({@JsonKey(name: 'referral_code') required this.referralCode, @JsonKey(name: 'total_referrals') required this.totalReferrals, @JsonKey(name: 'last_login') this.lastLogin, @JsonKey(name: 'kyc_status') this.kycStatus, @JsonKey(name: 'profile_picture') this.profilePicture, this.address, this.city, this.state, this.country});
  factory _UserProfileModel.fromJson(Map<String, dynamic> json) => _$UserProfileModelFromJson(json);

@override@JsonKey(name: 'referral_code') final  String referralCode;
@override@JsonKey(name: 'total_referrals') final  int totalReferrals;
@override@JsonKey(name: 'last_login') final  String? lastLogin;
@override@JsonKey(name: 'kyc_status') final  String? kycStatus;
@override@JsonKey(name: 'profile_picture') final  String? profilePicture;
@override final  String? address;
@override final  String? city;
@override final  String? state;
@override final  String? country;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfileModel&&(identical(other.referralCode, referralCode) || other.referralCode == referralCode)&&(identical(other.totalReferrals, totalReferrals) || other.totalReferrals == totalReferrals)&&(identical(other.lastLogin, lastLogin) || other.lastLogin == lastLogin)&&(identical(other.kycStatus, kycStatus) || other.kycStatus == kycStatus)&&(identical(other.profilePicture, profilePicture) || other.profilePicture == profilePicture)&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,referralCode,totalReferrals,lastLogin,kycStatus,profilePicture,address,city,state,country);

@override
String toString() {
  return 'UserProfileModel(referralCode: $referralCode, totalReferrals: $totalReferrals, lastLogin: $lastLogin, kycStatus: $kycStatus, profilePicture: $profilePicture, address: $address, city: $city, state: $state, country: $country)';
}


}

/// @nodoc
abstract mixin class _$UserProfileModelCopyWith<$Res> implements $UserProfileModelCopyWith<$Res> {
  factory _$UserProfileModelCopyWith(_UserProfileModel value, $Res Function(_UserProfileModel) _then) = __$UserProfileModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'referral_code') String referralCode,@JsonKey(name: 'total_referrals') int totalReferrals,@JsonKey(name: 'last_login') String? lastLogin,@JsonKey(name: 'kyc_status') String? kycStatus,@JsonKey(name: 'profile_picture') String? profilePicture, String? address, String? city, String? state, String? country
});




}
/// @nodoc
class __$UserProfileModelCopyWithImpl<$Res>
    implements _$UserProfileModelCopyWith<$Res> {
  __$UserProfileModelCopyWithImpl(this._self, this._then);

  final _UserProfileModel _self;
  final $Res Function(_UserProfileModel) _then;

/// Create a copy of UserProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? referralCode = null,Object? totalReferrals = null,Object? lastLogin = freezed,Object? kycStatus = freezed,Object? profilePicture = freezed,Object? address = freezed,Object? city = freezed,Object? state = freezed,Object? country = freezed,}) {
  return _then(_UserProfileModel(
referralCode: null == referralCode ? _self.referralCode : referralCode // ignore: cast_nullable_to_non_nullable
as String,totalReferrals: null == totalReferrals ? _self.totalReferrals : totalReferrals // ignore: cast_nullable_to_non_nullable
as int,lastLogin: freezed == lastLogin ? _self.lastLogin : lastLogin // ignore: cast_nullable_to_non_nullable
as String?,kycStatus: freezed == kycStatus ? _self.kycStatus : kycStatus // ignore: cast_nullable_to_non_nullable
as String?,profilePicture: freezed == profilePicture ? _self.profilePicture : profilePicture // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
