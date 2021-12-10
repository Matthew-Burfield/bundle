// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'album_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AlbumFormStateTearOff {
  const _$AlbumFormStateTearOff();

  _AlbumFormState call(
      {required Album album,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSaving,
      required Option<Either<AlbumFailure, Unit>> saveFailureOrSuccessOption}) {
    return _AlbumFormState(
      album: album,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $AlbumFormState = _$AlbumFormStateTearOff();

/// @nodoc
mixin _$AlbumFormState {
  Album get album => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<AlbumFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlbumFormStateCopyWith<AlbumFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumFormStateCopyWith<$Res> {
  factory $AlbumFormStateCopyWith(
          AlbumFormState value, $Res Function(AlbumFormState) then) =
      _$AlbumFormStateCopyWithImpl<$Res>;
  $Res call(
      {Album album,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<AlbumFailure, Unit>> saveFailureOrSuccessOption});

  $AlbumCopyWith<$Res> get album;
}

/// @nodoc
class _$AlbumFormStateCopyWithImpl<$Res>
    implements $AlbumFormStateCopyWith<$Res> {
  _$AlbumFormStateCopyWithImpl(this._value, this._then);

  final AlbumFormState _value;
  // ignore: unused_field
  final $Res Function(AlbumFormState) _then;

  @override
  $Res call({
    Object? album = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      album: album == freezed
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AlbumFailure, Unit>>,
    ));
  }

  @override
  $AlbumCopyWith<$Res> get album {
    return $AlbumCopyWith<$Res>(_value.album, (value) {
      return _then(_value.copyWith(album: value));
    });
  }
}

/// @nodoc
abstract class _$AlbumFormStateCopyWith<$Res>
    implements $AlbumFormStateCopyWith<$Res> {
  factory _$AlbumFormStateCopyWith(
          _AlbumFormState value, $Res Function(_AlbumFormState) then) =
      __$AlbumFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Album album,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<AlbumFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $AlbumCopyWith<$Res> get album;
}

/// @nodoc
class __$AlbumFormStateCopyWithImpl<$Res>
    extends _$AlbumFormStateCopyWithImpl<$Res>
    implements _$AlbumFormStateCopyWith<$Res> {
  __$AlbumFormStateCopyWithImpl(
      _AlbumFormState _value, $Res Function(_AlbumFormState) _then)
      : super(_value, (v) => _then(v as _AlbumFormState));

  @override
  _AlbumFormState get _value => super._value as _AlbumFormState;

  @override
  $Res call({
    Object? album = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_AlbumFormState(
      album: album == freezed
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AlbumFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_AlbumFormState implements _AlbumFormState {
  const _$_AlbumFormState(
      {required this.album,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving,
      required this.saveFailureOrSuccessOption});

  @override
  final Album album;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<AlbumFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'AlbumFormState(album: $album, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AlbumFormState &&
            const DeepCollectionEquality().equals(other.album, album) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(album),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$AlbumFormStateCopyWith<_AlbumFormState> get copyWith =>
      __$AlbumFormStateCopyWithImpl<_AlbumFormState>(this, _$identity);
}

abstract class _AlbumFormState implements AlbumFormState {
  const factory _AlbumFormState(
      {required Album album,
      required bool showErrorMessages,
      required bool isEditing,
      required bool isSaving,
      required Option<Either<AlbumFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_AlbumFormState;

  @override
  Album get album;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<AlbumFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$AlbumFormStateCopyWith<_AlbumFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
