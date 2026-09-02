// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ServerException {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerException);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ServerException()';
}


}

/// @nodoc
class $ServerExceptionCopyWith<$Res>  {
$ServerExceptionCopyWith(ServerException _, $Res Function(ServerException) __);
}


/// Adds pattern-matching-related methods to [ServerException].
extension ServerExceptionPatterns on ServerException {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _RequestCancelled value)?  requestCancelled,TResult Function( _RequestTimeout value)?  requestTimeout,TResult Function( _SendTimeout value)?  sendTimeout,TResult Function( _ReceiveTimeout value)?  receiveTimeout,TResult Function( _BadRequest value)?  badRequest,TResult Function( _UnauthorizedRequest value)?  unauthorizedRequest,TResult Function( _ForbiddenRequest value)?  forbiddenRequest,TResult Function( _MethodNotAllowed value)?  methodNotAllowed,TResult Function( _NotAcceptable value)?  notAcceptable,TResult Function( _UnsupportedMediaType value)?  unsupportedMediaType,TResult Function( _Conflict value)?  conflict,TResult Function( _TooManyRequests value)?  tooManyRequests,TResult Function( _NotImplemented value)?  notImplemented,TResult Function( _BadGateway value)?  badGateway,TResult Function( _NotFound value)?  notFound,TResult Function( _UnprocessableEntity value)?  unprocessableEntity,TResult Function( _InternalServerError value)?  internalServerError,TResult Function( _ServiceUnavailable value)?  serviceUnavailable,TResult Function( _NoInternetConnection value)?  noInternetConnection,TResult Function( _DefaultError value)?  defaultError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestCancelled() when requestCancelled != null:
return requestCancelled(_that);case _RequestTimeout() when requestTimeout != null:
return requestTimeout(_that);case _SendTimeout() when sendTimeout != null:
return sendTimeout(_that);case _ReceiveTimeout() when receiveTimeout != null:
return receiveTimeout(_that);case _BadRequest() when badRequest != null:
return badRequest(_that);case _UnauthorizedRequest() when unauthorizedRequest != null:
return unauthorizedRequest(_that);case _ForbiddenRequest() when forbiddenRequest != null:
return forbiddenRequest(_that);case _MethodNotAllowed() when methodNotAllowed != null:
return methodNotAllowed(_that);case _NotAcceptable() when notAcceptable != null:
return notAcceptable(_that);case _UnsupportedMediaType() when unsupportedMediaType != null:
return unsupportedMediaType(_that);case _Conflict() when conflict != null:
return conflict(_that);case _TooManyRequests() when tooManyRequests != null:
return tooManyRequests(_that);case _NotImplemented() when notImplemented != null:
return notImplemented(_that);case _BadGateway() when badGateway != null:
return badGateway(_that);case _NotFound() when notFound != null:
return notFound(_that);case _UnprocessableEntity() when unprocessableEntity != null:
return unprocessableEntity(_that);case _InternalServerError() when internalServerError != null:
return internalServerError(_that);case _ServiceUnavailable() when serviceUnavailable != null:
return serviceUnavailable(_that);case _NoInternetConnection() when noInternetConnection != null:
return noInternetConnection(_that);case _DefaultError() when defaultError != null:
return defaultError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _RequestCancelled value)  requestCancelled,required TResult Function( _RequestTimeout value)  requestTimeout,required TResult Function( _SendTimeout value)  sendTimeout,required TResult Function( _ReceiveTimeout value)  receiveTimeout,required TResult Function( _BadRequest value)  badRequest,required TResult Function( _UnauthorizedRequest value)  unauthorizedRequest,required TResult Function( _ForbiddenRequest value)  forbiddenRequest,required TResult Function( _MethodNotAllowed value)  methodNotAllowed,required TResult Function( _NotAcceptable value)  notAcceptable,required TResult Function( _UnsupportedMediaType value)  unsupportedMediaType,required TResult Function( _Conflict value)  conflict,required TResult Function( _TooManyRequests value)  tooManyRequests,required TResult Function( _NotImplemented value)  notImplemented,required TResult Function( _BadGateway value)  badGateway,required TResult Function( _NotFound value)  notFound,required TResult Function( _UnprocessableEntity value)  unprocessableEntity,required TResult Function( _InternalServerError value)  internalServerError,required TResult Function( _ServiceUnavailable value)  serviceUnavailable,required TResult Function( _NoInternetConnection value)  noInternetConnection,required TResult Function( _DefaultError value)  defaultError,}){
final _that = this;
switch (_that) {
case _RequestCancelled():
return requestCancelled(_that);case _RequestTimeout():
return requestTimeout(_that);case _SendTimeout():
return sendTimeout(_that);case _ReceiveTimeout():
return receiveTimeout(_that);case _BadRequest():
return badRequest(_that);case _UnauthorizedRequest():
return unauthorizedRequest(_that);case _ForbiddenRequest():
return forbiddenRequest(_that);case _MethodNotAllowed():
return methodNotAllowed(_that);case _NotAcceptable():
return notAcceptable(_that);case _UnsupportedMediaType():
return unsupportedMediaType(_that);case _Conflict():
return conflict(_that);case _TooManyRequests():
return tooManyRequests(_that);case _NotImplemented():
return notImplemented(_that);case _BadGateway():
return badGateway(_that);case _NotFound():
return notFound(_that);case _UnprocessableEntity():
return unprocessableEntity(_that);case _InternalServerError():
return internalServerError(_that);case _ServiceUnavailable():
return serviceUnavailable(_that);case _NoInternetConnection():
return noInternetConnection(_that);case _DefaultError():
return defaultError(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _RequestCancelled value)?  requestCancelled,TResult? Function( _RequestTimeout value)?  requestTimeout,TResult? Function( _SendTimeout value)?  sendTimeout,TResult? Function( _ReceiveTimeout value)?  receiveTimeout,TResult? Function( _BadRequest value)?  badRequest,TResult? Function( _UnauthorizedRequest value)?  unauthorizedRequest,TResult? Function( _ForbiddenRequest value)?  forbiddenRequest,TResult? Function( _MethodNotAllowed value)?  methodNotAllowed,TResult? Function( _NotAcceptable value)?  notAcceptable,TResult? Function( _UnsupportedMediaType value)?  unsupportedMediaType,TResult? Function( _Conflict value)?  conflict,TResult? Function( _TooManyRequests value)?  tooManyRequests,TResult? Function( _NotImplemented value)?  notImplemented,TResult? Function( _BadGateway value)?  badGateway,TResult? Function( _NotFound value)?  notFound,TResult? Function( _UnprocessableEntity value)?  unprocessableEntity,TResult? Function( _InternalServerError value)?  internalServerError,TResult? Function( _ServiceUnavailable value)?  serviceUnavailable,TResult? Function( _NoInternetConnection value)?  noInternetConnection,TResult? Function( _DefaultError value)?  defaultError,}){
final _that = this;
switch (_that) {
case _RequestCancelled() when requestCancelled != null:
return requestCancelled(_that);case _RequestTimeout() when requestTimeout != null:
return requestTimeout(_that);case _SendTimeout() when sendTimeout != null:
return sendTimeout(_that);case _ReceiveTimeout() when receiveTimeout != null:
return receiveTimeout(_that);case _BadRequest() when badRequest != null:
return badRequest(_that);case _UnauthorizedRequest() when unauthorizedRequest != null:
return unauthorizedRequest(_that);case _ForbiddenRequest() when forbiddenRequest != null:
return forbiddenRequest(_that);case _MethodNotAllowed() when methodNotAllowed != null:
return methodNotAllowed(_that);case _NotAcceptable() when notAcceptable != null:
return notAcceptable(_that);case _UnsupportedMediaType() when unsupportedMediaType != null:
return unsupportedMediaType(_that);case _Conflict() when conflict != null:
return conflict(_that);case _TooManyRequests() when tooManyRequests != null:
return tooManyRequests(_that);case _NotImplemented() when notImplemented != null:
return notImplemented(_that);case _BadGateway() when badGateway != null:
return badGateway(_that);case _NotFound() when notFound != null:
return notFound(_that);case _UnprocessableEntity() when unprocessableEntity != null:
return unprocessableEntity(_that);case _InternalServerError() when internalServerError != null:
return internalServerError(_that);case _ServiceUnavailable() when serviceUnavailable != null:
return serviceUnavailable(_that);case _NoInternetConnection() when noInternetConnection != null:
return noInternetConnection(_that);case _DefaultError() when defaultError != null:
return defaultError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  requestCancelled,TResult Function()?  requestTimeout,TResult Function()?  sendTimeout,TResult Function()?  receiveTimeout,TResult Function( String? reason)?  badRequest,TResult Function( String? reason)?  unauthorizedRequest,TResult Function( String? reason)?  forbiddenRequest,TResult Function( String? reason)?  methodNotAllowed,TResult Function( String? reason)?  notAcceptable,TResult Function( String? reason)?  unsupportedMediaType,TResult Function( String? reason,  String? conflictingAssetId)?  conflict,TResult Function( String? reason,  Duration? retryAfter)?  tooManyRequests,TResult Function( String? reason)?  notImplemented,TResult Function( String? reason)?  badGateway,TResult Function( String? reason)?  notFound,TResult Function( String? reason)?  unprocessableEntity,TResult Function()?  internalServerError,TResult Function()?  serviceUnavailable,TResult Function()?  noInternetConnection,TResult Function( String? error)?  defaultError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestCancelled() when requestCancelled != null:
return requestCancelled();case _RequestTimeout() when requestTimeout != null:
return requestTimeout();case _SendTimeout() when sendTimeout != null:
return sendTimeout();case _ReceiveTimeout() when receiveTimeout != null:
return receiveTimeout();case _BadRequest() when badRequest != null:
return badRequest(_that.reason);case _UnauthorizedRequest() when unauthorizedRequest != null:
return unauthorizedRequest(_that.reason);case _ForbiddenRequest() when forbiddenRequest != null:
return forbiddenRequest(_that.reason);case _MethodNotAllowed() when methodNotAllowed != null:
return methodNotAllowed(_that.reason);case _NotAcceptable() when notAcceptable != null:
return notAcceptable(_that.reason);case _UnsupportedMediaType() when unsupportedMediaType != null:
return unsupportedMediaType(_that.reason);case _Conflict() when conflict != null:
return conflict(_that.reason,_that.conflictingAssetId);case _TooManyRequests() when tooManyRequests != null:
return tooManyRequests(_that.reason,_that.retryAfter);case _NotImplemented() when notImplemented != null:
return notImplemented(_that.reason);case _BadGateway() when badGateway != null:
return badGateway(_that.reason);case _NotFound() when notFound != null:
return notFound(_that.reason);case _UnprocessableEntity() when unprocessableEntity != null:
return unprocessableEntity(_that.reason);case _InternalServerError() when internalServerError != null:
return internalServerError();case _ServiceUnavailable() when serviceUnavailable != null:
return serviceUnavailable();case _NoInternetConnection() when noInternetConnection != null:
return noInternetConnection();case _DefaultError() when defaultError != null:
return defaultError(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  requestCancelled,required TResult Function()  requestTimeout,required TResult Function()  sendTimeout,required TResult Function()  receiveTimeout,required TResult Function( String? reason)  badRequest,required TResult Function( String? reason)  unauthorizedRequest,required TResult Function( String? reason)  forbiddenRequest,required TResult Function( String? reason)  methodNotAllowed,required TResult Function( String? reason)  notAcceptable,required TResult Function( String? reason)  unsupportedMediaType,required TResult Function( String? reason,  String? conflictingAssetId)  conflict,required TResult Function( String? reason,  Duration? retryAfter)  tooManyRequests,required TResult Function( String? reason)  notImplemented,required TResult Function( String? reason)  badGateway,required TResult Function( String? reason)  notFound,required TResult Function( String? reason)  unprocessableEntity,required TResult Function()  internalServerError,required TResult Function()  serviceUnavailable,required TResult Function()  noInternetConnection,required TResult Function( String? error)  defaultError,}) {final _that = this;
switch (_that) {
case _RequestCancelled():
return requestCancelled();case _RequestTimeout():
return requestTimeout();case _SendTimeout():
return sendTimeout();case _ReceiveTimeout():
return receiveTimeout();case _BadRequest():
return badRequest(_that.reason);case _UnauthorizedRequest():
return unauthorizedRequest(_that.reason);case _ForbiddenRequest():
return forbiddenRequest(_that.reason);case _MethodNotAllowed():
return methodNotAllowed(_that.reason);case _NotAcceptable():
return notAcceptable(_that.reason);case _UnsupportedMediaType():
return unsupportedMediaType(_that.reason);case _Conflict():
return conflict(_that.reason,_that.conflictingAssetId);case _TooManyRequests():
return tooManyRequests(_that.reason,_that.retryAfter);case _NotImplemented():
return notImplemented(_that.reason);case _BadGateway():
return badGateway(_that.reason);case _NotFound():
return notFound(_that.reason);case _UnprocessableEntity():
return unprocessableEntity(_that.reason);case _InternalServerError():
return internalServerError();case _ServiceUnavailable():
return serviceUnavailable();case _NoInternetConnection():
return noInternetConnection();case _DefaultError():
return defaultError(_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  requestCancelled,TResult? Function()?  requestTimeout,TResult? Function()?  sendTimeout,TResult? Function()?  receiveTimeout,TResult? Function( String? reason)?  badRequest,TResult? Function( String? reason)?  unauthorizedRequest,TResult? Function( String? reason)?  forbiddenRequest,TResult? Function( String? reason)?  methodNotAllowed,TResult? Function( String? reason)?  notAcceptable,TResult? Function( String? reason)?  unsupportedMediaType,TResult? Function( String? reason,  String? conflictingAssetId)?  conflict,TResult? Function( String? reason,  Duration? retryAfter)?  tooManyRequests,TResult? Function( String? reason)?  notImplemented,TResult? Function( String? reason)?  badGateway,TResult? Function( String? reason)?  notFound,TResult? Function( String? reason)?  unprocessableEntity,TResult? Function()?  internalServerError,TResult? Function()?  serviceUnavailable,TResult? Function()?  noInternetConnection,TResult? Function( String? error)?  defaultError,}) {final _that = this;
switch (_that) {
case _RequestCancelled() when requestCancelled != null:
return requestCancelled();case _RequestTimeout() when requestTimeout != null:
return requestTimeout();case _SendTimeout() when sendTimeout != null:
return sendTimeout();case _ReceiveTimeout() when receiveTimeout != null:
return receiveTimeout();case _BadRequest() when badRequest != null:
return badRequest(_that.reason);case _UnauthorizedRequest() when unauthorizedRequest != null:
return unauthorizedRequest(_that.reason);case _ForbiddenRequest() when forbiddenRequest != null:
return forbiddenRequest(_that.reason);case _MethodNotAllowed() when methodNotAllowed != null:
return methodNotAllowed(_that.reason);case _NotAcceptable() when notAcceptable != null:
return notAcceptable(_that.reason);case _UnsupportedMediaType() when unsupportedMediaType != null:
return unsupportedMediaType(_that.reason);case _Conflict() when conflict != null:
return conflict(_that.reason,_that.conflictingAssetId);case _TooManyRequests() when tooManyRequests != null:
return tooManyRequests(_that.reason,_that.retryAfter);case _NotImplemented() when notImplemented != null:
return notImplemented(_that.reason);case _BadGateway() when badGateway != null:
return badGateway(_that.reason);case _NotFound() when notFound != null:
return notFound(_that.reason);case _UnprocessableEntity() when unprocessableEntity != null:
return unprocessableEntity(_that.reason);case _InternalServerError() when internalServerError != null:
return internalServerError();case _ServiceUnavailable() when serviceUnavailable != null:
return serviceUnavailable();case _NoInternetConnection() when noInternetConnection != null:
return noInternetConnection();case _DefaultError() when defaultError != null:
return defaultError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _RequestCancelled extends ServerException {
  const _RequestCancelled(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestCancelled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ServerException.requestCancelled()';
}


}




/// @nodoc


class _RequestTimeout extends ServerException {
  const _RequestTimeout(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestTimeout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ServerException.requestTimeout()';
}


}




/// @nodoc


class _SendTimeout extends ServerException {
  const _SendTimeout(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendTimeout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ServerException.sendTimeout()';
}


}




/// @nodoc


class _ReceiveTimeout extends ServerException {
  const _ReceiveTimeout(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReceiveTimeout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ServerException.receiveTimeout()';
}


}




/// @nodoc


class _BadRequest extends ServerException {
  const _BadRequest(this.reason): super._();
  

 final  String? reason;

/// Create a copy of ServerException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BadRequestCopyWith<_BadRequest> get copyWith => __$BadRequestCopyWithImpl<_BadRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BadRequest&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString() {
  return 'ServerException.badRequest(reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$BadRequestCopyWith<$Res> implements $ServerExceptionCopyWith<$Res> {
  factory _$BadRequestCopyWith(_BadRequest value, $Res Function(_BadRequest) _then) = __$BadRequestCopyWithImpl;
@useResult
$Res call({
 String? reason
});




}
/// @nodoc
class __$BadRequestCopyWithImpl<$Res>
    implements _$BadRequestCopyWith<$Res> {
  __$BadRequestCopyWithImpl(this._self, this._then);

  final _BadRequest _self;
  final $Res Function(_BadRequest) _then;

/// Create a copy of ServerException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = freezed,}) {
  return _then(_BadRequest(
freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _UnauthorizedRequest extends ServerException {
  const _UnauthorizedRequest(this.reason): super._();
  

 final  String? reason;

/// Create a copy of ServerException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnauthorizedRequestCopyWith<_UnauthorizedRequest> get copyWith => __$UnauthorizedRequestCopyWithImpl<_UnauthorizedRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnauthorizedRequest&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString() {
  return 'ServerException.unauthorizedRequest(reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$UnauthorizedRequestCopyWith<$Res> implements $ServerExceptionCopyWith<$Res> {
  factory _$UnauthorizedRequestCopyWith(_UnauthorizedRequest value, $Res Function(_UnauthorizedRequest) _then) = __$UnauthorizedRequestCopyWithImpl;
@useResult
$Res call({
 String? reason
});




}
/// @nodoc
class __$UnauthorizedRequestCopyWithImpl<$Res>
    implements _$UnauthorizedRequestCopyWith<$Res> {
  __$UnauthorizedRequestCopyWithImpl(this._self, this._then);

  final _UnauthorizedRequest _self;
  final $Res Function(_UnauthorizedRequest) _then;

/// Create a copy of ServerException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = freezed,}) {
  return _then(_UnauthorizedRequest(
freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _ForbiddenRequest extends ServerException {
  const _ForbiddenRequest(this.reason): super._();
  

 final  String? reason;

/// Create a copy of ServerException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForbiddenRequestCopyWith<_ForbiddenRequest> get copyWith => __$ForbiddenRequestCopyWithImpl<_ForbiddenRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForbiddenRequest&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString() {
  return 'ServerException.forbiddenRequest(reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$ForbiddenRequestCopyWith<$Res> implements $ServerExceptionCopyWith<$Res> {
  factory _$ForbiddenRequestCopyWith(_ForbiddenRequest value, $Res Function(_ForbiddenRequest) _then) = __$ForbiddenRequestCopyWithImpl;
@useResult
$Res call({
 String? reason
});




}
/// @nodoc
class __$ForbiddenRequestCopyWithImpl<$Res>
    implements _$ForbiddenRequestCopyWith<$Res> {
  __$ForbiddenRequestCopyWithImpl(this._self, this._then);

  final _ForbiddenRequest _self;
  final $Res Function(_ForbiddenRequest) _then;

/// Create a copy of ServerException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = freezed,}) {
  return _then(_ForbiddenRequest(
freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _MethodNotAllowed extends ServerException {
  const _MethodNotAllowed(this.reason): super._();
  

 final  String? reason;

/// Create a copy of ServerException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MethodNotAllowedCopyWith<_MethodNotAllowed> get copyWith => __$MethodNotAllowedCopyWithImpl<_MethodNotAllowed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MethodNotAllowed&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString() {
  return 'ServerException.methodNotAllowed(reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$MethodNotAllowedCopyWith<$Res> implements $ServerExceptionCopyWith<$Res> {
  factory _$MethodNotAllowedCopyWith(_MethodNotAllowed value, $Res Function(_MethodNotAllowed) _then) = __$MethodNotAllowedCopyWithImpl;
@useResult
$Res call({
 String? reason
});




}
/// @nodoc
class __$MethodNotAllowedCopyWithImpl<$Res>
    implements _$MethodNotAllowedCopyWith<$Res> {
  __$MethodNotAllowedCopyWithImpl(this._self, this._then);

  final _MethodNotAllowed _self;
  final $Res Function(_MethodNotAllowed) _then;

/// Create a copy of ServerException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = freezed,}) {
  return _then(_MethodNotAllowed(
freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _NotAcceptable extends ServerException {
  const _NotAcceptable(this.reason): super._();
  

 final  String? reason;

/// Create a copy of ServerException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotAcceptableCopyWith<_NotAcceptable> get copyWith => __$NotAcceptableCopyWithImpl<_NotAcceptable>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotAcceptable&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString() {
  return 'ServerException.notAcceptable(reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$NotAcceptableCopyWith<$Res> implements $ServerExceptionCopyWith<$Res> {
  factory _$NotAcceptableCopyWith(_NotAcceptable value, $Res Function(_NotAcceptable) _then) = __$NotAcceptableCopyWithImpl;
@useResult
$Res call({
 String? reason
});




}
/// @nodoc
class __$NotAcceptableCopyWithImpl<$Res>
    implements _$NotAcceptableCopyWith<$Res> {
  __$NotAcceptableCopyWithImpl(this._self, this._then);

  final _NotAcceptable _self;
  final $Res Function(_NotAcceptable) _then;

/// Create a copy of ServerException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = freezed,}) {
  return _then(_NotAcceptable(
freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _UnsupportedMediaType extends ServerException {
  const _UnsupportedMediaType(this.reason): super._();
  

 final  String? reason;

/// Create a copy of ServerException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnsupportedMediaTypeCopyWith<_UnsupportedMediaType> get copyWith => __$UnsupportedMediaTypeCopyWithImpl<_UnsupportedMediaType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnsupportedMediaType&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString() {
  return 'ServerException.unsupportedMediaType(reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$UnsupportedMediaTypeCopyWith<$Res> implements $ServerExceptionCopyWith<$Res> {
  factory _$UnsupportedMediaTypeCopyWith(_UnsupportedMediaType value, $Res Function(_UnsupportedMediaType) _then) = __$UnsupportedMediaTypeCopyWithImpl;
@useResult
$Res call({
 String? reason
});




}
/// @nodoc
class __$UnsupportedMediaTypeCopyWithImpl<$Res>
    implements _$UnsupportedMediaTypeCopyWith<$Res> {
  __$UnsupportedMediaTypeCopyWithImpl(this._self, this._then);

  final _UnsupportedMediaType _self;
  final $Res Function(_UnsupportedMediaType) _then;

/// Create a copy of ServerException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = freezed,}) {
  return _then(_UnsupportedMediaType(
freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _Conflict extends ServerException {
  const _Conflict(this.reason, this.conflictingAssetId): super._();
  

 final  String? reason;
 final  String? conflictingAssetId;

/// Create a copy of ServerException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConflictCopyWith<_Conflict> get copyWith => __$ConflictCopyWithImpl<_Conflict>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Conflict&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.conflictingAssetId, conflictingAssetId) || other.conflictingAssetId == conflictingAssetId));
}


@override
int get hashCode => Object.hash(runtimeType,reason,conflictingAssetId);

@override
String toString() {
  return 'ServerException.conflict(reason: $reason, conflictingAssetId: $conflictingAssetId)';
}


}

/// @nodoc
abstract mixin class _$ConflictCopyWith<$Res> implements $ServerExceptionCopyWith<$Res> {
  factory _$ConflictCopyWith(_Conflict value, $Res Function(_Conflict) _then) = __$ConflictCopyWithImpl;
@useResult
$Res call({
 String? reason, String? conflictingAssetId
});




}
/// @nodoc
class __$ConflictCopyWithImpl<$Res>
    implements _$ConflictCopyWith<$Res> {
  __$ConflictCopyWithImpl(this._self, this._then);

  final _Conflict _self;
  final $Res Function(_Conflict) _then;

/// Create a copy of ServerException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = freezed,Object? conflictingAssetId = freezed,}) {
  return _then(_Conflict(
freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,freezed == conflictingAssetId ? _self.conflictingAssetId : conflictingAssetId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _TooManyRequests extends ServerException {
  const _TooManyRequests({this.reason, this.retryAfter}): super._();
  

 final  String? reason;
 final  Duration? retryAfter;

/// Create a copy of ServerException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TooManyRequestsCopyWith<_TooManyRequests> get copyWith => __$TooManyRequestsCopyWithImpl<_TooManyRequests>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TooManyRequests&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.retryAfter, retryAfter) || other.retryAfter == retryAfter));
}


@override
int get hashCode => Object.hash(runtimeType,reason,retryAfter);

@override
String toString() {
  return 'ServerException.tooManyRequests(reason: $reason, retryAfter: $retryAfter)';
}


}

/// @nodoc
abstract mixin class _$TooManyRequestsCopyWith<$Res> implements $ServerExceptionCopyWith<$Res> {
  factory _$TooManyRequestsCopyWith(_TooManyRequests value, $Res Function(_TooManyRequests) _then) = __$TooManyRequestsCopyWithImpl;
@useResult
$Res call({
 String? reason, Duration? retryAfter
});




}
/// @nodoc
class __$TooManyRequestsCopyWithImpl<$Res>
    implements _$TooManyRequestsCopyWith<$Res> {
  __$TooManyRequestsCopyWithImpl(this._self, this._then);

  final _TooManyRequests _self;
  final $Res Function(_TooManyRequests) _then;

/// Create a copy of ServerException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = freezed,Object? retryAfter = freezed,}) {
  return _then(_TooManyRequests(
reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,retryAfter: freezed == retryAfter ? _self.retryAfter : retryAfter // ignore: cast_nullable_to_non_nullable
as Duration?,
  ));
}


}

/// @nodoc


class _NotImplemented extends ServerException {
  const _NotImplemented(this.reason): super._();
  

 final  String? reason;

/// Create a copy of ServerException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotImplementedCopyWith<_NotImplemented> get copyWith => __$NotImplementedCopyWithImpl<_NotImplemented>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotImplemented&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString() {
  return 'ServerException.notImplemented(reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$NotImplementedCopyWith<$Res> implements $ServerExceptionCopyWith<$Res> {
  factory _$NotImplementedCopyWith(_NotImplemented value, $Res Function(_NotImplemented) _then) = __$NotImplementedCopyWithImpl;
@useResult
$Res call({
 String? reason
});




}
/// @nodoc
class __$NotImplementedCopyWithImpl<$Res>
    implements _$NotImplementedCopyWith<$Res> {
  __$NotImplementedCopyWithImpl(this._self, this._then);

  final _NotImplemented _self;
  final $Res Function(_NotImplemented) _then;

/// Create a copy of ServerException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = freezed,}) {
  return _then(_NotImplemented(
freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _BadGateway extends ServerException {
  const _BadGateway(this.reason): super._();
  

 final  String? reason;

/// Create a copy of ServerException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BadGatewayCopyWith<_BadGateway> get copyWith => __$BadGatewayCopyWithImpl<_BadGateway>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BadGateway&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString() {
  return 'ServerException.badGateway(reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$BadGatewayCopyWith<$Res> implements $ServerExceptionCopyWith<$Res> {
  factory _$BadGatewayCopyWith(_BadGateway value, $Res Function(_BadGateway) _then) = __$BadGatewayCopyWithImpl;
@useResult
$Res call({
 String? reason
});




}
/// @nodoc
class __$BadGatewayCopyWithImpl<$Res>
    implements _$BadGatewayCopyWith<$Res> {
  __$BadGatewayCopyWithImpl(this._self, this._then);

  final _BadGateway _self;
  final $Res Function(_BadGateway) _then;

/// Create a copy of ServerException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = freezed,}) {
  return _then(_BadGateway(
freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _NotFound extends ServerException {
  const _NotFound(this.reason): super._();
  

 final  String? reason;

/// Create a copy of ServerException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotFoundCopyWith<_NotFound> get copyWith => __$NotFoundCopyWithImpl<_NotFound>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotFound&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString() {
  return 'ServerException.notFound(reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$NotFoundCopyWith<$Res> implements $ServerExceptionCopyWith<$Res> {
  factory _$NotFoundCopyWith(_NotFound value, $Res Function(_NotFound) _then) = __$NotFoundCopyWithImpl;
@useResult
$Res call({
 String? reason
});




}
/// @nodoc
class __$NotFoundCopyWithImpl<$Res>
    implements _$NotFoundCopyWith<$Res> {
  __$NotFoundCopyWithImpl(this._self, this._then);

  final _NotFound _self;
  final $Res Function(_NotFound) _then;

/// Create a copy of ServerException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = freezed,}) {
  return _then(_NotFound(
freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _UnprocessableEntity extends ServerException {
  const _UnprocessableEntity(this.reason): super._();
  

 final  String? reason;

/// Create a copy of ServerException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnprocessableEntityCopyWith<_UnprocessableEntity> get copyWith => __$UnprocessableEntityCopyWithImpl<_UnprocessableEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnprocessableEntity&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString() {
  return 'ServerException.unprocessableEntity(reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$UnprocessableEntityCopyWith<$Res> implements $ServerExceptionCopyWith<$Res> {
  factory _$UnprocessableEntityCopyWith(_UnprocessableEntity value, $Res Function(_UnprocessableEntity) _then) = __$UnprocessableEntityCopyWithImpl;
@useResult
$Res call({
 String? reason
});




}
/// @nodoc
class __$UnprocessableEntityCopyWithImpl<$Res>
    implements _$UnprocessableEntityCopyWith<$Res> {
  __$UnprocessableEntityCopyWithImpl(this._self, this._then);

  final _UnprocessableEntity _self;
  final $Res Function(_UnprocessableEntity) _then;

/// Create a copy of ServerException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = freezed,}) {
  return _then(_UnprocessableEntity(
freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _InternalServerError extends ServerException {
  const _InternalServerError(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InternalServerError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ServerException.internalServerError()';
}


}




/// @nodoc


class _ServiceUnavailable extends ServerException {
  const _ServiceUnavailable(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceUnavailable);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ServerException.serviceUnavailable()';
}


}




/// @nodoc


class _NoInternetConnection extends ServerException {
  const _NoInternetConnection(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoInternetConnection);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ServerException.noInternetConnection()';
}


}




/// @nodoc


class _DefaultError extends ServerException {
  const _DefaultError(this.error): super._();
  

 final  String? error;

/// Create a copy of ServerException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DefaultErrorCopyWith<_DefaultError> get copyWith => __$DefaultErrorCopyWithImpl<_DefaultError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DefaultError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ServerException.defaultError(error: $error)';
}


}

/// @nodoc
abstract mixin class _$DefaultErrorCopyWith<$Res> implements $ServerExceptionCopyWith<$Res> {
  factory _$DefaultErrorCopyWith(_DefaultError value, $Res Function(_DefaultError) _then) = __$DefaultErrorCopyWithImpl;
@useResult
$Res call({
 String? error
});




}
/// @nodoc
class __$DefaultErrorCopyWithImpl<$Res>
    implements _$DefaultErrorCopyWith<$Res> {
  __$DefaultErrorCopyWithImpl(this._self, this._then);

  final _DefaultError _self;
  final $Res Function(_DefaultError) _then;

/// Create a copy of ServerException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = freezed,}) {
  return _then(_DefaultError(
freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
