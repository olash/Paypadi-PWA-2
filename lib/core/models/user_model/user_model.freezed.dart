// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {

 String get id; String get role;@JsonKey(name: 'phone_number') String get phoneNumber;@JsonKey(name: 'first_name') String get firstName;@JsonKey(name: 'last_name') String get lastName;@JsonKey(name: 'is_active') bool get isActive;@JsonKey(name: 'verified_phone') bool get phoneVerified;@JsonKey(name: 'date_joined') String get dateJoined; String? get email;@JsonKey(name: 'is_driver') bool? get isDriver;@JsonKey(name: 'driver_id') String? get driverId;@JsonKey(name: 'is_approved') bool? get isApproved;@JsonKey(name: 'license_plate') String? get licensePlate;@JsonKey(name: 'vehicle_model') String? get vehicleModel;@JsonKey(name: 'driver_license_number') String? get driverLicenseNumber;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.role, role) || other.role == role)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.phoneVerified, phoneVerified) || other.phoneVerified == phoneVerified)&&(identical(other.dateJoined, dateJoined) || other.dateJoined == dateJoined)&&(identical(other.email, email) || other.email == email)&&(identical(other.isDriver, isDriver) || other.isDriver == isDriver)&&(identical(other.driverId, driverId) || other.driverId == driverId)&&(identical(other.isApproved, isApproved) || other.isApproved == isApproved)&&(identical(other.licensePlate, licensePlate) || other.licensePlate == licensePlate)&&(identical(other.vehicleModel, vehicleModel) || other.vehicleModel == vehicleModel)&&(identical(other.driverLicenseNumber, driverLicenseNumber) || other.driverLicenseNumber == driverLicenseNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,role,phoneNumber,firstName,lastName,isActive,phoneVerified,dateJoined,email,isDriver,driverId,isApproved,licensePlate,vehicleModel,driverLicenseNumber);

