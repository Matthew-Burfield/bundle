import 'package:bundle/infrastructure/core/permission_facade.dart';
import 'package:dartz/dartz.dart';
import 'failures.dart';

abstract class IDevicePermissionsFacade {
  Future<Either<PermissionFailure, PermissionStatus>>
      getStoragePermissionStatus();
  Future<Either<PermissionFailure, PermissionStatus>> requestStorageAccess();
  Future<Either<PermissionFailure, bool>> openAppSettings();
}
