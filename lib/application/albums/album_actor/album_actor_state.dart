part of 'album_actor_cubit.dart';

@freezed
class AlbumActorState with _$AlbumActorState {
  const factory AlbumActorState.initial() = _Initial;
  const factory AlbumActorState.actionInProgress() = ActionInProgress;
  const factory AlbumActorState.deleteFailure(AlbumFailure failure) =
      DeleteFailure;
  const factory AlbumActorState.deleteSuccess() = DeleteSuccess;
}
