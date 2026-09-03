// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beneficiary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BeneficiaryModel {

 int get id;@JsonKey(name: 'account_number') String get accountNumber;@JsonKey(name: 'account_name') String get accountName;@JsonKey(name: 'bank_name') String get bankName;@JsonKey(name: 'bank_code') String get bankCode;@JsonKey(name: 'is_paypadi_account') bool get isPaypadiAccount;@JsonKey(name: 'created_at') String get createdAt;
/// Create a copy of BeneficiaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BeneficiaryModelCopyWith<BeneficiaryModel> get copyWith => _$BeneficiaryModelCopyWithImpl<BeneficiaryModel>(this as BeneficiaryModel, _$identity);

  /// Serializes this BeneficiaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BeneficiaryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.bankCode, bankCode) || other.bankCode == bankCode)&&(identical(other.isPaypadiAccount, isPaypadiAccount) || other.isPaypadiAccount == isPaypadiAccount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,accountNumber,accountName,bankName,bankCode,isPaypadiAccount,createdAt);

@override
String toString() {
  return 'BeneficiaryModel(id: $id, accountNumber: $accountNumber, accountName: $accountName, bankName: $bankName, bankCode: $bankCode, isPaypadiAccount: $isPaypadiAccount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $BeneficiaryModelCopyWith<$Res>  {
  factory $BeneficiaryModelCopyWith(BeneficiaryModel value, $Res Function(BeneficiaryModel) _then) = _$BeneficiaryModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'account_number') String accountNumber,@JsonKey(name: 'account_name') String accountName,@JsonKey(name: 'bank_name') String bankName,@JsonKey(name: 'bank_code') String bankCode,@JsonKey(name: 'is_paypadi_account') bool isPaypadiAccount,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class _$BeneficiaryModelCopyWithImpl<$Res>
    implements $BeneficiaryModelCopyWith<$Res> {
  _$BeneficiaryModelCopyWithImpl(this._self, this._then);

  final BeneficiaryModel _self;
  final $Res Function(BeneficiaryModel) _then;

/// Create a copy of BeneficiaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? accountNumber = null,Object? accountName = null,Object? bankName = null,Object? bankCode = null,Object? isPaypadiAccount = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,bankCode: null == bankCode ? _self.bankCode : bankCode // ignore: cast_nullable_to_non_nullable
as String,isPaypadiAccount: null == isPaypadiAccount ? _self.isPaypadiAccount : isPaypadiAccount // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BeneficiaryModel].
extension BeneficiaryModelPatterns on BeneficiaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BeneficiaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BeneficiaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BeneficiaryModel value)  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BeneficiaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _BeneficiaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'account_number')  String accountNumber, @JsonKey(name: 'account_name')  String accountName, @JsonKey(name: 'bank_name')  String bankName, @JsonKey(name: 'bank_code')  String bankCode, @JsonKey(name: 'is_paypadi_account')  bool isPaypadiAccount, @JsonKey(name: 'created_at')  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BeneficiaryModel() when $default != null:
return $default(_that.id,_that.accountNumber,_that.accountName,_that.bankName,_that.bankCode,_that.isPaypadiAccount,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'account_number')  String accountNumber, @JsonKey(name: 'account_name')  String accountName, @JsonKey(name: 'bank_name')  String bankName, @JsonKey(name: 'bank_code')  String bankCode, @JsonKey(name: 'is_paypadi_account')  bool isPaypadiAccount, @JsonKey(name: 'created_at')  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryModel():
return $default(_that.id,_that.accountNumber,_that.accountName,_that.bankName,_that.bankCode,_that.isPaypadiAccount,_that.createdAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'account_number')  String accountNumber, @JsonKey(name: 'account_name')  String accountName, @JsonKey(name: 'bank_name')  String bankName, @JsonKey(name: 'bank_code')  String bankCode, @JsonKey(name: 'is_paypadi_account')  bool isPaypadiAccount, @JsonKey(name: 'created_at')  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryModel() when $default != null:
return $default(_that.id,_that.accountNumber,_that.accountName,_that.bankName,_that.bankCode,_that.isPaypadiAccount,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BeneficiaryModel implements BeneficiaryModel {
  const _BeneficiaryModel({required this.id, @JsonKey(name: 'account_number') required this.accountNumber, @JsonKey(name: 'account_name') required this.accountName, @JsonKey(name: 'bank_name') required this.bankName, @JsonKey(name: 'bank_code') required this.bankCode, @JsonKey(name: 'is_paypadi_account') required this.isPaypadiAccount, @JsonKey(name: 'created_at') required this.createdAt});
  factory _BeneficiaryModel.fromJson(Map<String, dynamic> json) => _$BeneficiaryModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'account_number') final  String accountNumber;
@override@JsonKey(name: 'account_name') final  String accountName;
@override@JsonKey(name: 'bank_name') final  String bankName;
@override@JsonKey(name: 'bank_code') final  String bankCode;
@override@JsonKey(name: 'is_paypadi_account') final  bool isPaypadiAccount;
@override@JsonKey(name: 'created_at') final  String createdAt;

/// Create a copy of BeneficiaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BeneficiaryModelCopyWith<_BeneficiaryModel> get copyWith => __$BeneficiaryModelCopyWithImpl<_BeneficiaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BeneficiaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.bankCode, bankCode) || other.bankCode == bankCode)&&(identical(other.isPaypadiAccount, isPaypadiAccount) || other.isPaypadiAccount == isPaypadiAccount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,accountNumber,accountName,bankName,bankCode,isPaypadiAccount,createdAt);

@override
String toString() {
  return 'BeneficiaryModel(id: $id, accountNumber: $accountNumber, accountName: $accountName, bankName: $bankName, bankCode: $bankCode, isPaypadiAccount: $isPaypadiAccount, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryModelCopyWith<$Res> implements $BeneficiaryModelCopyWith<$Res> {
  factory _$BeneficiaryModelCopyWith(_BeneficiaryModel value, $Res Function(_BeneficiaryModel) _then) = __$BeneficiaryModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'account_number') String accountNumber,@JsonKey(name: 'account_name') String accountName,@JsonKey(name: 'bank_name') String bankName,@JsonKey(name: 'bank_code') String bankCode,@JsonKey(name: 'is_paypadi_account') bool isPaypadiAccount,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class __$BeneficiaryModelCopyWithImpl<$Res>
    implements _$BeneficiaryModelCopyWith<$Res> {
  __$BeneficiaryModelCopyWithImpl(this._self, this._then);

  final _BeneficiaryModel _self;
  final $Res Function(_BeneficiaryModel) _then;

/// Create a copy of BeneficiaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? accountNumber = null,Object? accountName = null,Object? bankName = null,Object? bankCode = null,Object? isPaypadiAccount = null,Object? createdAt = null,}) {
  return _then(_BeneficiaryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,bankCode: null == bankCode ? _self.bankCode : bankCode // ignore: cast_nullable_to_non_nullable
as String,isPaypadiAccount: null == isPaypadiAccount ? _self.isPaypadiAccount : isPaypadiAccount // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
