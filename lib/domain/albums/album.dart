import 'package:bundle/domain/albums/value_objects.dart';
import 'package:bundle/domain/core/value_failures.dart';
import 'package:bundle/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'album.freezed.dart';

@freezed
class Album with _$Album {
  const Album._();

  const factory Album({
    required UniqueId id,
    required AlbumTitle title,
  }) = _Album;

  factory Album.empty() => Album(
        id: UniqueId(),
        title: AlbumTitle(''),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}
