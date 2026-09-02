// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BankModel {

 String get name; String get code;@JsonKey(name: 'active') bool get isActive;
/// Create a copy of BankModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BankModelCopyWith<BankModel> get copyWith => _$BankModelCopyWithImpl<BankModel>(this as BankModel, _$identity);

  /// Serializes this BankModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BankModel&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,code,isActive);

@override
String toString() {
  return 'BankModel(name: $name, code: $code, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $BankModelCopyWith<$Res>  {
  factory $BankModelCopyWith(BankModel value, $Res Function(BankModel) _then) = _$BankModelCopyWithImpl;
@useResult
$Res call({
 String name, String code,@JsonKey(name: 'active') bool isActive
});




}
/// @nodoc
class _$BankModelCopyWithImpl<$Res>
    implements $BankModelCopyWith<$Res> {
  _$BankModelCopyWithImpl(this._self, this._then);

  final BankModel _self;
  final $Res Function(BankModel) _then;

/// Create a copy of BankModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? code = null,Object? isActive = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [BankModel].
extension BankModelPatterns on BankModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BankModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BankModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BankModel value)  $default,){
final _that = this;
switch (_that) {
case _BankModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BankModel value)?  $default,){
final _that = this;
switch (_that) {
case _BankModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String code, @JsonKey(name: 'active')  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BankModel() when $default != null:
return $default(_that.name,_that.code,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String code, @JsonKey(name: 'active')  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _BankModel():
return $default(_that.name,_that.code,_that.isActive);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String code, @JsonKey(name: 'active')  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _BankModel() when $default != null:
return $default(_that.name,_that.code,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BankModel implements BankModel {
  const _BankModel({required this.name, required this.code, @JsonKey(name: 'active') required this.isActive});
  factory _BankModel.fromJson(Map<String, dynamic> json) => _$BankModelFromJson(json);

@override final  String name;
@override final  String code;
@override@JsonKey(name: 'active') final  bool isActive;

/// Create a copy of BankModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BankModelCopyWith<_BankModel> get copyWith => __$BankModelCopyWithImpl<_BankModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BankModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BankModel&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,code,isActive);

@override
String toString() {
  return 'BankModel(name: $name, code: $code, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$BankModelCopyWith<$Res> implements $BankModelCopyWith<$Res> {
  factory _$BankModelCopyWith(_BankModel value, $Res Function(_BankModel) _then) = __$BankModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String code,@JsonKey(name: 'active') bool isActive
});




}
/// @nodoc
class __$BankModelCopyWithImpl<$Res>
    implements _$BankModelCopyWith<$Res> {
  __$BankModelCopyWithImpl(this._self, this._then);

  final _BankModel _self;
  final $Res Function(_BankModel) _then;

/// Create a copy of BankModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? code = null,Object? isActive = null,}) {
  return _then(_BankModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$VerifiedBankAccountModel {

@JsonKey(name: 'account_number') String get accountNumber;@JsonKey(name: 'account_name') String get accountName;@JsonKey(name: 'bank_id') int get bankId;
/// Create a copy of VerifiedBankAccountModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifiedBankAccountModelCopyWith<VerifiedBankAccountModel> get copyWith => _$VerifiedBankAccountModelCopyWithImpl<VerifiedBankAccountModel>(this as VerifiedBankAccountModel, _$identity);

  /// Serializes this VerifiedBankAccountModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifiedBankAccountModel&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.bankId, bankId) || other.bankId == bankId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accountNumber,accountName,bankId);

@override
String toString() {
  return 'VerifiedBankAccountModel(accountNumber: $accountNumber, accountName: $accountName, bankId: $bankId)';
}


}

/// @nodoc
abstract mixin class $VerifiedBankAccountModelCopyWith<$Res>  {
  factory $VerifiedBankAccountModelCopyWith(VerifiedBankAccountModel value, $Res Function(VerifiedBankAccountModel) _then) = _$VerifiedBankAccountModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'account_number') String accountNumber,@JsonKey(name: 'account_name') String accountName,@JsonKey(name: 'bank_id') int bankId
});




}
/// @nodoc
class _$VerifiedBankAccountModelCopyWithImpl<$Res>
    implements $VerifiedBankAccountModelCopyWith<$Res> {
  _$VerifiedBankAccountModelCopyWithImpl(this._self, this._then);

  final VerifiedBankAccountModel _self;
  final $Res Function(VerifiedBankAccountModel) _then;

/// Create a copy of VerifiedBankAccountModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accountNumber = null,Object? accountName = null,Object? bankId = null,}) {
  return _then(_self.copyWith(
accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,bankId: null == bankId ? _self.bankId : bankId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifiedBankAccountModel].
extension VerifiedBankAccountModelPatterns on VerifiedBankAccountModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifiedBankAccountModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifiedBankAccountModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifiedBankAccountModel value)  $default,){
final _that = this;
switch (_that) {
case _VerifiedBankAccountModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifiedBankAccountModel value)?  $default,){
final _that = this;
switch (_that) {
case _VerifiedBankAccountModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'account_number')  String accountNumber, @JsonKey(name: 'account_name')  String accountName, @JsonKey(name: 'bank_id')  int bankId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifiedBankAccountModel() when $default != null:
return $default(_that.accountNumber,_that.accountName,_that.bankId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'account_number')  String accountNumber, @JsonKey(name: 'account_name')  String accountName, @JsonKey(name: 'bank_id')  int bankId)  $default,) {final _that = this;
switch (_that) {
case _VerifiedBankAccountModel():
return $default(_that.accountNumber,_that.accountName,_that.bankId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'account_number')  String accountNumber, @JsonKey(name: 'account_name')  String accountName, @JsonKey(name: 'bank_id')  int bankId)?  $default,) {final _that = this;
switch (_that) {
case _VerifiedBankAccountModel() when $default != null:
return $default(_that.accountNumber,_that.accountName,_that.bankId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifiedBankAccountModel implements VerifiedBankAccountModel {
  const _VerifiedBankAccountModel({@JsonKey(name: 'account_number') required this.accountNumber, @JsonKey(name: 'account_name') required this.accountName, @JsonKey(name: 'bank_id') required this.bankId});
  factory _VerifiedBankAccountModel.fromJson(Map<String, dynamic> json) => _$VerifiedBankAccountModelFromJson(json);

@override@JsonKey(name: 'account_number') final  String accountNumber;
@override@JsonKey(name: 'account_name') final  String accountName;
@override@JsonKey(name: 'bank_id') final  int bankId;

/// Create a copy of VerifiedBankAccountModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifiedBankAccountModelCopyWith<_VerifiedBankAccountModel> get copyWith => __$VerifiedBankAccountModelCopyWithImpl<_VerifiedBankAccountModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifiedBankAccountModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifiedBankAccountModel&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.bankId, bankId) || other.bankId == bankId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accountNumber,accountName,bankId);

@override
String toString() {
  return 'VerifiedBankAccountModel(accountNumber: $accountNumber, accountName: $accountName, bankId: $bankId)';
}


}

/// @nodoc
abstract mixin class _$VerifiedBankAccountModelCopyWith<$Res> implements $VerifiedBankAccountModelCopyWith<$Res> {
  factory _$VerifiedBankAccountModelCopyWith(_VerifiedBankAccountModel value, $Res Function(_VerifiedBankAccountModel) _then) = __$VerifiedBankAccountModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'account_number') String accountNumber,@JsonKey(name: 'account_name') String accountName,@JsonKey(name: 'bank_id') int bankId
});




}
/// @nodoc
class __$VerifiedBankAccountModelCopyWithImpl<$Res>
    implements _$VerifiedBankAccountModelCopyWith<$Res> {
  __$VerifiedBankAccountModelCopyWithImpl(this._self, this._then);

  final _VerifiedBankAccountModel _self;
  final $Res Function(_VerifiedBankAccountModel) _then;

/// Create a copy of VerifiedBankAccountModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accountNumber = null,Object? accountName = null,Object? bankId = null,}) {
  return _then(_VerifiedBankAccountModel(
accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,bankId: null == bankId ? _self.bankId : bankId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
