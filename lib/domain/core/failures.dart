import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'failures.freezed.dart';

@freezed
class Failure<T> with _$Failure<T> {
  const factory Failure.permissionFailure() = PermissionFailure;
}
