import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@Freezed(genericArgumentFactories: true)
sealed class ApiListResponse<T> with _$ApiListResponse<T> {
  const factory ApiListResponse({
    required bool status,
    required String message,
    required List<T> data,
  }) = _ApiListResponse;

  factory ApiListResponse.fromJson(
    Map<String, Object?> json,
    T Function(Object? json) fromJsonT,
  ) => _$ApiListResponseFromJson(json, fromJsonT);
}
