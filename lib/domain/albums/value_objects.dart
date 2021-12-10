import 'package:bundle/domain/core/failures.dart';
import 'package:bundle/domain/core/value_objects.dart';
import 'package:bundle/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';

class AlbumTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 100;

  factory AlbumTitle(String input) {
    return AlbumTitle._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const AlbumTitle._(this.value);
}
