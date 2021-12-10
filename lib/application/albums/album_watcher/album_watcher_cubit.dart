import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bundle/domain/albums/album.dart';
import 'package:bundle/domain/albums/album_failure.dart';
import 'package:bundle/domain/albums/i_album_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'album_watcher_state.dart';
part 'album_watcher_cubit.freezed.dart';

@injectable
class AlbumWatcherCubit extends Cubit<AlbumWatcherState> {
  final IAlbumRepository _albumRepository;

  AlbumWatcherCubit(this._albumRepository)
      : super(const AlbumWatcherState.initial());

  StreamSubscription<Either<AlbumFailure, KtList<Album>>>?
      _albumStreamSubscription;

  void watchAllStarted() async {
    print('load in progress');
    emit(const AlbumWatcherState.loadInProgress());
    await _albumStreamSubscription?.cancel();
    _albumStreamSubscription = _albumRepository
        .watchAll()
        .listen((failureOrAlbums) => albumsReceived(failureOrAlbums));
  }

  void watchUncompletedStarted() async {
    emit(const AlbumWatcherState.loadInProgress());
    await _albumStreamSubscription?.cancel();
    _albumStreamSubscription = _albumRepository
        .watchUncompleted()
        .listen((failureOrAlbums) => albumsReceived(failureOrAlbums));
  }

  void albumsReceived(Either<AlbumFailure, KtList<Album>> failureOrAlbums) {
    failureOrAlbums.fold((failure) {
      print('failure');
      emit(AlbumWatcherState.loadFailure(failure));
    }, (albums) {
      print('success');
      emit(AlbumWatcherState.loadSuccess(albums));
    });
  }

  @override
  Future<void> close() async {
    await _albumStreamSubscription?.cancel();
    return super.close();
  }
}