@override
String toString() {
  return 'UserModel(id: $id, role: $role, phoneNumber: $phoneNumber, firstName: $firstName, lastName: $lastName, isActive: $isActive, phoneVerified: $phoneVerified, dateJoined: $dateJoined, email: $email, isDriver: $isDriver, driverId: $driverId, isApproved: $isApproved, licensePlate: $licensePlate, vehicleModel: $vehicleModel, driverLicenseNumber: $driverLicenseNumber)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
 String id, String role,@JsonKey(name: 'phone_number') String phoneNumber,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'verified_phone') bool phoneVerified,@JsonKey(name: 'date_joined') String dateJoined, String? email,@JsonKey(name: 'is_driver') bool? isDriver,@JsonKey(name: 'driver_id') String? driverId,@JsonKey(name: 'is_approved') bool? isApproved,@JsonKey(name: 'license_plate') String? licensePlate,@JsonKey(name: 'vehicle_model') String? vehicleModel,@JsonKey(name: 'driver_license_number') String? driverLicenseNumber
});




}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? role = null,Object? phoneNumber = null,Object? firstName = null,Object? lastName = null,Object? isActive = null,Object? phoneVerified = null,Object? dateJoined = null,Object? email = freezed,Object? isDriver = freezed,Object? driverId = freezed,Object? isApproved = freezed,Object? licensePlate = freezed,Object? vehicleModel = freezed,Object? driverLicenseNumber = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,phoneVerified: null == phoneVerified ? _self.phoneVerified : phoneVerified // ignore: cast_nullable_to_non_nullable
as bool,dateJoined: null == dateJoined ? _self.dateJoined : dateJoined // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,isDriver: freezed == isDriver ? _self.isDriver : isDriver // ignore: cast_nullable_to_non_nullable
as bool?,driverId: freezed == driverId ? _self.driverId : driverId // ignore: cast_nullable_to_non_nullable
as String?,isApproved: freezed == isApproved ? _self.isApproved : isApproved // ignore: cast_nullable_to_non_nullable
as bool?,licensePlate: freezed == licensePlate ? _self.licensePlate : licensePlate // ignore: cast_nullable_to_non_nullable
as String?,vehicleModel: freezed == vehicleModel ? _self.vehicleModel : vehicleModel // ignore: cast_nullable_to_non_nullable
as String?,driverLicenseNumber: freezed == driverLicenseNumber ? _self.driverLicenseNumber : driverLicenseNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String role, @JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'verified_phone')  bool phoneVerified, @JsonKey(name: 'date_joined')  String dateJoined,  String? email, @JsonKey(name: 'is_driver')  bool? isDriver, @JsonKey(name: 'driver_id')  String? driverId, @JsonKey(name: 'is_approved')  bool? isApproved, @JsonKey(name: 'license_plate')  String? licensePlate, @JsonKey(name: 'vehicle_model')  String? vehicleModel, @JsonKey(name: 'driver_license_number')  String? driverLicenseNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.role,_that.phoneNumber,_that.firstName,_that.lastName,_that.isActive,_that.phoneVerified,_that.dateJoined,_that.email,_that.isDriver,_that.driverId,_that.isApproved,_that.licensePlate,_that.vehicleModel,_that.driverLicenseNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String role, @JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'verified_phone')  bool phoneVerified, @JsonKey(name: 'date_joined')  String dateJoined,  String? email, @JsonKey(name: 'is_driver')  bool? isDriver, @JsonKey(name: 'driver_id')  String? driverId, @JsonKey(name: 'is_approved')  bool? isApproved, @JsonKey(name: 'license_plate')  String? licensePlate, @JsonKey(name: 'vehicle_model')  String? vehicleModel, @JsonKey(name: 'driver_license_number')  String? driverLicenseNumber)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.id,_that.role,_that.phoneNumber,_that.firstName,_that.lastName,_that.isActive,_that.phoneVerified,_that.dateJoined,_that.email,_that.isDriver,_that.driverId,_that.isApproved,_that.licensePlate,_that.vehicleModel,_that.driverLicenseNumber);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String role, @JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'verified_phone')  bool phoneVerified, @JsonKey(name: 'date_joined')  String dateJoined,  String? email, @JsonKey(name: 'is_driver')  bool? isDriver, @JsonKey(name: 'driver_id')  String? driverId, @JsonKey(name: 'is_approved')  bool? isApproved, @JsonKey(name: 'license_plate')  String? licensePlate, @JsonKey(name: 'vehicle_model')  String? vehicleModel, @JsonKey(name: 'driver_license_number')  String? driverLicenseNumber)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.role,_that.phoneNumber,_that.firstName,_that.lastName,_that.isActive,_that.phoneVerified,_that.dateJoined,_that.email,_that.isDriver,_that.driverId,_that.isApproved,_that.licensePlate,_that.vehicleModel,_that.driverLicenseNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel implements UserModel {
  const _UserModel({required this.id, required this.role, @JsonKey(name: 'phone_number') required this.phoneNumber, @JsonKey(name: 'first_name') required this.firstName, @JsonKey(name: 'last_name') required this.lastName, @JsonKey(name: 'is_active') required this.isActive, @JsonKey(name: 'verified_phone') required this.phoneVerified, @JsonKey(name: 'date_joined') required this.dateJoined, this.email, @JsonKey(name: 'is_driver') this.isDriver, @JsonKey(name: 'driver_id') this.driverId, @JsonKey(name: 'is_approved') this.isApproved, @JsonKey(name: 'license_plate') this.licensePlate, @JsonKey(name: 'vehicle_model') this.vehicleModel, @JsonKey(name: 'driver_license_number') this.driverLicenseNumber});
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override final  String id;
@override final  String role;
@override@JsonKey(name: 'phone_number') final  String phoneNumber;
@override@JsonKey(name: 'first_name') final  String firstName;
@override@JsonKey(name: 'last_name') final  String lastName;
@override@JsonKey(name: 'is_active') final  bool isActive;
@override@JsonKey(name: 'verified_phone') final  bool phoneVerified;
@override@JsonKey(name: 'date_joined') final  String dateJoined;
@override final  String? email;
@override@JsonKey(name: 'is_driver') final  bool? isDriver;
@override@JsonKey(name: 'driver_id') final  String? driverId;
@override@JsonKey(name: 'is_approved') final  bool? isApproved;
@override@JsonKey(name: 'license_plate') final  String? licensePlate;
@override@JsonKey(name: 'vehicle_model') final  String? vehicleModel;
@override@JsonKey(name: 'driver_license_number') final  String? driverLicenseNumber;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.role, role) || other.role == role)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.phoneVerified, phoneVerified) || other.phoneVerified == phoneVerified)&&(identical(other.dateJoined, dateJoined) || other.dateJoined == dateJoined)&&(identical(other.email, email) || other.email == email)&&(identical(other.isDriver, isDriver) || other.isDriver == isDriver)&&(identical(other.driverId, driverId) || other.driverId == driverId)&&(identical(other.isApproved, isApproved) || other.isApproved == isApproved)&&(identical(other.licensePlate, licensePlate) || other.licensePlate == licensePlate)&&(identical(other.vehicleModel, vehicleModel) || other.vehicleModel == vehicleModel)&&(identical(other.driverLicenseNumber, driverLicenseNumber) || other.driverLicenseNumber == driverLicenseNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,role,phoneNumber,firstName,lastName,isActive,phoneVerified,dateJoined,email,isDriver,driverId,isApproved,licensePlate,vehicleModel,driverLicenseNumber);

