// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'permission_facade.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PermissionStatusTearOff {
  const _$PermissionStatusTearOff();

  _Granted granted() {
    return const _Granted();
  }

  _Denied denied() {
    return const _Denied();
  }

  _Restricted restricted() {
    return const _Restricted();
  }

  _Limited limited() {
    return const _Limited();
  }

  _PerminantlyDenied perminantlyDenied() {
    return const _PerminantlyDenied();
  }

  _Unknown unknown() {
    return const _Unknown();
  }
}

/// @nodoc
const $PermissionStatus = _$PermissionStatusTearOff();

/// @nodoc
mixin _$PermissionStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() granted,
    required TResult Function() denied,
    required TResult Function() restricted,
    required TResult Function() limited,
    required TResult Function() perminantlyDenied,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? granted,
    TResult Function()? denied,
    TResult Function()? restricted,
    TResult Function()? limited,
    TResult Function()? perminantlyDenied,
    TResult Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? granted,
    TResult Function()? denied,
    TResult Function()? restricted,
    TResult Function()? limited,
    TResult Function()? perminantlyDenied,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Granted value) granted,
    required TResult Function(_Denied value) denied,
    required TResult Function(_Restricted value) restricted,
    required TResult Function(_Limited value) limited,
    required TResult Function(_PerminantlyDenied value) perminantlyDenied,
    required TResult Function(_Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Granted value)? granted,
    TResult Function(_Denied value)? denied,
    TResult Function(_Restricted value)? restricted,
    TResult Function(_Limited value)? limited,
    TResult Function(_PerminantlyDenied value)? perminantlyDenied,
    TResult Function(_Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Granted value)? granted,
    TResult Function(_Denied value)? denied,
    TResult Function(_Restricted value)? restricted,
    TResult Function(_Limited value)? limited,
    TResult Function(_PerminantlyDenied value)? perminantlyDenied,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionStatusCopyWith<$Res> {
  factory $PermissionStatusCopyWith(
          PermissionStatus value, $Res Function(PermissionStatus) then) =
      _$PermissionStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$PermissionStatusCopyWithImpl<$Res>
    implements $PermissionStatusCopyWith<$Res> {
  _$PermissionStatusCopyWithImpl(this._value, this._then);

  final PermissionStatus _value;
  // ignore: unused_field
  final $Res Function(PermissionStatus) _then;
}

/// @nodoc
abstract class _$GrantedCopyWith<$Res> {
  factory _$GrantedCopyWith(_Granted value, $Res Function(_Granted) then) =
      __$GrantedCopyWithImpl<$Res>;
}

/// @nodoc
class __$GrantedCopyWithImpl<$Res> extends _$PermissionStatusCopyWithImpl<$Res>
    implements _$GrantedCopyWith<$Res> {
  __$GrantedCopyWithImpl(_Granted _value, $Res Function(_Granted) _then)
      : super(_value, (v) => _then(v as _Granted));

  @override
  _Granted get _value => super._value as _Granted;
}

/// @nodoc

class _$_Granted implements _Granted {
  const _$_Granted();

  @override
  String toString() {
    return 'PermissionStatus.granted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Granted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() granted,
    required TResult Function() denied,
    required TResult Function() restricted,
    required TResult Function() limited,
    required TResult Function() perminantlyDenied,
    required TResult Function() unknown,
  }) {
    return granted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? granted,
    TResult Function()? denied,
    TResult Function()? restricted,
    TResult Function()? limited,
    TResult Function()? perminantlyDenied,
    TResult Function()? unknown,
  }) {
    return granted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? granted,
    TResult Function()? denied,
    TResult Function()? restricted,
    TResult Function()? limited,
    TResult Function()? perminantlyDenied,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (granted != null) {
      return granted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Granted value) granted,
    required TResult Function(_Denied value) denied,
    required TResult Function(_Restricted value) restricted,
    required TResult Function(_Limited value) limited,
    required TResult Function(_PerminantlyDenied value) perminantlyDenied,
    required TResult Function(_Unknown value) unknown,
  }) {
    return granted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Granted value)? granted,
    TResult Function(_Denied value)? denied,
    TResult Function(_Restricted value)? restricted,
    TResult Function(_Limited value)? limited,
    TResult Function(_PerminantlyDenied value)? perminantlyDenied,
    TResult Function(_Unknown value)? unknown,
  }) {
    return granted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Granted value)? granted,
    TResult Function(_Denied value)? denied,
    TResult Function(_Restricted value)? restricted,
    TResult Function(_Limited value)? limited,
    TResult Function(_PerminantlyDenied value)? perminantlyDenied,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (granted != null) {
      return granted(this);
    }
    return orElse();
  }
}

