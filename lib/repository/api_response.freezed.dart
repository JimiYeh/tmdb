// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(ApiError error) error,
    required TResult Function(
            @JsonKey(includeFromJson: false, includeToJson: false)
            Exception exception)
        exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function(ApiError error)? error,
    TResult? Function(
            @JsonKey(includeFromJson: false, includeToJson: false)
            Exception exception)?
        exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(ApiError error)? error,
    TResult Function(
            @JsonKey(includeFromJson: false, includeToJson: false)
            Exception exception)?
        exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiResponseData<T> value) data,
    required TResult Function(ApiResponseError<T> value) error,
    required TResult Function(ApiResponseException<T> value) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiResponseData<T> value)? data,
    TResult? Function(ApiResponseError<T> value)? error,
    TResult? Function(ApiResponseException<T> value)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiResponseData<T> value)? data,
    TResult Function(ApiResponseError<T> value)? error,
    TResult Function(ApiResponseException<T> value)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<T, $Res> {
  factory $ApiResponseCopyWith(
          ApiResponse<T> value, $Res Function(ApiResponse<T>) then) =
      _$ApiResponseCopyWithImpl<T, $Res, ApiResponse<T>>;
}

/// @nodoc
class _$ApiResponseCopyWithImpl<T, $Res, $Val extends ApiResponse<T>>
    implements $ApiResponseCopyWith<T, $Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ApiResponseDataImplCopyWith<T, $Res> {
  factory _$$ApiResponseDataImplCopyWith(_$ApiResponseDataImpl<T> value,
          $Res Function(_$ApiResponseDataImpl<T>) then) =
      __$$ApiResponseDataImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ApiResponseDataImplCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$ApiResponseDataImpl<T>>
    implements _$$ApiResponseDataImplCopyWith<T, $Res> {
  __$$ApiResponseDataImplCopyWithImpl(_$ApiResponseDataImpl<T> _value,
      $Res Function(_$ApiResponseDataImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ApiResponseDataImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ApiResponseDataImpl<T> extends ApiResponseData<T> {
  const _$ApiResponseDataImpl({required this.data}) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'ApiResponse<$T>.data(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseDataImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseDataImplCopyWith<T, _$ApiResponseDataImpl<T>> get copyWith =>
      __$$ApiResponseDataImplCopyWithImpl<T, _$ApiResponseDataImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(ApiError error) error,
    required TResult Function(
            @JsonKey(includeFromJson: false, includeToJson: false)
            Exception exception)
        exception,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function(ApiError error)? error,
    TResult? Function(
            @JsonKey(includeFromJson: false, includeToJson: false)
            Exception exception)?
        exception,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(ApiError error)? error,
    TResult Function(
            @JsonKey(includeFromJson: false, includeToJson: false)
            Exception exception)?
        exception,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiResponseData<T> value) data,
    required TResult Function(ApiResponseError<T> value) error,
    required TResult Function(ApiResponseException<T> value) exception,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiResponseData<T> value)? data,
    TResult? Function(ApiResponseError<T> value)? error,
    TResult? Function(ApiResponseException<T> value)? exception,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiResponseData<T> value)? data,
    TResult Function(ApiResponseError<T> value)? error,
    TResult Function(ApiResponseException<T> value)? exception,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ApiResponseData<T> extends ApiResponse<T> {
  const factory ApiResponseData({required final T data}) =
      _$ApiResponseDataImpl<T>;
  const ApiResponseData._() : super._();

  T get data;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiResponseDataImplCopyWith<T, _$ApiResponseDataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiResponseErrorImplCopyWith<T, $Res> {
  factory _$$ApiResponseErrorImplCopyWith(_$ApiResponseErrorImpl<T> value,
          $Res Function(_$ApiResponseErrorImpl<T>) then) =
      __$$ApiResponseErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiError error});
}

/// @nodoc
class __$$ApiResponseErrorImplCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$ApiResponseErrorImpl<T>>
    implements _$$ApiResponseErrorImplCopyWith<T, $Res> {
  __$$ApiResponseErrorImplCopyWithImpl(_$ApiResponseErrorImpl<T> _value,
      $Res Function(_$ApiResponseErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ApiResponseErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiError,
    ));
  }
}

/// @nodoc

class _$ApiResponseErrorImpl<T> extends ApiResponseError<T> {
  const _$ApiResponseErrorImpl({required this.error}) : super._();

  @override
  final ApiError error;

