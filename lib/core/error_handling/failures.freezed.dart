// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FailureEntity {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? message) baseFailure,
    required TResult Function() noConnectionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? message)? baseFailure,
    TResult? Function()? noConnectionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? message)? baseFailure,
    TResult Function()? noConnectionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseFailure value) baseFailure,
    required TResult Function(NoConnectionFailure value) noConnectionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BaseFailure value)? baseFailure,
    TResult? Function(NoConnectionFailure value)? noConnectionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseFailure value)? baseFailure,
    TResult Function(NoConnectionFailure value)? noConnectionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureEntityCopyWith<$Res> {
  factory $FailureEntityCopyWith(
          FailureEntity value, $Res Function(FailureEntity) then) =
      _$FailureEntityCopyWithImpl<$Res, FailureEntity>;
}

/// @nodoc
class _$FailureEntityCopyWithImpl<$Res, $Val extends FailureEntity>
    implements $FailureEntityCopyWith<$Res> {
  _$FailureEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BaseFailureCopyWith<$Res> {
  factory _$$BaseFailureCopyWith(
          _$BaseFailure value, $Res Function(_$BaseFailure) then) =
      __$$BaseFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String? message});
}

/// @nodoc
class __$$BaseFailureCopyWithImpl<$Res>
    extends _$FailureEntityCopyWithImpl<$Res, _$BaseFailure>
    implements _$$BaseFailureCopyWith<$Res> {
  __$$BaseFailureCopyWithImpl(
      _$BaseFailure _value, $Res Function(_$BaseFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = freezed,
  }) {
    return _then(_$BaseFailure(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BaseFailure extends BaseFailure {
  const _$BaseFailure({required this.title, this.message}) : super._();

  @override
  final String title;
  @override
  final String? message;

  @override
  String toString() {
    return 'FailureEntity.baseFailure(title: $title, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseFailure &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseFailureCopyWith<_$BaseFailure> get copyWith =>
      __$$BaseFailureCopyWithImpl<_$BaseFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? message) baseFailure,
    required TResult Function() noConnectionFailure,
  }) {
    return baseFailure(title, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? message)? baseFailure,
    TResult? Function()? noConnectionFailure,
  }) {
    return baseFailure?.call(title, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? message)? baseFailure,
    TResult Function()? noConnectionFailure,
    required TResult orElse(),
  }) {
    if (baseFailure != null) {
      return baseFailure(title, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseFailure value) baseFailure,
    required TResult Function(NoConnectionFailure value) noConnectionFailure,
  }) {
    return baseFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BaseFailure value)? baseFailure,
    TResult? Function(NoConnectionFailure value)? noConnectionFailure,
  }) {
    return baseFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseFailure value)? baseFailure,
    TResult Function(NoConnectionFailure value)? noConnectionFailure,
    required TResult orElse(),
  }) {
    if (baseFailure != null) {
      return baseFailure(this);
    }
    return orElse();
  }
}

abstract class BaseFailure extends FailureEntity {
  const factory BaseFailure(
      {required final String title, final String? message}) = _$BaseFailure;
  const BaseFailure._() : super._();

  String get title;
  String? get message;
  @JsonKey(ignore: true)
  _$$BaseFailureCopyWith<_$BaseFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoConnectionFailureCopyWith<$Res> {
  factory _$$NoConnectionFailureCopyWith(_$NoConnectionFailure value,
          $Res Function(_$NoConnectionFailure) then) =
      __$$NoConnectionFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoConnectionFailureCopyWithImpl<$Res>
    extends _$FailureEntityCopyWithImpl<$Res, _$NoConnectionFailure>
    implements _$$NoConnectionFailureCopyWith<$Res> {
  __$$NoConnectionFailureCopyWithImpl(
      _$NoConnectionFailure _value, $Res Function(_$NoConnectionFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoConnectionFailure extends NoConnectionFailure {
  const _$NoConnectionFailure() : super._();

  @override
  String toString() {
    return 'FailureEntity.noConnectionFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoConnectionFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String? message) baseFailure,
    required TResult Function() noConnectionFailure,
  }) {
    return noConnectionFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String? message)? baseFailure,
    TResult? Function()? noConnectionFailure,
  }) {
    return noConnectionFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String? message)? baseFailure,
    TResult Function()? noConnectionFailure,
    required TResult orElse(),
  }) {
    if (noConnectionFailure != null) {
      return noConnectionFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BaseFailure value) baseFailure,
    required TResult Function(NoConnectionFailure value) noConnectionFailure,
  }) {
    return noConnectionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BaseFailure value)? baseFailure,
    TResult? Function(NoConnectionFailure value)? noConnectionFailure,
  }) {
    return noConnectionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BaseFailure value)? baseFailure,
    TResult Function(NoConnectionFailure value)? noConnectionFailure,
    required TResult orElse(),
  }) {
    if (noConnectionFailure != null) {
      return noConnectionFailure(this);
    }
    return orElse();
  }
}

abstract class NoConnectionFailure extends FailureEntity {
  const factory NoConnectionFailure() = _$NoConnectionFailure;
  const NoConnectionFailure._() : super._();
}