abstract class _Granted implements PermissionStatus {
  const factory _Granted() = _$_Granted;
}

/// @nodoc
abstract class _$DeniedCopyWith<$Res> {
  factory _$DeniedCopyWith(_Denied value, $Res Function(_Denied) then) =
      __$DeniedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeniedCopyWithImpl<$Res> extends _$PermissionStatusCopyWithImpl<$Res>
    implements _$DeniedCopyWith<$Res> {
  __$DeniedCopyWithImpl(_Denied _value, $Res Function(_Denied) _then)
      : super(_value, (v) => _then(v as _Denied));

  @override
  _Denied get _value => super._value as _Denied;
}

/// @nodoc

class _$_Denied implements _Denied {
  const _$_Denied();

  @override
  String toString() {
    return 'PermissionStatus.denied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Denied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() granted,
    required TResult Function() denied,
    required TResult Function() restricted,
    required TResult Function() limited,
    required TResult Function() perminantlyDenied,
    required TResult Function() unknown,
  }) {
    return denied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? granted,
    TResult Function()? denied,
    TResult Function()? restricted,
    TResult Function()? limited,
    TResult Function()? perminantlyDenied,
    TResult Function()? unknown,
  }) {
    return denied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? granted,
    TResult Function()? denied,
    TResult Function()? restricted,
    TResult Function()? limited,
    TResult Function()? perminantlyDenied,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Granted value) granted,
    required TResult Function(_Denied value) denied,
    required TResult Function(_Restricted value) restricted,
    required TResult Function(_Limited value) limited,
    required TResult Function(_PerminantlyDenied value) perminantlyDenied,
    required TResult Function(_Unknown value) unknown,
  }) {
    return denied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Granted value)? granted,
    TResult Function(_Denied value)? denied,
    TResult Function(_Restricted value)? restricted,
    TResult Function(_Limited value)? limited,
    TResult Function(_PerminantlyDenied value)? perminantlyDenied,
    TResult Function(_Unknown value)? unknown,
  }) {
    return denied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Granted value)? granted,
    TResult Function(_Denied value)? denied,
    TResult Function(_Restricted value)? restricted,
    TResult Function(_Limited value)? limited,
    TResult Function(_PerminantlyDenied value)? perminantlyDenied,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied(this);
    }
    return orElse();
  }
}

abstract class _Denied implements PermissionStatus {
  const factory _Denied() = _$_Denied;
}

/// @nodoc
abstract class _$RestrictedCopyWith<$Res> {
  factory _$RestrictedCopyWith(
          _Restricted value, $Res Function(_Restricted) then) =
      __$RestrictedCopyWithImpl<$Res>;
}

/// @nodoc
class __$RestrictedCopyWithImpl<$Res>
    extends _$PermissionStatusCopyWithImpl<$Res>
    implements _$RestrictedCopyWith<$Res> {
  __$RestrictedCopyWithImpl(
      _Restricted _value, $Res Function(_Restricted) _then)
      : super(_value, (v) => _then(v as _Restricted));

  @override
  _Restricted get _value => super._value as _Restricted;
}

/// @nodoc

class _$_Restricted implements _Restricted {
  const _$_Restricted();

