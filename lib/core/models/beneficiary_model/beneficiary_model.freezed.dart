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

@JsonKey(name: 'beneficiary_type') String get type;@JsonKey(name: 'account_number') String get accountNumber;@JsonKey(name: 'account_name') String get accountName; String? get id;@JsonKey(name: 'bank_name') String? get bankName;@JsonKey(name: 'bank_code') String? get bankCode;@JsonKey(name: 'is_saved') bool? get isSaved;@JsonKey(name: 'is_verified') bool? get isVerified;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'last_transaction_at') String? get lastTransaction;
/// Create a copy of BeneficiaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BeneficiaryModelCopyWith<BeneficiaryModel> get copyWith => _$BeneficiaryModelCopyWithImpl<BeneficiaryModel>(this as BeneficiaryModel, _$identity);

  /// Serializes this BeneficiaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BeneficiaryModel&&(identical(other.type, type) || other.type == type)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.id, id) || other.id == id)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.bankCode, bankCode) || other.bankCode == bankCode)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.lastTransaction, lastTransaction) || other.lastTransaction == lastTransaction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,accountNumber,accountName,id,bankName,bankCode,isSaved,isVerified,createdAt,updatedAt,lastTransaction);

@override
String toString() {
  return 'BeneficiaryModel(type: $type, accountNumber: $accountNumber, accountName: $accountName, id: $id, bankName: $bankName, bankCode: $bankCode, isSaved: $isSaved, isVerified: $isVerified, createdAt: $createdAt, updatedAt: $updatedAt, lastTransaction: $lastTransaction)';
}


}

/// @nodoc
abstract mixin class $BeneficiaryModelCopyWith<$Res>  {
  factory $BeneficiaryModelCopyWith(BeneficiaryModel value, $Res Function(BeneficiaryModel) _then) = _$BeneficiaryModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'beneficiary_type') String type,@JsonKey(name: 'account_number') String accountNumber,@JsonKey(name: 'account_name') String accountName, String? id,@JsonKey(name: 'bank_name') String? bankName,@JsonKey(name: 'bank_code') String? bankCode,@JsonKey(name: 'is_saved') bool? isSaved,@JsonKey(name: 'is_verified') bool? isVerified,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'last_transaction_at') String? lastTransaction
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
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? accountNumber = null,Object? accountName = null,Object? id = freezed,Object? bankName = freezed,Object? bankCode = freezed,Object? isSaved = freezed,Object? isVerified = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? lastTransaction = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,bankCode: freezed == bankCode ? _self.bankCode : bankCode // ignore: cast_nullable_to_non_nullable
as String?,isSaved: freezed == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool?,isVerified: freezed == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,lastTransaction: freezed == lastTransaction ? _self.lastTransaction : lastTransaction // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'beneficiary_type')  String type, @JsonKey(name: 'account_number')  String accountNumber, @JsonKey(name: 'account_name')  String accountName,  String? id, @JsonKey(name: 'bank_name')  String? bankName, @JsonKey(name: 'bank_code')  String? bankCode, @JsonKey(name: 'is_saved')  bool? isSaved, @JsonKey(name: 'is_verified')  bool? isVerified, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'last_transaction_at')  String? lastTransaction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BeneficiaryModel() when $default != null:
return $default(_that.type,_that.accountNumber,_that.accountName,_that.id,_that.bankName,_that.bankCode,_that.isSaved,_that.isVerified,_that.createdAt,_that.updatedAt,_that.lastTransaction);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'beneficiary_type')  String type, @JsonKey(name: 'account_number')  String accountNumber, @JsonKey(name: 'account_name')  String accountName,  String? id, @JsonKey(name: 'bank_name')  String? bankName, @JsonKey(name: 'bank_code')  String? bankCode, @JsonKey(name: 'is_saved')  bool? isSaved, @JsonKey(name: 'is_verified')  bool? isVerified, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'last_transaction_at')  String? lastTransaction)  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryModel():
return $default(_that.type,_that.accountNumber,_that.accountName,_that.id,_that.bankName,_that.bankCode,_that.isSaved,_that.isVerified,_that.createdAt,_that.updatedAt,_that.lastTransaction);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'beneficiary_type')  String type, @JsonKey(name: 'account_number')  String accountNumber, @JsonKey(name: 'account_name')  String accountName,  String? id, @JsonKey(name: 'bank_name')  String? bankName, @JsonKey(name: 'bank_code')  String? bankCode, @JsonKey(name: 'is_saved')  bool? isSaved, @JsonKey(name: 'is_verified')  bool? isVerified, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'last_transaction_at')  String? lastTransaction)?  $default,) {final _that = this;
switch (_that) {
case _BeneficiaryModel() when $default != null:
return $default(_that.type,_that.accountNumber,_that.accountName,_that.id,_that.bankName,_that.bankCode,_that.isSaved,_that.isVerified,_that.createdAt,_that.updatedAt,_that.lastTransaction);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BeneficiaryModel implements BeneficiaryModel {
  const _BeneficiaryModel({@JsonKey(name: 'beneficiary_type') required this.type, @JsonKey(name: 'account_number') required this.accountNumber, @JsonKey(name: 'account_name') required this.accountName, this.id, @JsonKey(name: 'bank_name') this.bankName, @JsonKey(name: 'bank_code') this.bankCode, @JsonKey(name: 'is_saved') this.isSaved, @JsonKey(name: 'is_verified') this.isVerified, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'last_transaction_at') this.lastTransaction});
  factory _BeneficiaryModel.fromJson(Map<String, dynamic> json) => _$BeneficiaryModelFromJson(json);

@override@JsonKey(name: 'beneficiary_type') final  String type;
@override@JsonKey(name: 'account_number') final  String accountNumber;
@override@JsonKey(name: 'account_name') final  String accountName;
@override final  String? id;
@override@JsonKey(name: 'bank_name') final  String? bankName;
@override@JsonKey(name: 'bank_code') final  String? bankCode;
@override@JsonKey(name: 'is_saved') final  bool? isSaved;
@override@JsonKey(name: 'is_verified') final  bool? isVerified;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'last_transaction_at') final  String? lastTransaction;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BeneficiaryModel&&(identical(other.type, type) || other.type == type)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.accountName, accountName) || other.accountName == accountName)&&(identical(other.id, id) || other.id == id)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.bankCode, bankCode) || other.bankCode == bankCode)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.lastTransaction, lastTransaction) || other.lastTransaction == lastTransaction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,accountNumber,accountName,id,bankName,bankCode,isSaved,isVerified,createdAt,updatedAt,lastTransaction);

