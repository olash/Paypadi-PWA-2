// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TransactionModel {

 int get amount; String get reference; String get recipient;@JsonKey(name: 'recipient_name') String get recipientAccount;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'payment_type') String get paymentType;@JsonKey(name: 'transaction_type', unknownEnumValue: TransactionType.unknown) TransactionType get type;
/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionModelCopyWith<TransactionModel> get copyWith => _$TransactionModelCopyWithImpl<TransactionModel>(this as TransactionModel, _$identity);

  /// Serializes this TransactionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionModel&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.recipient, recipient) || other.recipient == recipient)&&(identical(other.recipientAccount, recipientAccount) || other.recipientAccount == recipientAccount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,reference,recipient,recipientAccount,createdAt,paymentType,type);

@override
String toString() {
  return 'TransactionModel(amount: $amount, reference: $reference, recipient: $recipient, recipientAccount: $recipientAccount, createdAt: $createdAt, paymentType: $paymentType, type: $type)';
}


}

/// @nodoc
abstract mixin class $TransactionModelCopyWith<$Res>  {
  factory $TransactionModelCopyWith(TransactionModel value, $Res Function(TransactionModel) _then) = _$TransactionModelCopyWithImpl;
@useResult
$Res call({
 int amount, String reference, String recipient,@JsonKey(name: 'recipient_name') String recipientAccount,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'payment_type') String paymentType,@JsonKey(name: 'transaction_type', unknownEnumValue: TransactionType.unknown) TransactionType type
});




}
/// @nodoc
class _$TransactionModelCopyWithImpl<$Res>
    implements $TransactionModelCopyWith<$Res> {
  _$TransactionModelCopyWithImpl(this._self, this._then);

  final TransactionModel _self;
  final $Res Function(TransactionModel) _then;

/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? reference = null,Object? recipient = null,Object? recipientAccount = null,Object? createdAt = null,Object? paymentType = null,Object? type = null,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,recipient: null == recipient ? _self.recipient : recipient // ignore: cast_nullable_to_non_nullable
as String,recipientAccount: null == recipientAccount ? _self.recipientAccount : recipientAccount // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,paymentType: null == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionModel].
extension TransactionModelPatterns on TransactionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionModel value)  $default,){
final _that = this;
switch (_that) {
case _TransactionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionModel value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int amount,  String reference,  String recipient, @JsonKey(name: 'recipient_name')  String recipientAccount, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'payment_type')  String paymentType, @JsonKey(name: 'transaction_type', unknownEnumValue: TransactionType.unknown)  TransactionType type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
return $default(_that.amount,_that.reference,_that.recipient,_that.recipientAccount,_that.createdAt,_that.paymentType,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int amount,  String reference,  String recipient, @JsonKey(name: 'recipient_name')  String recipientAccount, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'payment_type')  String paymentType, @JsonKey(name: 'transaction_type', unknownEnumValue: TransactionType.unknown)  TransactionType type)  $default,) {final _that = this;
switch (_that) {
case _TransactionModel():
return $default(_that.amount,_that.reference,_that.recipient,_that.recipientAccount,_that.createdAt,_that.paymentType,_that.type);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int amount,  String reference,  String recipient, @JsonKey(name: 'recipient_name')  String recipientAccount, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'payment_type')  String paymentType, @JsonKey(name: 'transaction_type', unknownEnumValue: TransactionType.unknown)  TransactionType type)?  $default,) {final _that = this;
switch (_that) {
case _TransactionModel() when $default != null:
return $default(_that.amount,_that.reference,_that.recipient,_that.recipientAccount,_that.createdAt,_that.paymentType,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionModel implements TransactionModel {
  const _TransactionModel({required this.amount, required this.reference, required this.recipient, @JsonKey(name: 'recipient_name') required this.recipientAccount, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'payment_type') required this.paymentType, @JsonKey(name: 'transaction_type', unknownEnumValue: TransactionType.unknown) required this.type});
  factory _TransactionModel.fromJson(Map<String, dynamic> json) => _$TransactionModelFromJson(json);

@override final  int amount;
@override final  String reference;
@override final  String recipient;
@override@JsonKey(name: 'recipient_name') final  String recipientAccount;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'payment_type') final  String paymentType;
@override@JsonKey(name: 'transaction_type', unknownEnumValue: TransactionType.unknown) final  TransactionType type;

/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionModelCopyWith<_TransactionModel> get copyWith => __$TransactionModelCopyWithImpl<_TransactionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionModel&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.recipient, recipient) || other.recipient == recipient)&&(identical(other.recipientAccount, recipientAccount) || other.recipientAccount == recipientAccount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,reference,recipient,recipientAccount,createdAt,paymentType,type);