  @override
  String toString() {
    return 'PermissionStatus.restricted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Restricted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() granted,
    required TResult Function() denied,
    required TResult Function() restricted,
    required TResult Function() limited,
    required TResult Function() perminantlyDenied,
    required TResult Function() unknown,
  }) {
    return restricted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? granted,
    TResult Function()? denied,
    TResult Function()? restricted,
    TResult Function()? limited,
    TResult Function()? perminantlyDenied,
    TResult Function()? unknown,
  }) {
    return restricted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? granted,
    TResult Function()? denied,
    TResult Function()? restricted,
    TResult Function()? limited,
    TResult Function()? perminantlyDenied,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (restricted != null) {
      return restricted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Granted value) granted,
    required TResult Function(_Denied value) denied,
    required TResult Function(_Restricted value) restricted,
    required TResult Function(_Limited value) limited,
    required TResult Function(_PerminantlyDenied value) perminantlyDenied,
    required TResult Function(_Unknown value) unknown,
  }) {
    return restricted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Granted value)? granted,
    TResult Function(_Denied value)? denied,
    TResult Function(_Restricted value)? restricted,
    TResult Function(_Limited value)? limited,
    TResult Function(_PerminantlyDenied value)? perminantlyDenied,
    TResult Function(_Unknown value)? unknown,
  }) {
    return restricted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Granted value)? granted,
    TResult Function(_Denied value)? denied,
    TResult Function(_Restricted value)? restricted,
    TResult Function(_Limited value)? limited,
    TResult Function(_PerminantlyDenied value)? perminantlyDenied,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (restricted != null) {
      return restricted(this);
    }
    return orElse();
  }
}

abstract class _Restricted implements PermissionStatus {
  const factory _Restricted() = _$_Restricted;
}

/// @nodoc
abstract class _$LimitedCopyWith<$Res> {
  factory _$LimitedCopyWith(_Limited value, $Res Function(_Limited) then) =
      __$LimitedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LimitedCopyWithImpl<$Res> extends _$PermissionStatusCopyWithImpl<$Res>
    implements _$LimitedCopyWith<$Res> {
  __$LimitedCopyWithImpl(_Limited _value, $Res Function(_Limited) _then)
      : super(_value, (v) => _then(v as _Limited));

  @override
  _Limited get _value => super._value as _Limited;
}

/// @nodoc

class _$_Limited implements _Limited {
  const _$_Limited();

  @override
  String toString() {
    return 'PermissionStatus.limited()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Limited);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() granted,
    required TResult Function() denied,
    required TResult Function() restricted,
    required TResult Function() limited,
    required TResult Function() perminantlyDenied,
    required TResult Function() unknown,
  }) {
    return limited();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? granted,
    TResult Function()? denied,
    TResult Function()? restricted,
    TResult Function()? limited,
    TResult Function()? perminantlyDenied,
    TResult Function()? unknown,
  }) {
    return limited?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? granted,
    TResult Function()? denied,
    TResult Function()? restricted,
    TResult Function()? limited,
    TResult Function()? perminantlyDenied,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (limited != null) {
      return limited();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Granted value) granted,
    required TResult Function(_Denied value) denied,
    required TResult Function(_Restricted value) restricted,
    required TResult Function(_Limited value) limited,
    required TResult Function(_PerminantlyDenied value) perminantlyDenied,
    required TResult Function(_Unknown value) unknown,
  }) {
    return limited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Granted value)? granted,
    TResult Function(_Denied value)? denied,
    TResult Function(_Restricted value)? restricted,
    TResult Function(_Limited value)? limited,
    TResult Function(_PerminantlyDenied value)? perminantlyDenied,
    TResult Function(_Unknown value)? unknown,
  }) {
    return limited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Granted value)? granted,
    TResult Function(_Denied value)? denied,
    TResult Function(_Restricted value)? restricted,
    TResult Function(_Limited value)? limited,
    TResult Function(_PerminantlyDenied value)? perminantlyDenied,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (limited != null) {
      return limited(this);
    }
    return orElse();
  }
}

abstract class _Limited implements PermissionStatus {
  const factory _Limited() = _$_Limited;
}

/// @nodoc
abstract class _$PerminantlyDeniedCopyWith<$Res> {
  factory _$PerminantlyDeniedCopyWith(
          _PerminantlyDenied value, $Res Function(_PerminantlyDenied) then) =
      __$PerminantlyDeniedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PerminantlyDeniedCopyWithImpl<$Res>
    extends _$PermissionStatusCopyWithImpl<$Res>
    implements _$PerminantlyDeniedCopyWith<$Res> {
  __$PerminantlyDeniedCopyWithImpl(
      _PerminantlyDenied _value, $Res Function(_PerminantlyDenied) _then)
      : super(_value, (v) => _then(v as _PerminantlyDenied));

  @override
  _PerminantlyDenied get _value => super._value as _PerminantlyDenied;
}

/// @nodoc

class _$_PerminantlyDenied implements _PerminantlyDenied {
  const _$_PerminantlyDenied();

