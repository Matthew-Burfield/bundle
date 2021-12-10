part of 'album_form_cubit.dart';

@freezed
class AlbumFormState with _$AlbumFormState {
  const factory AlbumFormState({
    required Album album,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<AlbumFailure, Unit>> saveFailureOrSuccessOption,
  }) = _AlbumFormState;

  factory AlbumFormState.initial() => AlbumFormState(
        album: Album.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
