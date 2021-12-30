// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  PermissionFailure<T> permissionFailure<T>() {
    return PermissionFailure<T>();
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() permissionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? permissionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? permissionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionFailure<T> value) permissionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PermissionFailure<T> value)? permissionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionFailure<T> value)? permissionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<T, $Res> {
  factory $FailureCopyWith(Failure<T> value, $Res Function(Failure<T>) then) =
      _$FailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<T, $Res> implements $FailureCopyWith<T, $Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure<T> _value;
  // ignore: unused_field
  final $Res Function(Failure<T>) _then;
}

/// @nodoc
abstract class $PermissionFailureCopyWith<T, $Res> {
  factory $PermissionFailureCopyWith(PermissionFailure<T> value,
          $Res Function(PermissionFailure<T>) then) =
      _$PermissionFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$PermissionFailureCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res>
    implements $PermissionFailureCopyWith<T, $Res> {
  _$PermissionFailureCopyWithImpl(
      PermissionFailure<T> _value, $Res Function(PermissionFailure<T>) _then)
      : super(_value, (v) => _then(v as PermissionFailure<T>));

  @override
  PermissionFailure<T> get _value => super._value as PermissionFailure<T>;
}

/// @nodoc

class _$PermissionFailure<T>
    with DiagnosticableTreeMixin
    implements PermissionFailure<T> {
  const _$PermissionFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure<$T>.permissionFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Failure<$T>.permissionFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PermissionFailure<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() permissionFailure,
  }) {
    return permissionFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? permissionFailure,
  }) {
    return permissionFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? permissionFailure,
    required TResult orElse(),
  }) {
    if (permissionFailure != null) {
      return permissionFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionFailure<T> value) permissionFailure,
  }) {
    return permissionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PermissionFailure<T> value)? permissionFailure,
  }) {
    return permissionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionFailure<T> value)? permissionFailure,
    required TResult orElse(),
  }) {
    if (permissionFailure != null) {
      return permissionFailure(this);
    }
    return orElse();
  }
}

abstract class PermissionFailure<T> implements Failure<T> {
  const factory PermissionFailure() = _$PermissionFailure<T>;
}