@override
String toString() {
  return 'TransactionModel(amount: $amount, reference: $reference, recipient: $recipient, recipientAccount: $recipientAccount, createdAt: $createdAt, paymentType: $paymentType, type: $type)';
}


}

/// @nodoc
abstract mixin class _$TransactionModelCopyWith<$Res> implements $TransactionModelCopyWith<$Res> {
  factory _$TransactionModelCopyWith(_TransactionModel value, $Res Function(_TransactionModel) _then) = __$TransactionModelCopyWithImpl;
@override @useResult
$Res call({
 int amount, String reference, String recipient,@JsonKey(name: 'recipient_name') String recipientAccount,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'payment_type') String paymentType,@JsonKey(name: 'transaction_type', unknownEnumValue: TransactionType.unknown) TransactionType type
});




}
/// @nodoc
class __$TransactionModelCopyWithImpl<$Res>
    implements _$TransactionModelCopyWith<$Res> {
  __$TransactionModelCopyWithImpl(this._self, this._then);

  final _TransactionModel _self;
  final $Res Function(_TransactionModel) _then;

/// Create a copy of TransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? reference = null,Object? recipient = null,Object? recipientAccount = null,Object? createdAt = null,Object? paymentType = null,Object? type = null,}) {
  return _then(_TransactionModel(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,recipient: null == recipient ? _self.recipient : recipient // ignore: cast_nullable_to_non_nullable
as String,recipientAccount: null == recipientAccount ? _self.recipientAccount : recipientAccount // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,paymentType: null == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,
  ));
}


}


/// @nodoc
mixin _$TransactionHistoryModel {

 String get id; String get amount; String get reference; String get description; TransactionHistoryMetadata get metadata;@JsonKey(unknownEnumValue: TransactionStatus.failure) TransactionStatus get status;@JsonKey(name: 'transaction_type', unknownEnumValue: TransactionType.unknown) TransactionType get type;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'sender_name') String get senderName;@JsonKey(name: 'recipient_name') String get recipientName;@JsonKey(name: 'fee_amount') String get transactionFee;
/// Create a copy of TransactionHistoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionHistoryModelCopyWith<TransactionHistoryModel> get copyWith => _$TransactionHistoryModelCopyWithImpl<TransactionHistoryModel>(this as TransactionHistoryModel, _$identity);

  /// Serializes this TransactionHistoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionHistoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.description, description) || other.description == description)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.transactionFee, transactionFee) || other.transactionFee == transactionFee));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,reference,description,metadata,status,type,createdAt,senderName,recipientName,transactionFee);

@override
String toString() {
  return 'TransactionHistoryModel(id: $id, amount: $amount, reference: $reference, description: $description, metadata: $metadata, status: $status, type: $type, createdAt: $createdAt, senderName: $senderName, recipientName: $recipientName, transactionFee: $transactionFee)';
}


}

/// @nodoc
abstract mixin class $TransactionHistoryModelCopyWith<$Res>  {
  factory $TransactionHistoryModelCopyWith(TransactionHistoryModel value, $Res Function(TransactionHistoryModel) _then) = _$TransactionHistoryModelCopyWithImpl;
@useResult
$Res call({
 String id, String amount, String reference, String description, TransactionHistoryMetadata metadata,@JsonKey(unknownEnumValue: TransactionStatus.failure) TransactionStatus status,@JsonKey(name: 'transaction_type', unknownEnumValue: TransactionType.unknown) TransactionType type,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'sender_name') String senderName,@JsonKey(name: 'recipient_name') String recipientName,@JsonKey(name: 'fee_amount') String transactionFee
});


$TransactionHistoryMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class _$TransactionHistoryModelCopyWithImpl<$Res>
    implements $TransactionHistoryModelCopyWith<$Res> {
  _$TransactionHistoryModelCopyWithImpl(this._self, this._then);

  final TransactionHistoryModel _self;
  final $Res Function(TransactionHistoryModel) _then;

/// Create a copy of TransactionHistoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? amount = null,Object? reference = null,Object? description = null,Object? metadata = null,Object? status = null,Object? type = null,Object? createdAt = null,Object? senderName = null,Object? recipientName = null,Object? transactionFee = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as TransactionHistoryMetadata,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TransactionStatus,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,transactionFee: null == transactionFee ? _self.transactionFee : transactionFee // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of TransactionHistoryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionHistoryMetadataCopyWith<$Res> get metadata {
  
  return $TransactionHistoryMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [TransactionHistoryModel].
extension TransactionHistoryModelPatterns on TransactionHistoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionHistoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionHistoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionHistoryModel value)  $default,){
final _that = this;
switch (_that) {
case _TransactionHistoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionHistoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionHistoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String amount,  String reference,  String description,  TransactionHistoryMetadata metadata, @JsonKey(unknownEnumValue: TransactionStatus.failure)  TransactionStatus status, @JsonKey(name: 'transaction_type', unknownEnumValue: TransactionType.unknown)  TransactionType type, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'sender_name')  String senderName, @JsonKey(name: 'recipient_name')  String recipientName, @JsonKey(name: 'fee_amount')  String transactionFee)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionHistoryModel() when $default != null:
return $default(_that.id,_that.amount,_that.reference,_that.description,_that.metadata,_that.status,_that.type,_that.createdAt,_that.senderName,_that.recipientName,_that.transactionFee);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String amount,  String reference,  String description,  TransactionHistoryMetadata metadata, @JsonKey(unknownEnumValue: TransactionStatus.failure)  TransactionStatus status, @JsonKey(name: 'transaction_type', unknownEnumValue: TransactionType.unknown)  TransactionType type, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'sender_name')  String senderName, @JsonKey(name: 'recipient_name')  String recipientName, @JsonKey(name: 'fee_amount')  String transactionFee)  $default,) {final _that = this;
switch (_that) {
case _TransactionHistoryModel():
return $default(_that.id,_that.amount,_that.reference,_that.description,_that.metadata,_that.status,_that.type,_that.createdAt,_that.senderName,_that.recipientName,_that.transactionFee);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String amount,  String reference,  String description,  TransactionHistoryMetadata metadata, @JsonKey(unknownEnumValue: TransactionStatus.failure)  TransactionStatus status, @JsonKey(name: 'transaction_type', unknownEnumValue: TransactionType.unknown)  TransactionType type, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'sender_name')  String senderName, @JsonKey(name: 'recipient_name')  String recipientName, @JsonKey(name: 'fee_amount')  String transactionFee)?  $default,) {final _that = this;
switch (_that) {
case _TransactionHistoryModel() when $default != null:
return $default(_that.id,_that.amount,_that.reference,_that.description,_that.metadata,_that.status,_that.type,_that.createdAt,_that.senderName,_that.recipientName,_that.transactionFee);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionHistoryModel implements TransactionHistoryModel {
  const _TransactionHistoryModel({required this.id, required this.amount, required this.reference, required this.description, required this.metadata, @JsonKey(unknownEnumValue: TransactionStatus.failure) required this.status, @JsonKey(name: 'transaction_type', unknownEnumValue: TransactionType.unknown) required this.type, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'sender_name') required this.senderName, @JsonKey(name: 'recipient_name') required this.recipientName, @JsonKey(name: 'fee_amount') required this.transactionFee});
  factory _TransactionHistoryModel.fromJson(Map<String, dynamic> json) => _$TransactionHistoryModelFromJson(json);

@override final  String id;
@override final  String amount;
@override final  String reference;
@override final  String description;
@override final  TransactionHistoryMetadata metadata;
@override@JsonKey(unknownEnumValue: TransactionStatus.failure) final  TransactionStatus status;
@override@JsonKey(name: 'transaction_type', unknownEnumValue: TransactionType.unknown) final  TransactionType type;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'sender_name') final  String senderName;
@override@JsonKey(name: 'recipient_name') final  String recipientName;
@override@JsonKey(name: 'fee_amount') final  String transactionFee;

/// Create a copy of TransactionHistoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionHistoryModelCopyWith<_TransactionHistoryModel> get copyWith => __$TransactionHistoryModelCopyWithImpl<_TransactionHistoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionHistoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionHistoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reference, reference) || other.reference == reference)&&(identical(other.description, description) || other.description == description)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.senderName, senderName) || other.senderName == senderName)&&(identical(other.recipientName, recipientName) || other.recipientName == recipientName)&&(identical(other.transactionFee, transactionFee) || other.transactionFee == transactionFee));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,reference,description,metadata,status,type,createdAt,senderName,recipientName,transactionFee);

@override
String toString() {
  return 'TransactionHistoryModel(id: $id, amount: $amount, reference: $reference, description: $description, metadata: $metadata, status: $status, type: $type, createdAt: $createdAt, senderName: $senderName, recipientName: $recipientName, transactionFee: $transactionFee)';
}


}

