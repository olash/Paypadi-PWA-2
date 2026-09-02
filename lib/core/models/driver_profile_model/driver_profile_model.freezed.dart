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

 int get id;@JsonKey(name: 'total_rides') int get totalRides;@JsonKey(name: 'is_approved') bool get isApproved;@JsonKey(name: 'is_available') bool get isAvailable;@JsonKey(name: 'submitted_for_approval') bool get documentsApproved;@JsonKey(name: 'vehicle_make') String get vehicleMake;@JsonKey(name: 'vehicle_model') String get vehicleModel;@JsonKey(name: 'vehicle_year') int get vehicleYear;@JsonKey(name: 'license_plate') String get licensePlate;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'updated_at') String get updatedAt;@JsonKey(name: 'driver_license_number') String? get licenseNumber;@JsonKey(name: 'driver_license_expiry') String? get licenseExpiryDate;@JsonKey(name: 'license_front') String? get licenseFrontPicUrl;@JsonKey(name: 'license_back') String? get licenseBackPicUrl;@JsonKey(name: 'vehicle_registration') String? get vehicleRegistrationPicUrl;@JsonKey(name: 'approved_at') String? get approvedAt;@JsonKey(name: 'rejection_reason') String? get reasonForRejection;
/// Create a copy of DriverProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DriverProfileModelCopyWith<DriverProfileModel> get copyWith => _$DriverProfileModelCopyWithImpl<DriverProfileModel>(this as DriverProfileModel, _$identity);

  /// Serializes this DriverProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DriverProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.totalRides, totalRides) || other.totalRides == totalRides)&&(identical(other.isApproved, isApproved) || other.isApproved == isApproved)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.documentsApproved, documentsApproved) || other.documentsApproved == documentsApproved)&&(identical(other.vehicleMake, vehicleMake) || other.vehicleMake == vehicleMake)&&(identical(other.vehicleModel, vehicleModel) || other.vehicleModel == vehicleModel)&&(identical(other.vehicleYear, vehicleYear) || other.vehicleYear == vehicleYear)&&(identical(other.licensePlate, licensePlate) || other.licensePlate == licensePlate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.licenseNumber, licenseNumber) || other.licenseNumber == licenseNumber)&&(identical(other.licenseExpiryDate, licenseExpiryDate) || other.licenseExpiryDate == licenseExpiryDate)&&(identical(other.licenseFrontPicUrl, licenseFrontPicUrl) || other.licenseFrontPicUrl == licenseFrontPicUrl)&&(identical(other.licenseBackPicUrl, licenseBackPicUrl) || other.licenseBackPicUrl == licenseBackPicUrl)&&(identical(other.vehicleRegistrationPicUrl, vehicleRegistrationPicUrl) || other.vehicleRegistrationPicUrl == vehicleRegistrationPicUrl)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt)&&(identical(other.reasonForRejection, reasonForRejection) || other.reasonForRejection == reasonForRejection));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,totalRides,isApproved,isAvailable,documentsApproved,vehicleMake,vehicleModel,vehicleYear,licensePlate,createdAt,updatedAt,licenseNumber,licenseExpiryDate,licenseFrontPicUrl,licenseBackPicUrl,vehicleRegistrationPicUrl,approvedAt,reasonForRejection);

@override
String toString() {
  return 'DriverProfileModel(id: $id, totalRides: $totalRides, isApproved: $isApproved, isAvailable: $isAvailable, documentsApproved: $documentsApproved, vehicleMake: $vehicleMake, vehicleModel: $vehicleModel, vehicleYear: $vehicleYear, licensePlate: $licensePlate, createdAt: $createdAt, updatedAt: $updatedAt, licenseNumber: $licenseNumber, licenseExpiryDate: $licenseExpiryDate, licenseFrontPicUrl: $licenseFrontPicUrl, licenseBackPicUrl: $licenseBackPicUrl, vehicleRegistrationPicUrl: $vehicleRegistrationPicUrl, approvedAt: $approvedAt, reasonForRejection: $reasonForRejection)';
}


}

