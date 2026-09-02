// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiResponse<T> _$ApiResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _ApiResponse<T>(
  status: json['status'] as bool,
  message: json['message'] as String,
  data: fromJsonT(json['data']),
);

Map<String, dynamic> _$ApiResponseToJson<T>(
  _ApiResponse<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': toJsonT(instance.data),
};

_ApiListResponse<T> _$ApiListResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _ApiListResponse<T>(
  status: json['status'] as bool,
  message: json['message'] as String,
  data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
);

Map<String, dynamic> _$ApiListResponseToJson<T>(
  _ApiListResponse<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data.map(toJsonT).toList(),
};

_PaginatedListResponse<T> _$PaginatedListResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _PaginatedListResponse<T>(
  count: (json['count'] as num).toInt(),
  results: (json['results'] as List<dynamic>).map(fromJsonT).toList(),
  next: json['next'] as String?,
  previous: json['previous'] as String?,
);

Map<String, dynamic> _$PaginatedListResponseToJson<T>(
  _PaginatedListResponse<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'count': instance.count,
  'results': instance.results.map(toJsonT).toList(),
  'next': ?instance.next,
  'previous': ?instance.previous,
};

_RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) =>
    _RegisterResponse(
      accessToken: json['access'] as String,
      refreshToken: json['refresh'] as String,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegisterResponseToJson(_RegisterResponse instance) =>
    <String, dynamic>{
      'access': instance.accessToken,
      'refresh': instance.refreshToken,
      'user': instance.user.toJson(),
    };

_LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    _LoginResponse(
      accessToken: json['access'] as String,
      refreshToken: json['refresh'] as String,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(_LoginResponse instance) =>
    <String, dynamic>{
      'access': instance.accessToken,
      'refresh': instance.refreshToken,
      'user': instance.user.toJson(),
    };

_SessionResponse _$SessionResponseFromJson(Map<String, dynamic> json) =>
    _SessionResponse(
      accessToken: json['access'] as String,
      refreshToken: json['refresh'] as String,
    );

Map<String, dynamic> _$SessionResponseToJson(_SessionResponse instance) =>
    <String, dynamic>{
      'access': instance.accessToken,
      'refresh': instance.refreshToken,
    };

_RequestOtpResponse _$RequestOtpResponseFromJson(Map<String, dynamic> json) =>
    _RequestOtpResponse(
      otp: json['otp'] as String,
      expiresIn: (json['expires_in'] as num).toInt(),
    );

Map<String, dynamic> _$RequestOtpResponseToJson(_RequestOtpResponse instance) =>
    <String, dynamic>{'otp': instance.otp, 'expires_in': instance.expiresIn};

_VerifyOtpResponse _$VerifyOtpResponseFromJson(Map<String, dynamic> json) =>
    _VerifyOtpResponse(token: json['phone_token'] as String);

Map<String, dynamic> _$VerifyOtpResponseToJson(_VerifyOtpResponse instance) =>
    <String, dynamic>{'phone_token': instance.token};