@override
String toString() {
  return 'BeneficiaryModel(type: $type, accountNumber: $accountNumber, accountName: $accountName, id: $id, bankName: $bankName, bankCode: $bankCode, isSaved: $isSaved, isVerified: $isVerified, createdAt: $createdAt, updatedAt: $updatedAt, lastTransaction: $lastTransaction)';
}


}

/// @nodoc
abstract mixin class _$BeneficiaryModelCopyWith<$Res> implements $BeneficiaryModelCopyWith<$Res> {
  factory _$BeneficiaryModelCopyWith(_BeneficiaryModel value, $Res Function(_BeneficiaryModel) _then) = __$BeneficiaryModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'beneficiary_type') String type,@JsonKey(name: 'account_number') String accountNumber,@JsonKey(name: 'account_name') String accountName, String? id,@JsonKey(name: 'bank_name') String? bankName,@JsonKey(name: 'bank_code') String? bankCode,@JsonKey(name: 'is_saved') bool? isSaved,@JsonKey(name: 'is_verified') bool? isVerified,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'last_transaction_at') String? lastTransaction
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
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? accountNumber = null,Object? accountName = null,Object? id = freezed,Object? bankName = freezed,Object? bankCode = freezed,Object? isSaved = freezed,Object? isVerified = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? lastTransaction = freezed,}) {
  return _then(_BeneficiaryModel(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,accountName: null == accountName ? _self.accountName : accountName // ignore: cast_nullable_to_non_nullable
as String,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,bankCode: freezed == bankCode ? _self.bankCode : bankCode // ignore: cast_nullable_to_non_nullable
as String?,isSaved: freezed == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool?,isVerified: freezed == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,lastTransaction: freezed == lastTransaction ? _self.lastTransaction : lastTransaction // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
