part of 'image_upload_permission_cubit.dart';

@freezed
class ImageUploadPermissionState with _$ImageUploadPermissionState {
  const factory ImageUploadPermissionState.initial() = _Initial;
  const factory ImageUploadPermissionState.granted() = _Granted;
  const factory ImageUploadPermissionState.deniedOrNotYetGranted() =
      _DeniedOrNotYetGranted;
  const factory ImageUploadPermissionState.permanentlyDenied() =
      _PermanentlyDenied;
  const factory ImageUploadPermissionState.restrictedAccess() =
      _RestrictedAccess;
  const factory ImageUploadPermissionState.limitedAccess() = _LimitedAccess;
  const factory ImageUploadPermissionState.unknownOrError() = _UnknownOrError;
}
