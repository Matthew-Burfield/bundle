import 'package:bloc/bloc.dart';
import 'package:bundle/domain/albums/album.dart';
import 'package:bundle/domain/albums/album_failure.dart';
import 'package:bundle/domain/albums/i_album_repository.dart';
import 'package:bundle/domain/albums/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'album_form_state.dart';
part 'album_form_cubit.freezed.dart';

@injectable
class AlbumFormCubit extends Cubit<AlbumFormState> {
  final IAlbumRepository _albumRepository;

  AlbumFormCubit(this._albumRepository) : super(AlbumFormState.initial());

  void initialized(Option<Album> albumOption) async {
    emit(
      albumOption.fold(
        () => state,
        (initialAlbum) => state.copyWith(
          album: initialAlbum,
          isEditing: true,
        ),
      ),
    );
  }

  void titleChanged(title) {
    emit(
      state.copyWith(
        album: state.album.copyWith(title: AlbumTitle(title)),
        saveFailureOrSuccessOption: none(),
      ),
    );
  }

  void saved() async {
    Either<AlbumFailure, Unit> failureOrSuccess = right(unit);

    emit(
      state.copyWith(
        isSaving: true,
        saveFailureOrSuccessOption: none(),
      ),
    );

    if (state.album.failureOption.isNone()) {
      failureOrSuccess = state.isEditing
          ? await _albumRepository.update(state.album)
          : await _albumRepository.create(state.album);
    }

    emit(
      state.copyWith(
        isSaving: false,
        showErrorMessages: true,
        saveFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }
}