/// @nodoc
abstract mixin class $DriverProfileModelCopyWith<$Res>  {
  factory $DriverProfileModelCopyWith(DriverProfileModel value, $Res Function(DriverProfileModel) _then) = _$DriverProfileModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'total_rides') int totalRides,@JsonKey(name: 'is_approved') bool isApproved,@JsonKey(name: 'is_available') bool isAvailable,@JsonKey(name: 'submitted_for_approval') bool documentsApproved,@JsonKey(name: 'vehicle_make') String vehicleMake,@JsonKey(name: 'vehicle_model') String vehicleModel,@JsonKey(name: 'vehicle_year') int vehicleYear,@JsonKey(name: 'license_plate') String licensePlate,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt,@JsonKey(name: 'driver_license_number') String? licenseNumber,@JsonKey(name: 'driver_license_expiry') String? licenseExpiryDate,@JsonKey(name: 'license_front') String? licenseFrontPicUrl,@JsonKey(name: 'license_back') String? licenseBackPicUrl,@JsonKey(name: 'vehicle_registration') String? vehicleRegistrationPicUrl,@JsonKey(name: 'approved_at') String? approvedAt,@JsonKey(name: 'rejection_reason') String? reasonForRejection
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? totalRides = null,Object? isApproved = null,Object? isAvailable = null,Object? documentsApproved = null,Object? vehicleMake = null,Object? vehicleModel = null,Object? vehicleYear = null,Object? licensePlate = null,Object? createdAt = null,Object? updatedAt = null,Object? licenseNumber = freezed,Object? licenseExpiryDate = freezed,Object? licenseFrontPicUrl = freezed,Object? licenseBackPicUrl = freezed,Object? vehicleRegistrationPicUrl = freezed,Object? approvedAt = freezed,Object? reasonForRejection = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,totalRides: null == totalRides ? _self.totalRides : totalRides // ignore: cast_nullable_to_non_nullable
as int,isApproved: null == isApproved ? _self.isApproved : isApproved // ignore: cast_nullable_to_non_nullable
as bool,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,documentsApproved: null == documentsApproved ? _self.documentsApproved : documentsApproved // ignore: cast_nullable_to_non_nullable
as bool,vehicleMake: null == vehicleMake ? _self.vehicleMake : vehicleMake // ignore: cast_nullable_to_non_nullable
as String,vehicleModel: null == vehicleModel ? _self.vehicleModel : vehicleModel // ignore: cast_nullable_to_non_nullable
as String,vehicleYear: null == vehicleYear ? _self.vehicleYear : vehicleYear // ignore: cast_nullable_to_non_nullable
as int,licensePlate: null == licensePlate ? _self.licensePlate : licensePlate // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,licenseNumber: freezed == licenseNumber ? _self.licenseNumber : licenseNumber // ignore: cast_nullable_to_non_nullable
as String?,licenseExpiryDate: freezed == licenseExpiryDate ? _self.licenseExpiryDate : licenseExpiryDate // ignore: cast_nullable_to_non_nullable
as String?,licenseFrontPicUrl: freezed == licenseFrontPicUrl ? _self.licenseFrontPicUrl : licenseFrontPicUrl // ignore: cast_nullable_to_non_nullable
as String?,licenseBackPicUrl: freezed == licenseBackPicUrl ? _self.licenseBackPicUrl : licenseBackPicUrl // ignore: cast_nullable_to_non_nullable
as String?,vehicleRegistrationPicUrl: freezed == vehicleRegistrationPicUrl ? _self.vehicleRegistrationPicUrl : vehicleRegistrationPicUrl // ignore: cast_nullable_to_non_nullable
as String?,approvedAt: freezed == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as String?,reasonForRejection: freezed == reasonForRejection ? _self.reasonForRejection : reasonForRejection // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'total_rides')  int totalRides, @JsonKey(name: 'is_approved')  bool isApproved, @JsonKey(name: 'is_available')  bool isAvailable, @JsonKey(name: 'submitted_for_approval')  bool documentsApproved, @JsonKey(name: 'vehicle_make')  String vehicleMake, @JsonKey(name: 'vehicle_model')  String vehicleModel, @JsonKey(name: 'vehicle_year')  int vehicleYear, @JsonKey(name: 'license_plate')  String licensePlate, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt, @JsonKey(name: 'driver_license_number')  String? licenseNumber, @JsonKey(name: 'driver_license_expiry')  String? licenseExpiryDate, @JsonKey(name: 'license_front')  String? licenseFrontPicUrl, @JsonKey(name: 'license_back')  String? licenseBackPicUrl, @JsonKey(name: 'vehicle_registration')  String? vehicleRegistrationPicUrl, @JsonKey(name: 'approved_at')  String? approvedAt, @JsonKey(name: 'rejection_reason')  String? reasonForRejection)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DriverProfileModel() when $default != null:
return $default(_that.id,_that.totalRides,_that.isApproved,_that.isAvailable,_that.documentsApproved,_that.vehicleMake,_that.vehicleModel,_that.vehicleYear,_that.licensePlate,_that.createdAt,_that.updatedAt,_that.licenseNumber,_that.licenseExpiryDate,_that.licenseFrontPicUrl,_that.licenseBackPicUrl,_that.vehicleRegistrationPicUrl,_that.approvedAt,_that.reasonForRejection);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'total_rides')  int totalRides, @JsonKey(name: 'is_approved')  bool isApproved, @JsonKey(name: 'is_available')  bool isAvailable, @JsonKey(name: 'submitted_for_approval')  bool documentsApproved, @JsonKey(name: 'vehicle_make')  String vehicleMake, @JsonKey(name: 'vehicle_model')  String vehicleModel, @JsonKey(name: 'vehicle_year')  int vehicleYear, @JsonKey(name: 'license_plate')  String licensePlate, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt, @JsonKey(name: 'driver_license_number')  String? licenseNumber, @JsonKey(name: 'driver_license_expiry')  String? licenseExpiryDate, @JsonKey(name: 'license_front')  String? licenseFrontPicUrl, @JsonKey(name: 'license_back')  String? licenseBackPicUrl, @JsonKey(name: 'vehicle_registration')  String? vehicleRegistrationPicUrl, @JsonKey(name: 'approved_at')  String? approvedAt, @JsonKey(name: 'rejection_reason')  String? reasonForRejection)  $default,) {final _that = this;
switch (_that) {
case _DriverProfileModel():
return $default(_that.id,_that.totalRides,_that.isApproved,_that.isAvailable,_that.documentsApproved,_that.vehicleMake,_that.vehicleModel,_that.vehicleYear,_that.licensePlate,_that.createdAt,_that.updatedAt,_that.licenseNumber,_that.licenseExpiryDate,_that.licenseFrontPicUrl,_that.licenseBackPicUrl,_that.vehicleRegistrationPicUrl,_that.approvedAt,_that.reasonForRejection);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'total_rides')  int totalRides, @JsonKey(name: 'is_approved')  bool isApproved, @JsonKey(name: 'is_available')  bool isAvailable, @JsonKey(name: 'submitted_for_approval')  bool documentsApproved, @JsonKey(name: 'vehicle_make')  String vehicleMake, @JsonKey(name: 'vehicle_model')  String vehicleModel, @JsonKey(name: 'vehicle_year')  int vehicleYear, @JsonKey(name: 'license_plate')  String licensePlate, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt, @JsonKey(name: 'driver_license_number')  String? licenseNumber, @JsonKey(name: 'driver_license_expiry')  String? licenseExpiryDate, @JsonKey(name: 'license_front')  String? licenseFrontPicUrl, @JsonKey(name: 'license_back')  String? licenseBackPicUrl, @JsonKey(name: 'vehicle_registration')  String? vehicleRegistrationPicUrl, @JsonKey(name: 'approved_at')  String? approvedAt, @JsonKey(name: 'rejection_reason')  String? reasonForRejection)?  $default,) {final _that = this;
switch (_that) {
case _DriverProfileModel() when $default != null:
return $default(_that.id,_that.totalRides,_that.isApproved,_that.isAvailable,_that.documentsApproved,_that.vehicleMake,_that.vehicleModel,_that.vehicleYear,_that.licensePlate,_that.createdAt,_that.updatedAt,_that.licenseNumber,_that.licenseExpiryDate,_that.licenseFrontPicUrl,_that.licenseBackPicUrl,_that.vehicleRegistrationPicUrl,_that.approvedAt,_that.reasonForRejection);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DriverProfileModel implements DriverProfileModel {
  const _DriverProfileModel({required this.id, @JsonKey(name: 'total_rides') required this.totalRides, @JsonKey(name: 'is_approved') required this.isApproved, @JsonKey(name: 'is_available') required this.isAvailable, @JsonKey(name: 'submitted_for_approval') required this.documentsApproved, @JsonKey(name: 'vehicle_make') required this.vehicleMake, @JsonKey(name: 'vehicle_model') required this.vehicleModel, @JsonKey(name: 'vehicle_year') required this.vehicleYear, @JsonKey(name: 'license_plate') required this.licensePlate, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt, @JsonKey(name: 'driver_license_number') this.licenseNumber, @JsonKey(name: 'driver_license_expiry') this.licenseExpiryDate, @JsonKey(name: 'license_front') this.licenseFrontPicUrl, @JsonKey(name: 'license_back') this.licenseBackPicUrl, @JsonKey(name: 'vehicle_registration') this.vehicleRegistrationPicUrl, @JsonKey(name: 'approved_at') this.approvedAt, @JsonKey(name: 'rejection_reason') this.reasonForRejection});
  factory _DriverProfileModel.fromJson(Map<String, dynamic> json) => _$DriverProfileModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'total_rides') final  int totalRides;
@override@JsonKey(name: 'is_approved') final  bool isApproved;
@override@JsonKey(name: 'is_available') final  bool isAvailable;
@override@JsonKey(name: 'submitted_for_approval') final  bool documentsApproved;
@override@JsonKey(name: 'vehicle_make') final  String vehicleMake;
@override@JsonKey(name: 'vehicle_model') final  String vehicleModel;
@override@JsonKey(name: 'vehicle_year') final  int vehicleYear;
@override@JsonKey(name: 'license_plate') final  String licensePlate;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String updatedAt;
@override@JsonKey(name: 'driver_license_number') final  String? licenseNumber;
@override@JsonKey(name: 'driver_license_expiry') final  String? licenseExpiryDate;
@override@JsonKey(name: 'license_front') final  String? licenseFrontPicUrl;
@override@JsonKey(name: 'license_back') final  String? licenseBackPicUrl;
@override@JsonKey(name: 'vehicle_registration') final  String? vehicleRegistrationPicUrl;
@override@JsonKey(name: 'approved_at') final  String? approvedAt;
@override@JsonKey(name: 'rejection_reason') final  String? reasonForRejection;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriverProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.totalRides, totalRides) || other.totalRides == totalRides)&&(identical(other.isApproved, isApproved) || other.isApproved == isApproved)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.documentsApproved, documentsApproved) || other.documentsApproved == documentsApproved)&&(identical(other.vehicleMake, vehicleMake) || other.vehicleMake == vehicleMake)&&(identical(other.vehicleModel, vehicleModel) || other.vehicleModel == vehicleModel)&&(identical(other.vehicleYear, vehicleYear) || other.vehicleYear == vehicleYear)&&(identical(other.licensePlate, licensePlate) || other.licensePlate == licensePlate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.licenseNumber, licenseNumber) || other.licenseNumber == licenseNumber)&&(identical(other.licenseExpiryDate, licenseExpiryDate) || other.licenseExpiryDate == licenseExpiryDate)&&(identical(other.licenseFrontPicUrl, licenseFrontPicUrl) || other.licenseFrontPicUrl == licenseFrontPicUrl)&&(identical(other.licenseBackPicUrl, licenseBackPicUrl) || other.licenseBackPicUrl == licenseBackPicUrl)&&(identical(other.vehicleRegistrationPicUrl, vehicleRegistrationPicUrl) || other.vehicleRegistrationPicUrl == vehicleRegistrationPicUrl)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt)&&(identical(other.reasonForRejection, reasonForRejection) || other.reasonForRejection == reasonForRejection));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,totalRides,isApproved,isAvailable,documentsApproved,vehicleMake,vehicleModel,vehicleYear,licensePlate,createdAt,updatedAt,licenseNumber,licenseExpiryDate,licenseFrontPicUrl,licenseBackPicUrl,vehicleRegistrationPicUrl,approvedAt,reasonForRejection);