  @override
  String toString() {
    return 'PermissionStatus.perminantlyDenied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PerminantlyDenied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() granted,
    required TResult Function() denied,
    required TResult Function() restricted,
    required TResult Function() limited,
    required TResult Function() perminantlyDenied,
    required TResult Function() unknown,
  }) {
    return perminantlyDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? granted,
    TResult Function()? denied,
    TResult Function()? restricted,
    TResult Function()? limited,
    TResult Function()? perminantlyDenied,
    TResult Function()? unknown,
  }) {
    return perminantlyDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? granted,
    TResult Function()? denied,
    TResult Function()? restricted,
    TResult Function()? limited,
    TResult Function()? perminantlyDenied,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (perminantlyDenied != null) {
      return perminantlyDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Granted value) granted,
    required TResult Function(_Denied value) denied,
    required TResult Function(_Restricted value) restricted,
    required TResult Function(_Limited value) limited,
    required TResult Function(_PerminantlyDenied value) perminantlyDenied,
    required TResult Function(_Unknown value) unknown,
  }) {
    return perminantlyDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Granted value)? granted,
    TResult Function(_Denied value)? denied,
    TResult Function(_Restricted value)? restricted,
    TResult Function(_Limited value)? limited,
    TResult Function(_PerminantlyDenied value)? perminantlyDenied,
    TResult Function(_Unknown value)? unknown,
  }) {
    return perminantlyDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Granted value)? granted,
    TResult Function(_Denied value)? denied,
    TResult Function(_Restricted value)? restricted,
    TResult Function(_Limited value)? limited,
    TResult Function(_PerminantlyDenied value)? perminantlyDenied,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (perminantlyDenied != null) {
      return perminantlyDenied(this);
    }
    return orElse();
  }
}

abstract class _PerminantlyDenied implements PermissionStatus {
  const factory _PerminantlyDenied() = _$_PerminantlyDenied;
}

/// @nodoc
abstract class _$UnknownCopyWith<$Res> {
  factory _$UnknownCopyWith(_Unknown value, $Res Function(_Unknown) then) =
      __$UnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnknownCopyWithImpl<$Res> extends _$PermissionStatusCopyWithImpl<$Res>
    implements _$UnknownCopyWith<$Res> {
  __$UnknownCopyWithImpl(_Unknown _value, $Res Function(_Unknown) _then)
      : super(_value, (v) => _then(v as _Unknown));

  @override
  _Unknown get _value => super._value as _Unknown;
}

/// @nodoc

class _$_Unknown implements _Unknown {
  const _$_Unknown();

  @override
  String toString() {
    return 'PermissionStatus.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Unknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() granted,
    required TResult Function() denied,
    required TResult Function() restricted,
    required TResult Function() limited,
    required TResult Function() perminantlyDenied,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? granted,
    TResult Function()? denied,
    TResult Function()? restricted,
    TResult Function()? limited,
    TResult Function()? perminantlyDenied,
    TResult Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? granted,
    TResult Function()? denied,
    TResult Function()? restricted,
    TResult Function()? limited,
    TResult Function()? perminantlyDenied,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Granted value) granted,
    required TResult Function(_Denied value) denied,
    required TResult Function(_Restricted value) restricted,
    required TResult Function(_Limited value) limited,
    required TResult Function(_PerminantlyDenied value) perminantlyDenied,
    required TResult Function(_Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Granted value)? granted,
    TResult Function(_Denied value)? denied,
    TResult Function(_Restricted value)? restricted,
    TResult Function(_Limited value)? limited,
    TResult Function(_PerminantlyDenied value)? perminantlyDenied,
    TResult Function(_Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Granted value)? granted,
    TResult Function(_Denied value)? denied,
    TResult Function(_Restricted value)? restricted,
    TResult Function(_Limited value)? limited,
    TResult Function(_PerminantlyDenied value)? perminantlyDenied,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements PermissionStatus {
  const factory _Unknown() = _$_Unknown;
}
