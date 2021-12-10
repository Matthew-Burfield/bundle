import 'dart:async';

import 'package:bundle/domain/albums/album_failure.dart';
import 'package:bundle/domain/albums/album.dart';
import 'package:bundle/domain/albums/i_album_repository.dart';
import 'package:bundle/domain/albums/value_objects.dart';
import 'package:bundle/domain/core/value_objects.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: IAlbumRepository)
class AlbumRepository implements IAlbumRepository {
  KtList<Album> _albumList = KtList.from([
    Album(id: UniqueId(), title: AlbumTitle('First album1')),
    Album(id: UniqueId(), title: AlbumTitle('')),
  ]);
  final _albumStreamController =
      StreamController<Either<AlbumFailure, KtList<Album>>>();

  AlbumRepository() {
    _albumStreamController.add(right(_albumList));
  }

  @override
  Future<Either<AlbumFailure, Unit>> create(Album album) async {
    print('CREATE A NEW ALBUM');
    _albumList = _albumList.plusElement(album);
    _albumStreamController.add(right(_albumList));
    return right(unit);
  }

  @override
  Future<Either<AlbumFailure, Unit>> delete(Album album) async {
    print('DELETE AN ALBUM');
    return right(unit);
  }

  @override
  Future<Either<AlbumFailure, Unit>> update(Album album) async {
    print('UPDATE AN ALBUM');
    return right(unit);
  }

  @override
  Stream<Either<AlbumFailure, KtList<Album>>> watchAll() {
    print('WATCHING ALL ALBUMS');
    // Create a fake stream and return the albums after 1 second
    return _albumStreamController.stream;
  }

  @override
  Stream<Either<AlbumFailure, KtList<Album>>> watchUncompleted() async* {
    print('WATCHING UNCOMPLETED ALBUMS');
    // Create a fake stream and return the albums after 1 second
    await Future.delayed(const Duration(seconds: 1));
    yield right(_albumList);
  }
}
