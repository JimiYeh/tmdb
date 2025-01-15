import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@Freezed(genericArgumentFactories: true)
sealed class ApiResponse<T> with _$ApiResponse<T> {
  const ApiResponse._();

  const factory ApiResponse.data({required T data}) = ApiResponseData;

  const factory ApiResponse.error({required ApiError error}) = ApiResponseError;

  @FreezedUnionValue('exception')
  @JsonSerializable(createFactory: false, createToJson: false)
  const factory ApiResponse.exception({@JsonKey(includeFromJson: false, includeToJson: false) required Exception exception}) = ApiResponseException;

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) {
    if (json['status_code'] != null) {
      return ApiResponse.error(error: ApiError.fromJson(json));
    }
    return ApiResponse.data(data: fromJsonT(json));
  }

  void whenData(void Function(T data) callback) {
    if (this case ApiResponseData(data: final data)) {
      callback(data);
    }
  }

  R mapOr<R>(R Function(T data) transform, R defaultValue) {
    return switch (this) {
      ApiResponseData(data: final data) => transform(data),
      _ => defaultValue,
    };
  }
}

@JsonSerializable()
class ApiError {
  @JsonKey(name: 'status_code')
  final int statusCode;
  @JsonKey(name: 'status_message')
  final String message;

  const ApiError({
    required this.statusCode,
    required this.message,
  });

  factory ApiError.fromJson(Map<String, dynamic> json) => _$ApiErrorFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorToJson(this);
}
