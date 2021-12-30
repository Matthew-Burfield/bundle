// Mocks generated by Mockito 5.0.17 from annotations
// in bundle/test/application/image_upload/image_upload_cubit_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:bundle/domain/core/failures.dart' as _i5;
import 'package:bundle/domain/core/i_device_permissions_facade.dart' as _i3;
import 'package:bundle/infrastructure/core/permission_facade.dart' as _i6;
import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [IDevicePermissionsFacade].
///
/// See the documentation for Mockito's code generation for more information.
class MockIDevicePermissionsFacade extends _i1.Mock
    implements _i3.IDevicePermissionsFacade {
  MockIDevicePermissionsFacade() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.PermissionFailure<dynamic>, _i6.PermissionStatus>>
      getStoragePermissionStatus() => (super.noSuchMethod(
          Invocation.method(#getStoragePermissionStatus, []),
          returnValue: Future<_i2.Either<_i5.PermissionFailure<dynamic>, _i6.PermissionStatus>>.value(
              _FakeEither_0<_i5.PermissionFailure<dynamic>,
                  _i6.PermissionStatus>())) as _i4
          .Future<_i2.Either<_i5.PermissionFailure<dynamic>, _i6.PermissionStatus>>);
  @override
  _i4.Future<_i2.Either<_i5.PermissionFailure<dynamic>, _i6.PermissionStatus>>
      requestStorageAccess() =>
          (super.noSuchMethod(Invocation.method(#requestStorageAccess, []),
              returnValue:
                  Future<_i2.Either<_i5.PermissionFailure<dynamic>, _i6.PermissionStatus>>.value(
                      _FakeEither_0<_i5.PermissionFailure<dynamic>,
                          _i6.PermissionStatus>())) as _i4
              .Future<_i2.Either<_i5.PermissionFailure<dynamic>, _i6.PermissionStatus>>);
  @override
  _i4.Future<_i2.Either<_i5.PermissionFailure<dynamic>, bool>>
      openAppSettings() => (super.noSuchMethod(
          Invocation.method(#openAppSettings, []),
          returnValue:
              Future<_i2.Either<_i5.PermissionFailure<dynamic>, bool>>.value(
                  _FakeEither_0<_i5.PermissionFailure<dynamic>, bool>())) as _i4
          .Future<_i2.Either<_i5.PermissionFailure<dynamic>, bool>>);
}