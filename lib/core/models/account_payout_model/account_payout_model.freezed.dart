// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_payout_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccountPayoutModel {

 int get id;@JsonKey(name: 'account_type') String get accountType;@JsonKey(name: 'account_name') String get accountName;@JsonKey(name: 'account_number') String get accountNumber;@JsonKey(name: 'bank_name') String get bankName;@JsonKey(name: 'bank_code') String get bankCode;@JsonKey(name: 'is_primary') bool get isPrimary;@JsonKey(name: 'is_verified') bool get isVerified;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'updated_at') String get updatedAt;
/// Create a copy of AccountPayoutModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountPayoutModelCopyWith<AccountPayoutModel> get copyWith => _$AccountPayoutModelCopyWithImpl<AccountPayoutModel>(this as AccountPayoutModel, _$identity);

  /// Serializes this AccountPayoutModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountPayoutModel&&(identical(other.id, id) || other.id == id)&&(identical(other.accountType, accountType) || other.accountType == accountType)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.bankCode, bankCode) || other.bankCode == bankCode)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,accountType,accountName,accountNumber,bankName,bankCode,isPrimary,isVerified,createdAt,updatedAt);

@override
String toString() {
  return 'AccountPayoutModel(id: $id, accountType: $accountType, accountName: $accountName, accountNumber: $accountNumber, bankName: $bankName, bankCode: $bankCode, isPrimary: $isPrimary, isVerified: $isVerified, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $AccountPayoutModelCopyWith<$Res>  {
  factory $AccountPayoutModelCopyWith(AccountPayoutModel value, $Res Function(AccountPayoutModel) _then) = _$AccountPayoutModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'account_type') String accountType,@JsonKey(name: 'account_name') String accountName,@JsonKey(name: 'account_number') String accountNumber,@JsonKey(name: 'bank_name') String bankName,@JsonKey(name: 'bank_code') String bankCode,@JsonKey(name: 'is_primary') bool isPrimary,@JsonKey(name: 'is_verified') bool isVerified,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class _$AccountPayoutModelCopyWithImpl<$Res>
    implements $AccountPayoutModelCopyWith<$Res> {
  _$AccountPayoutModelCopyWithImpl(this._self, this._then);

  final AccountPayoutModel _self;
  final $Res Function(AccountPayoutModel) _then;

/// Create a copy of AccountPayoutModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? accountType = null,Object? accountName = null,Object? accountNumber = null,Object? bankName = null,Object? bankCode = null,Object? isPrimary = null,Object? isVerified = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,accountType: null == accountType ? _self.accountType : accountType // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,bankCode: null == bankCode ? _self.bankCode : bankCode // ignore: cast_nullable_to_non_nullable
as String,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AccountPayoutModel].
extension AccountPayoutModelPatterns on AccountPayoutModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountPayoutModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountPayoutModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountPayoutModel value)  $default,){
final _that = this;
switch (_that) {
case _AccountPayoutModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountPayoutModel value)?  $default,){
final _that = this;
switch (_that) {
case _AccountPayoutModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'account_type')  String accountType, @JsonKey(name: 'account_name')  String accountName, @JsonKey(name: 'account_number')  String accountNumber, @JsonKey(name: 'bank_name')  String bankName, @JsonKey(name: 'bank_code')  String bankCode, @JsonKey(name: 'is_primary')  bool isPrimary, @JsonKey(name: 'is_verified')  bool isVerified, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountPayoutModel() when $default != null:
return $default(_that.id,_that.accountType,_that.accountName,_that.accountNumber,_that.bankName,_that.bankCode,_that.isPrimary,_that.isVerified,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'account_type')  String accountType, @JsonKey(name: 'account_name')  String accountName, @JsonKey(name: 'account_number')  String accountNumber, @JsonKey(name: 'bank_name')  String bankName, @JsonKey(name: 'bank_code')  String bankCode, @JsonKey(name: 'is_primary')  bool isPrimary, @JsonKey(name: 'is_verified')  bool isVerified, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _AccountPayoutModel():
return $default(_that.id,_that.accountType,_that.accountName,_that.accountNumber,_that.bankName,_that.bankCode,_that.isPrimary,_that.isVerified,_that.createdAt,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'account_type')  String accountType, @JsonKey(name: 'account_name')  String accountName, @JsonKey(name: 'account_number')  String accountNumber, @JsonKey(name: 'bank_name')  String bankName, @JsonKey(name: 'bank_code')  String bankCode, @JsonKey(name: 'is_primary')  bool isPrimary, @JsonKey(name: 'is_verified')  bool isVerified, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _AccountPayoutModel() when $default != null:
return $default(_that.id,_that.accountType,_that.accountName,_that.accountNumber,_that.bankName,_that.bankCode,_that.isPrimary,_that.isVerified,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccountPayoutModel implements AccountPayoutModel {
  const _AccountPayoutModel({required this.id, @JsonKey(name: 'account_type') required this.accountType, @JsonKey(name: 'account_name') required this.accountName, @JsonKey(name: 'account_number') required this.accountNumber, @JsonKey(name: 'bank_name') required this.bankName, @JsonKey(name: 'bank_code') required this.bankCode, @JsonKey(name: 'is_primary') required this.isPrimary, @JsonKey(name: 'is_verified') required this.isVerified, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt});
  factory _AccountPayoutModel.fromJson(Map<String, dynamic> json) => _$AccountPayoutModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'account_type') final  String accountType;
@override@JsonKey(name: 'account_name') final  String accountName;
@override@JsonKey(name: 'account_number') final  String accountNumber;
@override@JsonKey(name: 'bank_name') final  String bankName;
@override@JsonKey(name: 'bank_code') final  String bankCode;
@override@JsonKey(name: 'is_primary') final  bool isPrimary;
@override@JsonKey(name: 'is_verified') final  bool isVerified;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String updatedAt;

/// Create a copy of AccountPayoutModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountPayoutModelCopyWith<_AccountPayoutModel> get copyWith => __$AccountPayoutModelCopyWithImpl<_AccountPayoutModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountPayoutModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountPayoutModel&&(identical(other.id, id) || other.id == id)&&(identical(other.accountType, accountType) || other.accountType == accountType)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.bankCode, bankCode) || other.bankCode == bankCode)&&(identical(other.isPrimary, isPrimary) || other.isPrimary == isPrimary)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,accountType,accountName,accountNumber,bankName,bankCode,isPrimary,isVerified,createdAt,updatedAt);

@override
String toString() {
  return 'AccountPayoutModel(id: $id, accountType: $accountType, accountName: $accountName, accountNumber: $accountNumber, bankName: $bankName, bankCode: $bankCode, isPrimary: $isPrimary, isVerified: $isVerified, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$AccountPayoutModelCopyWith<$Res> implements $AccountPayoutModelCopyWith<$Res> {
  factory _$AccountPayoutModelCopyWith(_AccountPayoutModel value, $Res Function(_AccountPayoutModel) _then) = __$AccountPayoutModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'account_type') String accountType,@JsonKey(name: 'account_name') String accountName,@JsonKey(name: 'account_number') String accountNumber,@JsonKey(name: 'bank_name') String bankName,@JsonKey(name: 'bank_code') String bankCode,@JsonKey(name: 'is_primary') bool isPrimary,@JsonKey(name: 'is_verified') bool isVerified,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});




}
/// @nodoc
class __$AccountPayoutModelCopyWithImpl<$Res>
    implements _$AccountPayoutModelCopyWith<$Res> {
  __$AccountPayoutModelCopyWithImpl(this._self, this._then);

  final _AccountPayoutModel _self;
  final $Res Function(_AccountPayoutModel) _then;

/// Create a copy of AccountPayoutModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? accountType = null,Object? accountName = null,Object? accountNumber = null,Object? bankName = null,Object? bankCode = null,Object? isPrimary = null,Object? isVerified = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_AccountPayoutModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,accountType: null == accountType ? _self.accountType : accountType // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,bankCode: null == bankCode ? _self.bankCode : bankCode // ignore: cast_nullable_to_non_nullable
as String,isPrimary: null == isPrimary ? _self.isPrimary : isPrimary // ignore: cast_nullable_to_non_nullable
as bool,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
