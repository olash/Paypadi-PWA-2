// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_lookup_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccountLookupModel {

 String get role;@JsonKey(name: 'first_name') String get firstName;@JsonKey(name: 'last_name') String get lastName;@JsonKey(name: 'phone_number') String get phoneNumber;@JsonKey(name: 'account_number') String get accountNumber;@JsonKey(name: 'bank_code') String? get bankCode;@JsonKey(name: 'profile_picture') String? get profilePicUrl;
/// Create a copy of AccountLookupModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountLookupModelCopyWith<AccountLookupModel> get copyWith => _$AccountLookupModelCopyWithImpl<AccountLookupModel>(this as AccountLookupModel, _$identity);

  /// Serializes this AccountLookupModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountLookupModel&&(identical(other.role, role) || other.role == role)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.bankCode, bankCode) || other.bankCode == bankCode)&&(identical(other.profilePicUrl, profilePicUrl) || other.profilePicUrl == profilePicUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,firstName,lastName,phoneNumber,accountNumber,bankCode,profilePicUrl);

@override
String toString() {
  return 'AccountLookupModel(role: $role, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, accountNumber: $accountNumber, bankCode: $bankCode, profilePicUrl: $profilePicUrl)';
}


}

/// @nodoc
abstract mixin class $AccountLookupModelCopyWith<$Res>  {
  factory $AccountLookupModelCopyWith(AccountLookupModel value, $Res Function(AccountLookupModel) _then) = _$AccountLookupModelCopyWithImpl;
@useResult
$Res call({
 String role,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName,@JsonKey(name: 'phone_number') String phoneNumber,@JsonKey(name: 'account_number') String accountNumber,@JsonKey(name: 'bank_code') String? bankCode,@JsonKey(name: 'profile_picture') String? profilePicUrl
});




}
/// @nodoc
class _$AccountLookupModelCopyWithImpl<$Res>
    implements $AccountLookupModelCopyWith<$Res> {
  _$AccountLookupModelCopyWithImpl(this._self, this._then);

  final AccountLookupModel _self;
  final $Res Function(AccountLookupModel) _then;

/// Create a copy of AccountLookupModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? role = null,Object? firstName = null,Object? lastName = null,Object? phoneNumber = null,Object? accountNumber = null,Object? bankCode = freezed,Object? profilePicUrl = freezed,}) {
  return _then(_self.copyWith(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,bankCode: freezed == bankCode ? _self.bankCode : bankCode // ignore: cast_nullable_to_non_nullable
as String?,profilePicUrl: freezed == profilePicUrl ? _self.profilePicUrl : profilePicUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AccountLookupModel].
extension AccountLookupModelPatterns on AccountLookupModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountLookupModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountLookupModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountLookupModel value)  $default,){
final _that = this;
switch (_that) {
case _AccountLookupModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountLookupModel value)?  $default,){
final _that = this;
switch (_that) {
case _AccountLookupModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String role, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(name: 'account_number')  String accountNumber, @JsonKey(name: 'bank_code')  String? bankCode, @JsonKey(name: 'profile_picture')  String? profilePicUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountLookupModel() when $default != null:
return $default(_that.role,_that.firstName,_that.lastName,_that.phoneNumber,_that.accountNumber,_that.bankCode,_that.profilePicUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String role, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(name: 'account_number')  String accountNumber, @JsonKey(name: 'bank_code')  String? bankCode, @JsonKey(name: 'profile_picture')  String? profilePicUrl)  $default,) {final _that = this;
switch (_that) {
case _AccountLookupModel():
return $default(_that.role,_that.firstName,_that.lastName,_that.phoneNumber,_that.accountNumber,_that.bankCode,_that.profilePicUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String role, @JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName, @JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(name: 'account_number')  String accountNumber, @JsonKey(name: 'bank_code')  String? bankCode, @JsonKey(name: 'profile_picture')  String? profilePicUrl)?  $default,) {final _that = this;
switch (_that) {
case _AccountLookupModel() when $default != null:
return $default(_that.role,_that.firstName,_that.lastName,_that.phoneNumber,_that.accountNumber,_that.bankCode,_that.profilePicUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccountLookupModel implements AccountLookupModel {
  const _AccountLookupModel({required this.role, @JsonKey(name: 'first_name') required this.firstName, @JsonKey(name: 'last_name') required this.lastName, @JsonKey(name: 'phone_number') required this.phoneNumber, @JsonKey(name: 'account_number') required this.accountNumber, @JsonKey(name: 'bank_code') this.bankCode, @JsonKey(name: 'profile_picture') this.profilePicUrl});
  factory _AccountLookupModel.fromJson(Map<String, dynamic> json) => _$AccountLookupModelFromJson(json);

@override final  String role;
@override@JsonKey(name: 'first_name') final  String firstName;
@override@JsonKey(name: 'last_name') final  String lastName;
@override@JsonKey(name: 'phone_number') final  String phoneNumber;
@override@JsonKey(name: 'account_number') final  String accountNumber;
@override@JsonKey(name: 'bank_code') final  String? bankCode;
@override@JsonKey(name: 'profile_picture') final  String? profilePicUrl;

/// Create a copy of AccountLookupModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountLookupModelCopyWith<_AccountLookupModel> get copyWith => __$AccountLookupModelCopyWithImpl<_AccountLookupModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountLookupModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountLookupModel&&(identical(other.role, role) || other.role == role)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.bankCode, bankCode) || other.bankCode == bankCode)&&(identical(other.profilePicUrl, profilePicUrl) || other.profilePicUrl == profilePicUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,firstName,lastName,phoneNumber,accountNumber,bankCode,profilePicUrl);

@override
String toString() {
  return 'AccountLookupModel(role: $role, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, accountNumber: $accountNumber, bankCode: $bankCode, profilePicUrl: $profilePicUrl)';
}


}

/// @nodoc
abstract mixin class _$AccountLookupModelCopyWith<$Res> implements $AccountLookupModelCopyWith<$Res> {
  factory _$AccountLookupModelCopyWith(_AccountLookupModel value, $Res Function(_AccountLookupModel) _then) = __$AccountLookupModelCopyWithImpl;
@override @useResult
$Res call({
 String role,@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName,@JsonKey(name: 'phone_number') String phoneNumber,@JsonKey(name: 'account_number') String accountNumber,@JsonKey(name: 'bank_code') String? bankCode,@JsonKey(name: 'profile_picture') String? profilePicUrl
});




}
/// @nodoc
class __$AccountLookupModelCopyWithImpl<$Res>
    implements _$AccountLookupModelCopyWith<$Res> {
  __$AccountLookupModelCopyWithImpl(this._self, this._then);

  final _AccountLookupModel _self;
  final $Res Function(_AccountLookupModel) _then;

/// Create a copy of AccountLookupModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? role = null,Object? firstName = null,Object? lastName = null,Object? phoneNumber = null,Object? accountNumber = null,Object? bankCode = freezed,Object? profilePicUrl = freezed,}) {
  return _then(_AccountLookupModel(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,bankCode: freezed == bankCode ? _self.bankCode : bankCode // ignore: cast_nullable_to_non_nullable
as String?,profilePicUrl: freezed == profilePicUrl ? _self.profilePicUrl : profilePicUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