/// @nodoc
abstract mixin class _$TransactionHistoryModelCopyWith<$Res> implements $TransactionHistoryModelCopyWith<$Res> {
  factory _$TransactionHistoryModelCopyWith(_TransactionHistoryModel value, $Res Function(_TransactionHistoryModel) _then) = __$TransactionHistoryModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String amount, String reference, String description, TransactionHistoryMetadata metadata,@JsonKey(unknownEnumValue: TransactionStatus.failure) TransactionStatus status,@JsonKey(name: 'transaction_type', unknownEnumValue: TransactionType.unknown) TransactionType type,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'sender_name') String senderName,@JsonKey(name: 'recipient_name') String recipientName,@JsonKey(name: 'fee_amount') String transactionFee
});


@override $TransactionHistoryMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class __$TransactionHistoryModelCopyWithImpl<$Res>
    implements _$TransactionHistoryModelCopyWith<$Res> {
  __$TransactionHistoryModelCopyWithImpl(this._self, this._then);

  final _TransactionHistoryModel _self;
  final $Res Function(_TransactionHistoryModel) _then;

/// Create a copy of TransactionHistoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? amount = null,Object? reference = null,Object? description = null,Object? metadata = null,Object? status = null,Object? type = null,Object? createdAt = null,Object? senderName = null,Object? recipientName = null,Object? transactionFee = null,}) {
  return _then(_TransactionHistoryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,reference: null == reference ? _self.reference : reference // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as TransactionHistoryMetadata,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TransactionStatus,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,senderName: null == senderName ? _self.senderName : senderName // ignore: cast_nullable_to_non_nullable
as String,recipientName: null == recipientName ? _self.recipientName : recipientName // ignore: cast_nullable_to_non_nullable
as String,transactionFee: null == transactionFee ? _self.transactionFee : transactionFee // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of TransactionHistoryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TransactionHistoryMetadataCopyWith<$Res> get metadata {
  
  return $TransactionHistoryMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// @nodoc
mixin _$TransactionHistoryMetadata {

@JsonKey(name: 'recipient_account') String? get receipientAccount;@JsonKey(name: 'recipient_bank_code') String? get receipientBankCode;@JsonKey(name: 'gateway_reference') String? get gatewayReference;@JsonKey(name: 'pin_verified') bool? get isPinVerified;@JsonKey(name: 'recipient_phone') String? get recipientPhone;@JsonKey(name: 'initiated_by') String? get initiatedBy;
/// Create a copy of TransactionHistoryMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionHistoryMetadataCopyWith<TransactionHistoryMetadata> get copyWith => _$TransactionHistoryMetadataCopyWithImpl<TransactionHistoryMetadata>(this as TransactionHistoryMetadata, _$identity);

  /// Serializes this TransactionHistoryMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionHistoryMetadata&&(identical(other.receipientAccount, receipientAccount) || other.receipientAccount == receipientAccount)&&(identical(other.receipientBankCode, receipientBankCode) || other.receipientBankCode == receipientBankCode)&&(identical(other.gatewayReference, gatewayReference) || other.gatewayReference == gatewayReference)&&(identical(other.isPinVerified, isPinVerified) || other.isPinVerified == isPinVerified)&&(identical(other.recipientPhone, recipientPhone) || other.recipientPhone == recipientPhone)&&(identical(other.initiatedBy, initiatedBy) || other.initiatedBy == initiatedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,receipientAccount,receipientBankCode,gatewayReference,isPinVerified,recipientPhone,initiatedBy);

@override
String toString() {
  return 'TransactionHistoryMetadata(receipientAccount: $receipientAccount, receipientBankCode: $receipientBankCode, gatewayReference: $gatewayReference, isPinVerified: $isPinVerified, recipientPhone: $recipientPhone, initiatedBy: $initiatedBy)';
}


}

/// @nodoc
abstract mixin class $TransactionHistoryMetadataCopyWith<$Res>  {
  factory $TransactionHistoryMetadataCopyWith(TransactionHistoryMetadata value, $Res Function(TransactionHistoryMetadata) _then) = _$TransactionHistoryMetadataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'recipient_account') String? receipientAccount,@JsonKey(name: 'recipient_bank_code') String? receipientBankCode,@JsonKey(name: 'gateway_reference') String? gatewayReference,@JsonKey(name: 'pin_verified') bool? isPinVerified,@JsonKey(name: 'recipient_phone') String? recipientPhone,@JsonKey(name: 'initiated_by') String? initiatedBy
});




}
/// @nodoc
class _$TransactionHistoryMetadataCopyWithImpl<$Res>
    implements $TransactionHistoryMetadataCopyWith<$Res> {
  _$TransactionHistoryMetadataCopyWithImpl(this._self, this._then);

  final TransactionHistoryMetadata _self;
  final $Res Function(TransactionHistoryMetadata) _then;

/// Create a copy of TransactionHistoryMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receipientAccount = freezed,Object? receipientBankCode = freezed,Object? gatewayReference = freezed,Object? isPinVerified = freezed,Object? recipientPhone = freezed,Object? initiatedBy = freezed,}) {
  return _then(_self.copyWith(
receipientAccount: freezed == receipientAccount ? _self.receipientAccount : receipientAccount // ignore: cast_nullable_to_non_nullable
as String?,receipientBankCode: freezed == receipientBankCode ? _self.receipientBankCode : receipientBankCode // ignore: cast_nullable_to_non_nullable
as String?,gatewayReference: freezed == gatewayReference ? _self.gatewayReference : gatewayReference // ignore: cast_nullable_to_non_nullable
as String?,isPinVerified: freezed == isPinVerified ? _self.isPinVerified : isPinVerified // ignore: cast_nullable_to_non_nullable
as bool?,recipientPhone: freezed == recipientPhone ? _self.recipientPhone : recipientPhone // ignore: cast_nullable_to_non_nullable
as String?,initiatedBy: freezed == initiatedBy ? _self.initiatedBy : initiatedBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionHistoryMetadata].
extension TransactionHistoryMetadataPatterns on TransactionHistoryMetadata {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionHistoryMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionHistoryMetadata() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionHistoryMetadata value)  $default,){
final _that = this;
switch (_that) {
case _TransactionHistoryMetadata():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionHistoryMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionHistoryMetadata() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'recipient_account')  String? receipientAccount, @JsonKey(name: 'recipient_bank_code')  String? receipientBankCode, @JsonKey(name: 'gateway_reference')  String? gatewayReference, @JsonKey(name: 'pin_verified')  bool? isPinVerified, @JsonKey(name: 'recipient_phone')  String? recipientPhone, @JsonKey(name: 'initiated_by')  String? initiatedBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionHistoryMetadata() when $default != null:
return $default(_that.receipientAccount,_that.receipientBankCode,_that.gatewayReference,_that.isPinVerified,_that.recipientPhone,_that.initiatedBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'recipient_account')  String? receipientAccount, @JsonKey(name: 'recipient_bank_code')  String? receipientBankCode, @JsonKey(name: 'gateway_reference')  String? gatewayReference, @JsonKey(name: 'pin_verified')  bool? isPinVerified, @JsonKey(name: 'recipient_phone')  String? recipientPhone, @JsonKey(name: 'initiated_by')  String? initiatedBy)  $default,) {final _that = this;
switch (_that) {
case _TransactionHistoryMetadata():
return $default(_that.receipientAccount,_that.receipientBankCode,_that.gatewayReference,_that.isPinVerified,_that.recipientPhone,_that.initiatedBy);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'recipient_account')  String? receipientAccount, @JsonKey(name: 'recipient_bank_code')  String? receipientBankCode, @JsonKey(name: 'gateway_reference')  String? gatewayReference, @JsonKey(name: 'pin_verified')  bool? isPinVerified, @JsonKey(name: 'recipient_phone')  String? recipientPhone, @JsonKey(name: 'initiated_by')  String? initiatedBy)?  $default,) {final _that = this;
switch (_that) {
case _TransactionHistoryMetadata() when $default != null:
return $default(_that.receipientAccount,_that.receipientBankCode,_that.gatewayReference,_that.isPinVerified,_that.recipientPhone,_that.initiatedBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TransactionHistoryMetadata implements TransactionHistoryMetadata {
  const _TransactionHistoryMetadata({@JsonKey(name: 'recipient_account') this.receipientAccount, @JsonKey(name: 'recipient_bank_code') this.receipientBankCode, @JsonKey(name: 'gateway_reference') this.gatewayReference, @JsonKey(name: 'pin_verified') this.isPinVerified, @JsonKey(name: 'recipient_phone') this.recipientPhone, @JsonKey(name: 'initiated_by') this.initiatedBy});
  factory _TransactionHistoryMetadata.fromJson(Map<String, dynamic> json) => _$TransactionHistoryMetadataFromJson(json);

@override@JsonKey(name: 'recipient_account') final  String? receipientAccount;
@override@JsonKey(name: 'recipient_bank_code') final  String? receipientBankCode;
@override@JsonKey(name: 'gateway_reference') final  String? gatewayReference;
@override@JsonKey(name: 'pin_verified') final  bool? isPinVerified;
@override@JsonKey(name: 'recipient_phone') final  String? recipientPhone;
@override@JsonKey(name: 'initiated_by') final  String? initiatedBy;

/// Create a copy of TransactionHistoryMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionHistoryMetadataCopyWith<_TransactionHistoryMetadata> get copyWith => __$TransactionHistoryMetadataCopyWithImpl<_TransactionHistoryMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionHistoryMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionHistoryMetadata&&(identical(other.receipientAccount, receipientAccount) || other.receipientAccount == receipientAccount)&&(identical(other.receipientBankCode, receipientBankCode) || other.receipientBankCode == receipientBankCode)&&(identical(other.gatewayReference, gatewayReference) || other.gatewayReference == gatewayReference)&&(identical(other.isPinVerified, isPinVerified) || other.isPinVerified == isPinVerified)&&(identical(other.recipientPhone, recipientPhone) || other.recipientPhone == recipientPhone)&&(identical(other.initiatedBy, initiatedBy) || other.initiatedBy == initiatedBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,receipientAccount,receipientBankCode,gatewayReference,isPinVerified,recipientPhone,initiatedBy);

@override
String toString() {
  return 'TransactionHistoryMetadata(receipientAccount: $receipientAccount, receipientBankCode: $receipientBankCode, gatewayReference: $gatewayReference, isPinVerified: $isPinVerified, recipientPhone: $recipientPhone, initiatedBy: $initiatedBy)';
}


}

/// @nodoc
abstract mixin class _$TransactionHistoryMetadataCopyWith<$Res> implements $TransactionHistoryMetadataCopyWith<$Res> {
  factory _$TransactionHistoryMetadataCopyWith(_TransactionHistoryMetadata value, $Res Function(_TransactionHistoryMetadata) _then) = __$TransactionHistoryMetadataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'recipient_account') String? receipientAccount,@JsonKey(name: 'recipient_bank_code') String? receipientBankCode,@JsonKey(name: 'gateway_reference') String? gatewayReference,@JsonKey(name: 'pin_verified') bool? isPinVerified,@JsonKey(name: 'recipient_phone') String? recipientPhone,@JsonKey(name: 'initiated_by') String? initiatedBy
});




}
/// @nodoc
class __$TransactionHistoryMetadataCopyWithImpl<$Res>
    implements _$TransactionHistoryMetadataCopyWith<$Res> {
  __$TransactionHistoryMetadataCopyWithImpl(this._self, this._then);

  final _TransactionHistoryMetadata _self;
  final $Res Function(_TransactionHistoryMetadata) _then;

/// Create a copy of TransactionHistoryMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? receipientAccount = freezed,Object? receipientBankCode = freezed,Object? gatewayReference = freezed,Object? isPinVerified = freezed,Object? recipientPhone = freezed,Object? initiatedBy = freezed,}) {
  return _then(_TransactionHistoryMetadata(
receipientAccount: freezed == receipientAccount ? _self.receipientAccount : receipientAccount // ignore: cast_nullable_to_non_nullable
as String?,receipientBankCode: freezed == receipientBankCode ? _self.receipientBankCode : receipientBankCode // ignore: cast_nullable_to_non_nullable
as String?,gatewayReference: freezed == gatewayReference ? _self.gatewayReference : gatewayReference // ignore: cast_nullable_to_non_nullable
as String?,isPinVerified: freezed == isPinVerified ? _self.isPinVerified : isPinVerified // ignore: cast_nullable_to_non_nullable
as bool?,recipientPhone: freezed == recipientPhone ? _self.recipientPhone : recipientPhone // ignore: cast_nullable_to_non_nullable
as String?,initiatedBy: freezed == initiatedBy ? _self.initiatedBy : initiatedBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
