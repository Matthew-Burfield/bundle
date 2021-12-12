import 'package:bundle/domain/core/entity.dart';
import 'package:bundle/domain/core/failures.dart';
import 'package:bundle/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'value_objects.dart';

part 'user.freezed.dart';

@freezed
class User with _$User implements IEntity {
  const factory User({
    required UniqueId id,
    required StringSingleLine name,
    required EmailAddress emailAddress,
  }) = _User;
}

extension UserX on User {
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(emailAddress.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}
