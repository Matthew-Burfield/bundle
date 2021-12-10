import 'package:bundle/domain/albums/album.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import 'album_failure.dart';

abstract class IAlbumRepository {
  Stream<Either<AlbumFailure, KtList<Album>>> watchAll();
  Stream<Either<AlbumFailure, KtList<Album>>> watchUncompleted();
  Future<Either<AlbumFailure, Unit>> create(Album album);
  Future<Either<AlbumFailure, Unit>> update(Album album);
  Future<Either<AlbumFailure, Unit>> delete(Album album);
}
