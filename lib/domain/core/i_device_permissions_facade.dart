abstract class IDevicePermissionsFacade {
  /* Need to know...

  1. The app has been granted storage permission
  2. The app has been declined storge permission
  3. Request the storage permisson and return if
      the permission is now granted or was declined
  */

  Future<bool> isStoragePermissionGranted();

  /// Returns true if the requst is granted, false otherwise.
  Future<bool> requestStoragePermission();
}
