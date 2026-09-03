// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DriverProfileModel {

@JsonKey(name: 'license_plate') String? get licensePlate;@JsonKey(name: 'vehicle_model') String? get vehicleModel;@JsonKey(name: 'driver_license_number') String? get driverLicenseNumber;@JsonKey(name: 'is_approved') bool? get isApproved;@JsonKey(name: 'kyc_status') String? get kycStatus;@JsonKey(name: 'profile_picture') String? get profilePicture;
/// Create a copy of DriverProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DriverProfileModelCopyWith<DriverProfileModel> get copyWith => _$DriverProfileModelCopyWithImpl<DriverProfileModel>(this as DriverProfileModel, _$identity);

  /// Serializes this DriverProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DriverProfileModel&&(identical(other.licensePlate, licensePlate) || other.licensePlate == licensePlate)&&(identical(other.vehicleModel, vehicleModel) || other.vehicleModel == vehicleModel)&&(identical(other.driverLicenseNumber, driverLicenseNumber) || other.driverLicenseNumber == driverLicenseNumber)&&(identical(other.isApproved, isApproved) || other.isApproved == isApproved)&&(identical(other.kycStatus, kycStatus) || other.kycStatus == kycStatus)&&(identical(other.profilePicture, profilePicture) || other.profilePicture == profilePicture));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,licensePlate,vehicleModel,driverLicenseNumber,isApproved,kycStatus,profilePicture);

@override
String toString() {
  return 'DriverProfileModel(licensePlate: $licensePlate, vehicleModel: $vehicleModel, driverLicenseNumber: $driverLicenseNumber, isApproved: $isApproved, kycStatus: $kycStatus, profilePicture: $profilePicture)';
}


}

