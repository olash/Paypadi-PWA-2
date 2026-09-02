// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentModel {

 String get amount;@JsonKey(name: 'transaction_reference') String get reference;@JsonKey(name: 'authorization_url') String get authorizationUrl;@JsonKey(name: 'transaction_id') String get transactionId;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'payment_type', unknownEnumValue: TransactionType.unknown) TransactionType get paymentType;
/// Create a copy of PaymentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentModelCopyWith<PaymentModel> get copyWith => _$PaymentModelCopyWithImpl<PaymentModel>(this as PaymentModel, _$identity);

  /// Serializes this PaymentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentModel&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.authorizationUrl, authorizationUrl) || other.authorizationUrl == authorizationUrl)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,reference,authorizationUrl,transactionId,createdAt,paymentType);

@override
String toString() {
  return 'PaymentModel(amount: $amount, reference: $reference, authorizationUrl: $authorizationUrl, transactionId: $transactionId, createdAt: $createdAt, paymentType: $paymentType)';
}


}

/// @nodoc
abstract mixin class $PaymentModelCopyWith<$Res>  {
  factory $PaymentModelCopyWith(PaymentModel value, $Res Function(PaymentModel) _then) = _$PaymentModelCopyWithImpl;
@useResult
$Res call({
 String amount,@JsonKey(name: 'transaction_reference') String reference,@JsonKey(name: 'authorization_url') String authorizationUrl,@JsonKey(name: 'transaction_id') String transactionId,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'payment_type', unknownEnumValue: TransactionType.unknown) TransactionType paymentType
});




}
/// @nodoc
class _$PaymentModelCopyWithImpl<$Res>
    implements $PaymentModelCopyWith<$Res> {
  _$PaymentModelCopyWithImpl(this._self, this._then);

  final PaymentModel _self;
  final $Res Function(PaymentModel) _then;

/// Create a copy of PaymentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? reference = null,Object? authorizationUrl = null,Object? transactionId = null,Object? createdAt = null,Object? paymentType = null,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,authorizationUrl: null == authorizationUrl ? _self.authorizationUrl : authorizationUrl // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,paymentType: null == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as TransactionType,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentModel].
extension PaymentModelPatterns on PaymentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentModel value)  $default,){
final _that = this;
switch (_that) {
case _PaymentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentModel value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String amount, @JsonKey(name: 'transaction_reference')  String reference, @JsonKey(name: 'authorization_url')  String authorizationUrl, @JsonKey(name: 'transaction_id')  String transactionId, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'payment_type', unknownEnumValue: TransactionType.unknown)  TransactionType paymentType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentModel() when $default != null:
return $default(_that.amount,_that.reference,_that.authorizationUrl,_that.transactionId,_that.createdAt,_that.paymentType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String amount, @JsonKey(name: 'transaction_reference')  String reference, @JsonKey(name: 'authorization_url')  String authorizationUrl, @JsonKey(name: 'transaction_id')  String transactionId, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'payment_type', unknownEnumValue: TransactionType.unknown)  TransactionType paymentType)  $default,) {final _that = this;
switch (_that) {
case _PaymentModel():
return $default(_that.amount,_that.reference,_that.authorizationUrl,_that.transactionId,_that.createdAt,_that.paymentType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String amount, @JsonKey(name: 'transaction_reference')  String reference, @JsonKey(name: 'authorization_url')  String authorizationUrl, @JsonKey(name: 'transaction_id')  String transactionId, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'payment_type', unknownEnumValue: TransactionType.unknown)  TransactionType paymentType)?  $default,) {final _that = this;
switch (_that) {
case _PaymentModel() when $default != null:
return $default(_that.amount,_that.reference,_that.authorizationUrl,_that.transactionId,_that.createdAt,_that.paymentType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentModel implements PaymentModel {
  const _PaymentModel({required this.amount, @JsonKey(name: 'transaction_reference') required this.reference, @JsonKey(name: 'authorization_url') required this.authorizationUrl, @JsonKey(name: 'transaction_id') required this.transactionId, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'payment_type', unknownEnumValue: TransactionType.unknown) required this.paymentType});
  factory _PaymentModel.fromJson(Map<String, dynamic> json) => _$PaymentModelFromJson(json);

@override final  String amount;
@override@JsonKey(name: 'transaction_reference') final  String reference;
@override@JsonKey(name: 'authorization_url') final  String authorizationUrl;
@override@JsonKey(name: 'transaction_id') final  String transactionId;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'payment_type', unknownEnumValue: TransactionType.unknown) final  TransactionType paymentType;

/// Create a copy of PaymentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentModelCopyWith<_PaymentModel> get copyWith => __$PaymentModelCopyWithImpl<_PaymentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentModel&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.authorizationUrl, authorizationUrl) || other.authorizationUrl == authorizationUrl)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,reference,authorizationUrl,transactionId,createdAt,paymentType);

@override
String toString() {
  return 'PaymentModel(amount: $amount, reference: $reference, authorizationUrl: $authorizationUrl, transactionId: $transactionId, createdAt: $createdAt, paymentType: $paymentType)';
}


}

/// @nodoc
abstract mixin class _$PaymentModelCopyWith<$Res> implements $PaymentModelCopyWith<$Res> {
  factory _$PaymentModelCopyWith(_PaymentModel value, $Res Function(_PaymentModel) _then) = __$PaymentModelCopyWithImpl;
@override @useResult
$Res call({
 String amount,@JsonKey(name: 'transaction_reference') String reference,@JsonKey(name: 'authorization_url') String authorizationUrl,@JsonKey(name: 'transaction_id') String transactionId,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'payment_type', unknownEnumValue: TransactionType.unknown) TransactionType paymentType
});




}
/// @nodoc
class __$PaymentModelCopyWithImpl<$Res>
    implements _$PaymentModelCopyWith<$Res> {
  __$PaymentModelCopyWithImpl(this._self, this._then);

  final _PaymentModel _self;
  final $Res Function(_PaymentModel) _then;

/// Create a copy of PaymentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? reference = null,Object? authorizationUrl = null,Object? transactionId = null,Object? createdAt = null,Object? paymentType = null,}) {
  return _then(_PaymentModel(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,authorizationUrl: null == authorizationUrl ? _self.authorizationUrl : authorizationUrl // ignore: cast_nullable_to_non_nullable
as String,transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,paymentType: null == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as TransactionType,
  ));
}


}

// dart format on
