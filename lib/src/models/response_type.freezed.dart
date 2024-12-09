// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResponseType<T> {
  T? get results => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of ResponseType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseTypeCopyWith<T, ResponseType<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseTypeCopyWith<T, $Res> {
  factory $ResponseTypeCopyWith(
          ResponseType<T> value, $Res Function(ResponseType<T>) then) =
      _$ResponseTypeCopyWithImpl<T, $Res, ResponseType<T>>;
  @useResult
  $Res call({T? results, String? error});
}

/// @nodoc
class _$ResponseTypeCopyWithImpl<T, $Res, $Val extends ResponseType<T>>
    implements $ResponseTypeCopyWith<T, $Res> {
  _$ResponseTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as T?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseTypeImplCopyWith<T, $Res>
    implements $ResponseTypeCopyWith<T, $Res> {
  factory _$$ResponseTypeImplCopyWith(_$ResponseTypeImpl<T> value,
          $Res Function(_$ResponseTypeImpl<T>) then) =
      __$$ResponseTypeImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T? results, String? error});
}

/// @nodoc
class __$$ResponseTypeImplCopyWithImpl<T, $Res>
    extends _$ResponseTypeCopyWithImpl<T, $Res, _$ResponseTypeImpl<T>>
    implements _$$ResponseTypeImplCopyWith<T, $Res> {
  __$$ResponseTypeImplCopyWithImpl(
      _$ResponseTypeImpl<T> _value, $Res Function(_$ResponseTypeImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ResponseType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
    Object? error = freezed,
  }) {
    return _then(_$ResponseTypeImpl<T>(
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as T?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ResponseTypeImpl<T> implements _ResponseType<T> {
  const _$ResponseTypeImpl({required this.results, required this.error});

  @override
  final T? results;
  @override
  final String? error;

  @override
  String toString() {
    return 'ResponseType<$T>(results: $results, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseTypeImpl<T> &&
            const DeepCollectionEquality().equals(other.results, results) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(results), error);

  /// Create a copy of ResponseType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseTypeImplCopyWith<T, _$ResponseTypeImpl<T>> get copyWith =>
      __$$ResponseTypeImplCopyWithImpl<T, _$ResponseTypeImpl<T>>(
          this, _$identity);
}

abstract class _ResponseType<T> implements ResponseType<T> {
  const factory _ResponseType(
      {required final T? results,
      required final String? error}) = _$ResponseTypeImpl<T>;

  @override
  T? get results;
  @override
  String? get error;

  /// Create a copy of ResponseType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseTypeImplCopyWith<T, _$ResponseTypeImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
