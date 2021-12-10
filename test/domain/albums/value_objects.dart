import 'package:bundle/domain/albums/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group('AlbumTitle', () {
    test('Should create an album title', () {
      // arrange
      const titleStr = 'test title';

      // act
      AlbumTitle title = AlbumTitle(titleStr);

      // assert
      expect(title, right(titleStr));
    });
  });
}