  @override
  String toString() {
    return 'ApiResponse<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseErrorImplCopyWith<T, _$ApiResponseErrorImpl<T>> get copyWith =>
      __$$ApiResponseErrorImplCopyWithImpl<T, _$ApiResponseErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(ApiError error) error,
    required TResult Function(
            @JsonKey(includeFromJson: false, includeToJson: false)
            Exception exception)
        exception,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function(ApiError error)? error,
    TResult? Function(
            @JsonKey(includeFromJson: false, includeToJson: false)
            Exception exception)?
        exception,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(ApiError error)? error,
    TResult Function(
            @JsonKey(includeFromJson: false, includeToJson: false)
            Exception exception)?
        exception,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiResponseData<T> value) data,
    required TResult Function(ApiResponseError<T> value) error,
    required TResult Function(ApiResponseException<T> value) exception,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiResponseData<T> value)? data,
    TResult? Function(ApiResponseError<T> value)? error,
    TResult? Function(ApiResponseException<T> value)? exception,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiResponseData<T> value)? data,
    TResult Function(ApiResponseError<T> value)? error,
    TResult Function(ApiResponseException<T> value)? exception,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ApiResponseError<T> extends ApiResponse<T> {
  const factory ApiResponseError({required final ApiError error}) =
      _$ApiResponseErrorImpl<T>;
  const ApiResponseError._() : super._();

  ApiError get error;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiResponseErrorImplCopyWith<T, _$ApiResponseErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiResponseExceptionImplCopyWith<T, $Res> {
  factory _$$ApiResponseExceptionImplCopyWith(
          _$ApiResponseExceptionImpl<T> value,
          $Res Function(_$ApiResponseExceptionImpl<T>) then) =
      __$$ApiResponseExceptionImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false)
      Exception exception});
}

/// @nodoc
class __$$ApiResponseExceptionImplCopyWithImpl<T, $Res>
    extends _$ApiResponseCopyWithImpl<T, $Res, _$ApiResponseExceptionImpl<T>>
    implements _$$ApiResponseExceptionImplCopyWith<T, $Res> {
  __$$ApiResponseExceptionImplCopyWithImpl(_$ApiResponseExceptionImpl<T> _value,
      $Res Function(_$ApiResponseExceptionImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$ApiResponseExceptionImpl<T>(
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

@JsonSerializable(createFactory: false, createToJson: false)
class _$ApiResponseExceptionImpl<T> extends ApiResponseException<T> {
  const _$ApiResponseExceptionImpl(
      {@JsonKey(includeFromJson: false, includeToJson: false)
      required this.exception})
      : super._();

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Exception exception;

  @override
  String toString() {
    return 'ApiResponse<$T>.exception(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseExceptionImpl<T> &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseExceptionImplCopyWith<T, _$ApiResponseExceptionImpl<T>>
      get copyWith => __$$ApiResponseExceptionImplCopyWithImpl<T,
          _$ApiResponseExceptionImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function(ApiError error) error,
    required TResult Function(
            @JsonKey(includeFromJson: false, includeToJson: false)
            Exception exception)
        exception,
  }) {
    return exception(this.exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function(ApiError error)? error,
    TResult? Function(
            @JsonKey(includeFromJson: false, includeToJson: false)
            Exception exception)?
        exception,
  }) {
    return exception?.call(this.exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function(ApiError error)? error,
    TResult Function(
            @JsonKey(includeFromJson: false, includeToJson: false)
            Exception exception)?
        exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this.exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiResponseData<T> value) data,
    required TResult Function(ApiResponseError<T> value) error,
    required TResult Function(ApiResponseException<T> value) exception,
  }) {
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiResponseData<T> value)? data,
    TResult? Function(ApiResponseError<T> value)? error,
    TResult? Function(ApiResponseException<T> value)? exception,
  }) {
    return exception?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiResponseData<T> value)? data,
    TResult Function(ApiResponseError<T> value)? error,
    TResult Function(ApiResponseException<T> value)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class ApiResponseException<T> extends ApiResponse<T> {
  const factory ApiResponseException(
      {@JsonKey(includeFromJson: false, includeToJson: false)
      required final Exception exception}) = _$ApiResponseExceptionImpl<T>;
  const ApiResponseException._() : super._();

  @JsonKey(includeFromJson: false, includeToJson: false)
  Exception get exception;

  /// Create a copy of ApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiResponseExceptionImplCopyWith<T, _$ApiResponseExceptionImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
