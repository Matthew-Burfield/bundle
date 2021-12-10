part of 'album_watcher_cubit.dart';

@freezed
class AlbumWatcherState with _$AlbumWatcherState {
  const factory AlbumWatcherState.initial() = _Initial;
  const factory AlbumWatcherState.loadInProgress() = _LoadInProgress;
  const factory AlbumWatcherState.loadSuccess(KtList<Album> albums) = _LoadSuccess;
  const factory AlbumWatcherState.loadFailure(AlbumFailure failure) = _LoadFailure;
}
