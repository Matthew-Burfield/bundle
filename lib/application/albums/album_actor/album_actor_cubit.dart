import 'package:bloc/bloc.dart';
import 'package:bundle/domain/albums/album.dart';
import 'package:bundle/domain/albums/album_failure.dart';
import 'package:bundle/domain/albums/i_album_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'album_actor_state.dart';
part 'album_actor_cubit.freezed.dart';

@injectable
class AlbumActorCubit extends Cubit<AlbumActorState> {
  final IAlbumRepository _albumRepository;

  AlbumActorCubit(this._albumRepository) : super(AlbumActorState.initial());

  void deleteAlbum(Album album) async {
    emit(const AlbumActorState.actionInProgress());

    final possibleFailure = await _albumRepository.delete(album);
    emit(
      possibleFailure.fold(
        (f) => AlbumActorState.deleteFailure(f),
        (_) => const AlbumActorState.deleteSuccess(),
      ),
    );
  }
}