@override
String toString() {
  return 'UserModel(id: $id, role: $role, phoneNumber: $phoneNumber, firstName: $firstName, lastName: $lastName, isActive: $isActive, phoneVerified: $phoneVerified, dateJoined: $dateJoined, email: $email, isDriver: $isDriver, driverId: $driverId, isApproved: $isApproved, licensePlate: $licensePlate, vehicleModel: $vehicleModel, driverLicenseNumber: $driverLicenseNumber)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String role,@JsonKey(name: 'phone_number') String phoneNumber,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'verified_phone') bool phoneVerified,@JsonKey(name: 'date_joined') String dateJoined, String? email,@JsonKey(name: 'is_driver') bool? isDriver,@JsonKey(name: 'driver_id') String? driverId,@JsonKey(name: 'is_approved') bool? isApproved,@JsonKey(name: 'license_plate') String? licensePlate,@JsonKey(name: 'vehicle_model') String? vehicleModel,@JsonKey(name: 'driver_license_number') String? driverLicenseNumber
});




}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? role = null,Object? phoneNumber = null,Object? firstName = null,Object? lastName = null,Object? isActive = null,Object? phoneVerified = null,Object? dateJoined = null,Object? email = freezed,Object? isDriver = freezed,Object? driverId = freezed,Object? isApproved = freezed,Object? licensePlate = freezed,Object? vehicleModel = freezed,Object? driverLicenseNumber = freezed,}) {
  return _then(_UserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,phoneVerified: null == phoneVerified ? _self.phoneVerified : phoneVerified // ignore: cast_nullable_to_non_nullable
as bool,dateJoined: null == dateJoined ? _self.dateJoined : dateJoined // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,isDriver: freezed == isDriver ? _self.isDriver : isDriver // ignore: cast_nullable_to_non_nullable
as bool?,driverId: freezed == driverId ? _self.driverId : driverId // ignore: cast_nullable_to_non_nullable
as String?,isApproved: freezed == isApproved ? _self.isApproved : isApproved // ignore: cast_nullable_to_non_nullable
as bool?,licensePlate: freezed == licensePlate ? _self.licensePlate : licensePlate // ignore: cast_nullable_to_non_nullable
as String?,vehicleModel: freezed == vehicleModel ? _self.vehicleModel : vehicleModel // ignore: cast_nullable_to_non_nullable
as String?,driverLicenseNumber: freezed == driverLicenseNumber ? _self.driverLicenseNumber : driverLicenseNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
