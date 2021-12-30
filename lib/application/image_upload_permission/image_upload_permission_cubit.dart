import 'package:bloc/bloc.dart';
import 'package:bundle/domain/core/failures.dart';
import 'package:bundle/domain/core/i_device_permissions_facade.dart';
import 'package:bundle/infrastructure/core/permission_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'image_upload_permission_state.dart';
part 'image_upload_permission_cubit.freezed.dart';

@injectable
class ImageUploadPermissionCubit extends Cubit<ImageUploadPermissionState> {
  final IDevicePermissionsFacade _devicePermissionsFacade;

  ImageUploadPermissionCubit(this._devicePermissionsFacade)
      : super(const ImageUploadPermissionState.initial());

  void checkStoragePermissionStatus() async {
    final status = await _devicePermissionsFacade.getStoragePermissionStatus();
    _checkPermissions(status);
  }

  void requestStorageAccess() async {
    final status = await _devicePermissionsFacade.requestStorageAccess();
    _checkPermissions(status);
  }

  void openAppSettings() async {
    await _devicePermissionsFacade.openAppSettings();
    final status = await _devicePermissionsFacade.getStoragePermissionStatus();
    _checkPermissions(status);
  }

  void _checkPermissions(Either<PermissionFailure, PermissionStatus> status) {
    status.fold(
      (l) {
        // TODO: Handle the case where an error is thrown from the permission handler library
        return null;
      },
      (r) {
        r.map(
          granted: (_) {
            emit(const ImageUploadPermissionState.granted());
          },
          denied: (_) {
            emit(const ImageUploadPermissionState.deniedOrNotYetGranted());
          },
          restricted: (_) {
            emit(const ImageUploadPermissionState.restrictedAccess());
          },
          limited: (_) {
            emit(const ImageUploadPermissionState.limitedAccess());
          },
          perminantlyDenied: (_) {
            emit(const ImageUploadPermissionState.permanentlyDenied());
          },
          unknown: (_) {
            emit(const ImageUploadPermissionState.deniedOrNotYetGranted());
          },
        );
      },
    );
  }
}
