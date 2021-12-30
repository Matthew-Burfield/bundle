import 'package:bloc_test/bloc_test.dart';
import 'package:bundle/application/image_upload_permission/image_upload_permission_cubit.dart';
import 'package:bundle/domain/core/failures.dart';
import 'package:bundle/domain/core/i_device_permissions_facade.dart';
import 'package:bundle/infrastructure/core/permission_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'image_upload_cubit_test.mocks.dart';

@GenerateMocks([IDevicePermissionsFacade])
void main() {
  late ImageUploadPermissionCubit cubit;
  late MockIDevicePermissionsFacade mockDevicePermissionsFacade;

  setUp(() {
    mockDevicePermissionsFacade = MockIDevicePermissionsFacade();
    cubit = ImageUploadPermissionCubit(mockDevicePermissionsFacade);
  });

  test('should have the initial state of the cubit be "deniedOrNotYetGranted"',
      () {
    // assert
    expect(cubit.state, equals(const ImageUploadPermissionState.initial()));
  });

  group('accessImagesOrDisplayPermissonRequest', () {
    blocTest(
      'should emit the granted state if the storage access is already granted.',
      build: () => cubit,
      setUp: () {
        when(mockDevicePermissionsFacade.getStoragePermissionStatus())
            .thenAnswer(
          (_) async => const Right(PermissionStatus.granted()),
        );
      },
      act: (ImageUploadPermissionCubit cubit) =>
          cubit.checkStoragePermissionStatus(),
      expect: () => [const ImageUploadPermissionState.granted()],
      verify: (_) {
        verify(mockDevicePermissionsFacade.getStoragePermissionStatus());
      },
    );

    blocTest(
      'should handle the case when getStoragePermissionStatus throws an error',
      build: () => cubit,
      setUp: () {
        when(mockDevicePermissionsFacade.getStoragePermissionStatus())
            .thenThrow(const PermissionFailure());
      },
      act: (ImageUploadPermissionCubit cubit) =>
          cubit.checkStoragePermissionStatus(),
      expect: () => [],
      verify: (_) {
        verify(mockDevicePermissionsFacade.getStoragePermissionStatus());
      },
    );

    blocTest(
      'should emit the perminantly denied access state if the storage access is perminantly denied (Android only).',
      build: () => cubit,
      setUp: () {
        when(mockDevicePermissionsFacade.getStoragePermissionStatus())
            .thenAnswer(
          (_) async => const Right(PermissionStatus.perminantlyDenied()),
        );
      },
      act: (ImageUploadPermissionCubit cubit) =>
          cubit.checkStoragePermissionStatus(),
      expect: () => [const ImageUploadPermissionState.permanentlyDenied()],
      verify: (_) {
        verify(mockDevicePermissionsFacade.getStoragePermissionStatus());
      },
    );

    blocTest(
      'should emit the restricted access state if the storage access is restricted (iOS only).',
      build: () => cubit,
      setUp: () {
        when(mockDevicePermissionsFacade.getStoragePermissionStatus())
            .thenAnswer(
          (_) async => const Right(PermissionStatus.restricted()),
        );
      },
      act: (ImageUploadPermissionCubit cubit) =>
          cubit.checkStoragePermissionStatus(),
      expect: () => [const ImageUploadPermissionState.restrictedAccess()],
      verify: (_) {
        verify(mockDevicePermissionsFacade.getStoragePermissionStatus());
      },
    );

    blocTest(
      'should emit the limited access state if the storage access is limited (iOS only).',
      build: () => cubit,
      setUp: () {
        when(mockDevicePermissionsFacade.getStoragePermissionStatus())
            .thenAnswer(
          (_) async => const Right(PermissionStatus.limited()),
        );
      },
      act: (ImageUploadPermissionCubit cubit) =>
          cubit.checkStoragePermissionStatus(),
      expect: () => [const ImageUploadPermissionState.limitedAccess()],
      verify: (_) {
        verify(mockDevicePermissionsFacade.getStoragePermissionStatus());
      },
    );

    blocTest(
      'should emit the deniedOrNotYetGranted state if the storage access is denied.',
      build: () => cubit,
      setUp: () {
        when(mockDevicePermissionsFacade.getStoragePermissionStatus())
            .thenAnswer(
          (_) async => const Right(PermissionStatus.denied()),
        );
      },
      act: (ImageUploadPermissionCubit cubit) =>
          cubit.checkStoragePermissionStatus(),
      expect: () => [const ImageUploadPermissionState.deniedOrNotYetGranted()],
      verify: (_) {
        verify(mockDevicePermissionsFacade.getStoragePermissionStatus());
      },
    );
  });

  group('requestStorageAccess', () {
    blocTest(
        'should call the request access function in the DevicePermissionFacade',
        build: () => cubit,
        setUp: () {
          when(mockDevicePermissionsFacade.requestStorageAccess())
              .thenAnswer((_) async => const Right(PermissionStatus.granted()));
        },
        act: (ImageUploadPermissionCubit cubit) => cubit.requestStorageAccess(),
        expect: () => [const ImageUploadPermissionState.granted()],
        verify: (_) {
          verify(mockDevicePermissionsFacade.requestStorageAccess());
        });
  });

  group('openAppSettings', () {
    blocTest(
        'should call the open app settings function in the DevicePermissionFacade',
        build: () => cubit,
        setUp: () {
          when(mockDevicePermissionsFacade.openAppSettings())
              .thenAnswer((_) async => const Right(true));
          when(mockDevicePermissionsFacade.getStoragePermissionStatus())
              .thenAnswer((_) async => const Right(PermissionStatus.granted()));
        },
        act: (ImageUploadPermissionCubit cubit) => cubit.openAppSettings(),
        expect: () => [const ImageUploadPermissionState.granted()],
        verify: (_) {
          verify(mockDevicePermissionsFacade.openAppSettings());
          verify(mockDevicePermissionsFacade.getStoragePermissionStatus());
        });

    blocTest(
        'should call the open app settings function in the DevicePermissionFacade',
        build: () => cubit,
        setUp: () {
          when(mockDevicePermissionsFacade.openAppSettings())
              .thenAnswer((_) async => const Right(true));
          when(mockDevicePermissionsFacade.getStoragePermissionStatus())
              .thenAnswer((_) async => const Right(PermissionStatus.denied()));
        },
        act: (ImageUploadPermissionCubit cubit) => cubit.openAppSettings(),
        expect: () =>
            [const ImageUploadPermissionState.deniedOrNotYetGranted()],
        verify: (_) {
          verify(mockDevicePermissionsFacade.openAppSettings());
          verify(mockDevicePermissionsFacade.getStoragePermissionStatus());
        });
  });
}
