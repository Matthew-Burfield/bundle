import 'package:bundle/domain/core/failures.dart';
import 'package:bundle/domain/core/i_device_permissions_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:permission_handler/permission_handler.dart'
    as permission_handler show openAppSettings, PermissionStatus;

part 'permission_facade.freezed.dart';

@Injectable(as: IDevicePermissionsFacade)
class PermissionFacade implements IDevicePermissionsFacade {
  /// Check the status of the storage [Permission]
  @override
  Future<Either<PermissionFailure, PermissionStatus>>
      getStoragePermissionStatus() async {
    try {
      final permissionHandlerStatus = await Permission.storage.status;
      return right(_convertPermissionHandlerStatus(permissionHandlerStatus));
    } catch (e) {
      return left(const PermissionFailure());
    }
  }

  /// Request storage permissions
  /// returns new permission status
  @override
  Future<Either<PermissionFailure, PermissionStatus>>
      requestStorageAccess() async {
    try {
      final permissionHandlerStatus = await Permission.storage.request();
      return right(_convertPermissionHandlerStatus(permissionHandlerStatus));
    } catch (e) {
      return left(const PermissionFailure());
    }
  }

  /// Open the app settings.
  @override
  Future<Either<PermissionFailure, bool>> openAppSettings() async {
    try {
      final settingsIsOpened = await permission_handler.openAppSettings();
      return right(settingsIsOpened);
    } catch (e) {
      return left(const PermissionFailure());
    }
  }
}

@freezed
class PermissionStatus with _$PermissionStatus {
  const factory PermissionStatus.granted() = _Granted;
  const factory PermissionStatus.denied() = _Denied;
  const factory PermissionStatus.restricted() = _Restricted;
  const factory PermissionStatus.limited() = _Limited;
  const factory PermissionStatus.perminantlyDenied() = _PerminantlyDenied;
  const factory PermissionStatus.unknown() = _Unknown;
}

PermissionStatus _convertPermissionHandlerStatus(
    permission_handler.PermissionStatus status) {
  switch (status) {
    case permission_handler.PermissionStatus.granted:
      {
        return const PermissionStatus.granted();
      }
    case permission_handler.PermissionStatus.denied:
      {
        return const PermissionStatus.denied();
      }
    case permission_handler.PermissionStatus.restricted:
      {
        return const PermissionStatus.restricted();
      }
    case permission_handler.PermissionStatus.limited:
      {
        return const PermissionStatus.limited();
      }
    case permission_handler.PermissionStatus.permanentlyDenied:
      {
        return const PermissionStatus.perminantlyDenied();
      }
    default:
      {
        // Will only ever get here if the permission_handler API has a breaking change
        return const PermissionStatus.unknown();
      }
  }
}
