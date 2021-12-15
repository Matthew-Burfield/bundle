import 'package:bundle/domain/core/i_device_permissions_facade.dart';
// import 'package:permission_handler/permission_handler.dart';

class DevicePermissionsFacade implements IDevicePermissionsFacade {
  final Type _permissionHandler;

  DevicePermissionsFacade(this._permissionHandler);

  @override
  Future<bool> requestStoragePermission() async {
    // return Permission.storage.request().isGranted;
    return true;
  }

  @override
  Future<bool> isStoragePermissionGranted() async {
    // return Permission.storage.isGranted;
    return true;
  }
}
