// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  Home? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Home? data) loading,
    required TResult Function(Home data) success,
    required TResult Function(Home? data, String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Home? data)? loading,
    TResult? Function(Home data)? success,
    TResult? Function(Home? data, String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Home? data)? loading,
    TResult Function(Home data)? success,
    TResult Function(Home? data, String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoading value) loading,
    required TResult Function(_HomeSuccess value) success,
    required TResult Function(_HomeError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeLoading value)? loading,
    TResult? Function(_HomeSuccess value)? success,
    TResult? Function(_HomeError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoading value)? loading,
    TResult Function(_HomeSuccess value)? success,
    TResult Function(_HomeError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({Home data});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data!
          : data // ignore: cast_nullable_to_non_nullable
              as Home,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeLoadingCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeLoadingCopyWith(
          _$_HomeLoading value, $Res Function(_$_HomeLoading) then) =
      __$$_HomeLoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Home? data});
}

/// @nodoc
class __$$_HomeLoadingCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeLoading>
    implements _$$_HomeLoadingCopyWith<$Res> {
  __$$_HomeLoadingCopyWithImpl(
      _$_HomeLoading _value, $Res Function(_$_HomeLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_HomeLoading(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Home?,
    ));
  }
}

/// @nodoc

class _$_HomeLoading implements _HomeLoading {
  const _$_HomeLoading({required this.data});

  @override
  final Home? data;

  @override
  String toString() {
    return 'HomeState.loading(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeLoading &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeLoadingCopyWith<_$_HomeLoading> get copyWith =>
      __$$_HomeLoadingCopyWithImpl<_$_HomeLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Home? data) loading,
    required TResult Function(Home data) success,
    required TResult Function(Home? data, String error) error,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Home? data)? loading,
    TResult? Function(Home data)? success,
    TResult? Function(Home? data, String error)? error,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Home? data)? loading,
    TResult Function(Home data)? success,
    TResult Function(Home? data, String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoading value) loading,
    required TResult Function(_HomeSuccess value) success,
    required TResult Function(_HomeError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeLoading value)? loading,
    TResult? Function(_HomeSuccess value)? success,
    TResult? Function(_HomeError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoading value)? loading,
    TResult Function(_HomeSuccess value)? success,
    TResult Function(_HomeError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HomeLoading implements HomeState {
  const factory _HomeLoading({required final Home? data}) = _$_HomeLoading;

  @override
  Home? get data;
  @override
  @JsonKey(ignore: true)
  _$$_HomeLoadingCopyWith<_$_HomeLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HomeSuccessCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeSuccessCopyWith(
          _$_HomeSuccess value, $Res Function(_$_HomeSuccess) then) =
      __$$_HomeSuccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Home data});
}

/// @nodoc
class __$$_HomeSuccessCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeSuccess>
    implements _$$_HomeSuccessCopyWith<$Res> {
  __$$_HomeSuccessCopyWithImpl(
      _$_HomeSuccess _value, $Res Function(_$_HomeSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_HomeSuccess(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Home,
    ));
  }
}

/// @nodoc

class _$_HomeSuccess implements _HomeSuccess {
  const _$_HomeSuccess({required this.data});

  @override
  final Home data;

  @override
  String toString() {
    return 'HomeState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeSuccessCopyWith<_$_HomeSuccess> get copyWith =>
      __$$_HomeSuccessCopyWithImpl<_$_HomeSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Home? data) loading,
    required TResult Function(Home data) success,
    required TResult Function(Home? data, String error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Home? data)? loading,
    TResult? Function(Home data)? success,
    TResult? Function(Home? data, String error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Home? data)? loading,
    TResult Function(Home data)? success,
    TResult Function(Home? data, String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoading value) loading,
    required TResult Function(_HomeSuccess value) success,
    required TResult Function(_HomeError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeLoading value)? loading,
    TResult? Function(_HomeSuccess value)? success,
    TResult? Function(_HomeError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoading value)? loading,
    TResult Function(_HomeSuccess value)? success,
    TResult Function(_HomeError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _HomeSuccess implements HomeState {
  const factory _HomeSuccess({required final Home data}) = _$_HomeSuccess;

  @override
  Home get data;
  @override
  @JsonKey(ignore: true)
  _$$_HomeSuccessCopyWith<_$_HomeSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HomeErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeErrorCopyWith(
          _$_HomeError value, $Res Function(_$_HomeError) then) =
      __$$_HomeErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Home? data, String error});
}

/// @nodoc
class __$$_HomeErrorCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeError>
    implements _$$_HomeErrorCopyWith<$Res> {
  __$$_HomeErrorCopyWithImpl(
      _$_HomeError _value, $Res Function(_$_HomeError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? error = null,
  }) {
    return _then(_$_HomeError(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Home?,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HomeError implements _HomeError {
  const _$_HomeError({required this.data, required this.error});

  @override
  final Home? data;
  @override
  final String error;

  @override
  String toString() {
    return 'HomeState.error(data: $data, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeError &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeErrorCopyWith<_$_HomeError> get copyWith =>
      __$$_HomeErrorCopyWithImpl<_$_HomeError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Home? data) loading,
    required TResult Function(Home data) success,
    required TResult Function(Home? data, String error) error,
  }) {
    return error(data, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Home? data)? loading,
    TResult? Function(Home data)? success,
    TResult? Function(Home? data, String error)? error,
  }) {
    return error?.call(data, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Home? data)? loading,
    TResult Function(Home data)? success,
    TResult Function(Home? data, String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(data, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoading value) loading,
    required TResult Function(_HomeSuccess value) success,
    required TResult Function(_HomeError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeLoading value)? loading,
    TResult? Function(_HomeSuccess value)? success,
    TResult? Function(_HomeError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoading value)? loading,
    TResult Function(_HomeSuccess value)? success,
    TResult Function(_HomeError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _HomeError implements HomeState {
  const factory _HomeError(
      {required final Home? data, required final String error}) = _$_HomeError;

  @override
  Home? get data;
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_HomeErrorCopyWith<_$_HomeError> get copyWith =>
      throw _privateConstructorUsedError;
}