/// @nodoc
abstract mixin class $DriverProfileModelCopyWith<$Res>  {
  factory $DriverProfileModelCopyWith(DriverProfileModel value, $Res Function(DriverProfileModel) _then) = _$DriverProfileModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'license_plate') String? licensePlate,@JsonKey(name: 'vehicle_model') String? vehicleModel,@JsonKey(name: 'driver_license_number') String? driverLicenseNumber,@JsonKey(name: 'is_approved') bool? isApproved,@JsonKey(name: 'kyc_status') String? kycStatus,@JsonKey(name: 'profile_picture') String? profilePicture
});




}
/// @nodoc
class _$DriverProfileModelCopyWithImpl<$Res>
    implements $DriverProfileModelCopyWith<$Res> {
  _$DriverProfileModelCopyWithImpl(this._self, this._then);

  final DriverProfileModel _self;
  final $Res Function(DriverProfileModel) _then;

/// Create a copy of DriverProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? licensePlate = freezed,Object? vehicleModel = freezed,Object? driverLicenseNumber = freezed,Object? isApproved = freezed,Object? kycStatus = freezed,Object? profilePicture = freezed,}) {
  return _then(_self.copyWith(
licensePlate: freezed == licensePlate ? _self.licensePlate : licensePlate // ignore: cast_nullable_to_non_nullable
as String?,vehicleModel: freezed == vehicleModel ? _self.vehicleModel : vehicleModel // ignore: cast_nullable_to_non_nullable
as String?,driverLicenseNumber: freezed == driverLicenseNumber ? _self.driverLicenseNumber : driverLicenseNumber // ignore: cast_nullable_to_non_nullable
as String?,isApproved: freezed == isApproved ? _self.isApproved : isApproved // ignore: cast_nullable_to_non_nullable
as bool?,kycStatus: freezed == kycStatus ? _self.kycStatus : kycStatus // ignore: cast_nullable_to_non_nullable
as String?,profilePicture: freezed == profilePicture ? _self.profilePicture : profilePicture // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DriverProfileModel].
extension DriverProfileModelPatterns on DriverProfileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DriverProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DriverProfileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DriverProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _DriverProfileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DriverProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _DriverProfileModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'license_plate')  String? licensePlate, @JsonKey(name: 'vehicle_model')  String? vehicleModel, @JsonKey(name: 'driver_license_number')  String? driverLicenseNumber, @JsonKey(name: 'is_approved')  bool? isApproved, @JsonKey(name: 'kyc_status')  String? kycStatus, @JsonKey(name: 'profile_picture')  String? profilePicture)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DriverProfileModel() when $default != null:
return $default(_that.licensePlate,_that.vehicleModel,_that.driverLicenseNumber,_that.isApproved,_that.kycStatus,_that.profilePicture);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'license_plate')  String? licensePlate, @JsonKey(name: 'vehicle_model')  String? vehicleModel, @JsonKey(name: 'driver_license_number')  String? driverLicenseNumber, @JsonKey(name: 'is_approved')  bool? isApproved, @JsonKey(name: 'kyc_status')  String? kycStatus, @JsonKey(name: 'profile_picture')  String? profilePicture)  $default,) {final _that = this;
switch (_that) {
case _DriverProfileModel():
return $default(_that.licensePlate,_that.vehicleModel,_that.driverLicenseNumber,_that.isApproved,_that.kycStatus,_that.profilePicture);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'license_plate')  String? licensePlate, @JsonKey(name: 'vehicle_model')  String? vehicleModel, @JsonKey(name: 'driver_license_number')  String? driverLicenseNumber, @JsonKey(name: 'is_approved')  bool? isApproved, @JsonKey(name: 'kyc_status')  String? kycStatus, @JsonKey(name: 'profile_picture')  String? profilePicture)?  $default,) {final _that = this;
switch (_that) {
case _DriverProfileModel() when $default != null:
return $default(_that.licensePlate,_that.vehicleModel,_that.driverLicenseNumber,_that.isApproved,_that.kycStatus,_that.profilePicture);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DriverProfileModel implements DriverProfileModel {
  const _DriverProfileModel({@JsonKey(name: 'license_plate') this.licensePlate, @JsonKey(name: 'vehicle_model') this.vehicleModel, @JsonKey(name: 'driver_license_number') this.driverLicenseNumber, @JsonKey(name: 'is_approved') this.isApproved, @JsonKey(name: 'kyc_status') this.kycStatus, @JsonKey(name: 'profile_picture') this.profilePicture});
  factory _DriverProfileModel.fromJson(Map<String, dynamic> json) => _$DriverProfileModelFromJson(json);

@override@JsonKey(name: 'license_plate') final  String? licensePlate;
@override@JsonKey(name: 'vehicle_model') final  String? vehicleModel;
@override@JsonKey(name: 'driver_license_number') final  String? driverLicenseNumber;
@override@JsonKey(name: 'is_approved') final  bool? isApproved;
@override@JsonKey(name: 'kyc_status') final  String? kycStatus;
@override@JsonKey(name: 'profile_picture') final  String? profilePicture;

/// Create a copy of DriverProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DriverProfileModelCopyWith<_DriverProfileModel> get copyWith => __$DriverProfileModelCopyWithImpl<_DriverProfileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DriverProfileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriverProfileModel&&(identical(other.licensePlate, licensePlate) || other.licensePlate == licensePlate)&&(identical(other.vehicleModel, vehicleModel) || other.vehicleModel == vehicleModel)&&(identical(other.driverLicenseNumber, driverLicenseNumber) || other.driverLicenseNumber == driverLicenseNumber)&&(identical(other.isApproved, isApproved) || other.isApproved == isApproved)&&(identical(other.kycStatus, kycStatus) || other.kycStatus == kycStatus)&&(identical(other.profilePicture, profilePicture) || other.profilePicture == profilePicture));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,licensePlate,vehicleModel,driverLicenseNumber,isApproved,kycStatus,profilePicture);

@override
String toString() {
  return 'DriverProfileModel(licensePlate: $licensePlate, vehicleModel: $vehicleModel, driverLicenseNumber: $driverLicenseNumber, isApproved: $isApproved, kycStatus: $kycStatus, profilePicture: $profilePicture)';
}


}

/// @nodoc
abstract mixin class _$DriverProfileModelCopyWith<$Res> implements $DriverProfileModelCopyWith<$Res> {
  factory _$DriverProfileModelCopyWith(_DriverProfileModel value, $Res Function(_DriverProfileModel) _then) = __$DriverProfileModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'license_plate') String? licensePlate,@JsonKey(name: 'vehicle_model') String? vehicleModel,@JsonKey(name: 'driver_license_number') String? driverLicenseNumber,@JsonKey(name: 'is_approved') bool? isApproved,@JsonKey(name: 'kyc_status') String? kycStatus,@JsonKey(name: 'profile_picture') String? profilePicture
});




}
/// @nodoc
class __$DriverProfileModelCopyWithImpl<$Res>
    implements _$DriverProfileModelCopyWith<$Res> {
  __$DriverProfileModelCopyWithImpl(this._self, this._then);

  final _DriverProfileModel _self;
  final $Res Function(_DriverProfileModel) _then;

/// Create a copy of DriverProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? licensePlate = freezed,Object? vehicleModel = freezed,Object? driverLicenseNumber = freezed,Object? isApproved = freezed,Object? kycStatus = freezed,Object? profilePicture = freezed,}) {
  return _then(_DriverProfileModel(
licensePlate: freezed == licensePlate ? _self.licensePlate : licensePlate // ignore: cast_nullable_to_non_nullable
as String?,vehicleModel: freezed == vehicleModel ? _self.vehicleModel : vehicleModel // ignore: cast_nullable_to_non_nullable
as String?,driverLicenseNumber: freezed == driverLicenseNumber ? _self.driverLicenseNumber : driverLicenseNumber // ignore: cast_nullable_to_non_nullable
as String?,isApproved: freezed == isApproved ? _self.isApproved : isApproved // ignore: cast_nullable_to_non_nullable
as bool?,kycStatus: freezed == kycStatus ? _self.kycStatus : kycStatus // ignore: cast_nullable_to_non_nullable
as String?,profilePicture: freezed == profilePicture ? _self.profilePicture : profilePicture // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