@override
String toString() {
  return 'DriverProfileModel(id: $id, totalRides: $totalRides, isApproved: $isApproved, isAvailable: $isAvailable, documentsApproved: $documentsApproved, vehicleMake: $vehicleMake, vehicleModel: $vehicleModel, vehicleYear: $vehicleYear, licensePlate: $licensePlate, createdAt: $createdAt, updatedAt: $updatedAt, licenseNumber: $licenseNumber, licenseExpiryDate: $licenseExpiryDate, licenseFrontPicUrl: $licenseFrontPicUrl, licenseBackPicUrl: $licenseBackPicUrl, vehicleRegistrationPicUrl: $vehicleRegistrationPicUrl, approvedAt: $approvedAt, reasonForRejection: $reasonForRejection)';
}


}

/// @nodoc
abstract mixin class _$DriverProfileModelCopyWith<$Res> implements $DriverProfileModelCopyWith<$Res> {
  factory _$DriverProfileModelCopyWith(_DriverProfileModel value, $Res Function(_DriverProfileModel) _then) = __$DriverProfileModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'total_rides') int totalRides,@JsonKey(name: 'is_approved') bool isApproved,@JsonKey(name: 'is_available') bool isAvailable,@JsonKey(name: 'submitted_for_approval') bool documentsApproved,@JsonKey(name: 'vehicle_make') String vehicleMake,@JsonKey(name: 'vehicle_model') String vehicleModel,@JsonKey(name: 'vehicle_year') int vehicleYear,@JsonKey(name: 'license_plate') String licensePlate,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt,@JsonKey(name: 'driver_license_number') String? licenseNumber,@JsonKey(name: 'driver_license_expiry') String? licenseExpiryDate,@JsonKey(name: 'license_front') String? licenseFrontPicUrl,@JsonKey(name: 'license_back') String? licenseBackPicUrl,@JsonKey(name: 'vehicle_registration') String? vehicleRegistrationPicUrl,@JsonKey(name: 'approved_at') String? approvedAt,@JsonKey(name: 'rejection_reason') String? reasonForRejection
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? totalRides = null,Object? isApproved = null,Object? isAvailable = null,Object? documentsApproved = null,Object? vehicleMake = null,Object? vehicleModel = null,Object? vehicleYear = null,Object? licensePlate = null,Object? createdAt = null,Object? updatedAt = null,Object? licenseNumber = freezed,Object? licenseExpiryDate = freezed,Object? licenseFrontPicUrl = freezed,Object? licenseBackPicUrl = freezed,Object? vehicleRegistrationPicUrl = freezed,Object? approvedAt = freezed,Object? reasonForRejection = freezed,}) {
  return _then(_DriverProfileModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,totalRides: null == totalRides ? _self.totalRides : totalRides // ignore: cast_nullable_to_non_nullable
as int,isApproved: null == isApproved ? _self.isApproved : isApproved // ignore: cast_nullable_to_non_nullable
as bool,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,documentsApproved: null == documentsApproved ? _self.documentsApproved : documentsApproved // ignore: cast_nullable_to_non_nullable
as bool,vehicleMake: null == vehicleMake ? _self.vehicleMake : vehicleMake // ignore: cast_nullable_to_non_nullable
as String,vehicleModel: null == vehicleModel ? _self.vehicleModel : vehicleModel // ignore: cast_nullable_to_non_nullable
as String,vehicleYear: null == vehicleYear ? _self.vehicleYear : vehicleYear // ignore: cast_nullable_to_non_nullable
as int,licensePlate: null == licensePlate ? _self.licensePlate : licensePlate // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,licenseNumber: freezed == licenseNumber ? _self.licenseNumber : licenseNumber // ignore: cast_nullable_to_non_nullable
as String?,licenseExpiryDate: freezed == licenseExpiryDate ? _self.licenseExpiryDate : licenseExpiryDate // ignore: cast_nullable_to_non_nullable
as String?,licenseFrontPicUrl: freezed == licenseFrontPicUrl ? _self.licenseFrontPicUrl : licenseFrontPicUrl // ignore: cast_nullable_to_non_nullable
as String?,licenseBackPicUrl: freezed == licenseBackPicUrl ? _self.licenseBackPicUrl : licenseBackPicUrl // ignore: cast_nullable_to_non_nullable
as String?,vehicleRegistrationPicUrl: freezed == vehicleRegistrationPicUrl ? _self.vehicleRegistrationPicUrl : vehicleRegistrationPicUrl // ignore: cast_nullable_to_non_nullable
as String?,approvedAt: freezed == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as String?,reasonForRejection: freezed == reasonForRejection ? _self.reasonForRejection : reasonForRejection // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
