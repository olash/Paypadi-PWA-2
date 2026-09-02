// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bank_account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserBankAccountModel {

@JsonKey(name: 'account_number') String get number;@JsonKey(name: 'account_name') String get name;@JsonKey(name: 'bank_name') String get bankName;@JsonKey(name: 'bank_code') String get bankCode; bool? get assigned; bool? get verified; String? get currency;
/// Create a copy of UserBankAccountModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserBankAccountModelCopyWith<UserBankAccountModel> get copyWith => _$UserBankAccountModelCopyWithImpl<UserBankAccountModel>(this as UserBankAccountModel, _$identity);

  /// Serializes this UserBankAccountModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserBankAccountModel&&(identical(other.number, number) || other.number == number)&&(identical(other.name, name) || other.name == name)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.bankCode, bankCode) || other.bankCode == bankCode)&&(identical(other.assigned, assigned) || other.assigned == assigned)&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,name,bankName,bankCode,assigned,verified,currency);

@override
String toString() {
  return 'UserBankAccountModel(number: $number, name: $name, bankName: $bankName, bankCode: $bankCode, assigned: $assigned, verified: $verified, currency: $currency)';
}


}

/// @nodoc
abstract mixin class $UserBankAccountModelCopyWith<$Res>  {
  factory $UserBankAccountModelCopyWith(UserBankAccountModel value, $Res Function(UserBankAccountModel) _then) = _$UserBankAccountModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'account_number') String number,@JsonKey(name: 'account_name') String name,@JsonKey(name: 'bank_name') String bankName,@JsonKey(name: 'bank_code') String bankCode, bool? assigned, bool? verified, String? currency
});




}
/// @nodoc
class _$UserBankAccountModelCopyWithImpl<$Res>
    implements $UserBankAccountModelCopyWith<$Res> {
  _$UserBankAccountModelCopyWithImpl(this._self, this._then);

  final UserBankAccountModel _self;
  final $Res Function(UserBankAccountModel) _then;

/// Create a copy of UserBankAccountModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? number = null,Object? name = null,Object? bankName = null,Object? bankCode = null,Object? assigned = freezed,Object? verified = freezed,Object? currency = freezed,}) {
  return _then(_self.copyWith(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,bankCode: null == bankCode ? _self.bankCode : bankCode // ignore: cast_nullable_to_non_nullable
as String,assigned: freezed == assigned ? _self.assigned : assigned // ignore: cast_nullable_to_non_nullable
as bool?,verified: freezed == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserBankAccountModel].
extension UserBankAccountModelPatterns on UserBankAccountModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserBankAccountModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserBankAccountModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserBankAccountModel value)  $default,){
final _that = this;
switch (_that) {
case _UserBankAccountModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserBankAccountModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserBankAccountModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'account_number')  String number, @JsonKey(name: 'account_name')  String name, @JsonKey(name: 'bank_name')  String bankName, @JsonKey(name: 'bank_code')  String bankCode,  bool? assigned,  bool? verified,  String? currency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserBankAccountModel() when $default != null:
return $default(_that.number,_that.name,_that.bankName,_that.bankCode,_that.assigned,_that.verified,_that.currency);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'account_number')  String number, @JsonKey(name: 'account_name')  String name, @JsonKey(name: 'bank_name')  String bankName, @JsonKey(name: 'bank_code')  String bankCode,  bool? assigned,  bool? verified,  String? currency)  $default,) {final _that = this;
switch (_that) {
case _UserBankAccountModel():
return $default(_that.number,_that.name,_that.bankName,_that.bankCode,_that.assigned,_that.verified,_that.currency);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'account_number')  String number, @JsonKey(name: 'account_name')  String name, @JsonKey(name: 'bank_name')  String bankName, @JsonKey(name: 'bank_code')  String bankCode,  bool? assigned,  bool? verified,  String? currency)?  $default,) {final _that = this;
switch (_that) {
case _UserBankAccountModel() when $default != null:
return $default(_that.number,_that.name,_that.bankName,_that.bankCode,_that.assigned,_that.verified,_that.currency);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserBankAccountModel implements UserBankAccountModel {
  const _UserBankAccountModel({@JsonKey(name: 'account_number') required this.number, @JsonKey(name: 'account_name') required this.name, @JsonKey(name: 'bank_name') required this.bankName, @JsonKey(name: 'bank_code') required this.bankCode, this.assigned, this.verified, this.currency});
  factory _UserBankAccountModel.fromJson(Map<String, dynamic> json) => _$UserBankAccountModelFromJson(json);

@override@JsonKey(name: 'account_number') final  String number;
@override@JsonKey(name: 'account_name') final  String name;
@override@JsonKey(name: 'bank_name') final  String bankName;
@override@JsonKey(name: 'bank_code') final  String bankCode;
@override final  bool? assigned;
@override final  bool? verified;
@override final  String? currency;

/// Create a copy of UserBankAccountModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserBankAccountModelCopyWith<_UserBankAccountModel> get copyWith => __$UserBankAccountModelCopyWithImpl<_UserBankAccountModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserBankAccountModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserBankAccountModel&&(identical(other.number, number) || other.number == number)&&(identical(other.name, name) || other.name == name)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.bankCode, bankCode) || other.bankCode == bankCode)&&(identical(other.assigned, assigned) || other.assigned == assigned)&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,number,name,bankName,bankCode,assigned,verified,currency);

@override
String toString() {
  return 'UserBankAccountModel(number: $number, name: $name, bankName: $bankName, bankCode: $bankCode, assigned: $assigned, verified: $verified, currency: $currency)';
}


}

/// @nodoc
abstract mixin class _$UserBankAccountModelCopyWith<$Res> implements $UserBankAccountModelCopyWith<$Res> {
  factory _$UserBankAccountModelCopyWith(_UserBankAccountModel value, $Res Function(_UserBankAccountModel) _then) = __$UserBankAccountModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'account_number') String number,@JsonKey(name: 'account_name') String name,@JsonKey(name: 'bank_name') String bankName,@JsonKey(name: 'bank_code') String bankCode, bool? assigned, bool? verified, String? currency
});




}
/// @nodoc
class __$UserBankAccountModelCopyWithImpl<$Res>
    implements _$UserBankAccountModelCopyWith<$Res> {
  __$UserBankAccountModelCopyWithImpl(this._self, this._then);

  final _UserBankAccountModel _self;
  final $Res Function(_UserBankAccountModel) _then;

/// Create a copy of UserBankAccountModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? number = null,Object? name = null,Object? bankName = null,Object? bankCode = null,Object? assigned = freezed,Object? verified = freezed,Object? currency = freezed,}) {
  return _then(_UserBankAccountModel(
number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,bankCode: null == bankCode ? _self.bankCode : bankCode // ignore: cast_nullable_to_non_nullable
as String,assigned: freezed == assigned ? _self.assigned : assigned // ignore: cast_nullable_to_non_nullable
as bool?,verified: freezed == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
