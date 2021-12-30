import 'package:bundle/application/image_upload_permission/image_upload_permission_cubit.dart';
import 'package:bundle/injection.dart';
import 'package:bundle/presentation/pages/image_upload/widgets/granted.dart';
import 'package:bundle/presentation/pages/image_upload/widgets/unknown_permission_error.dart';
import 'package:bundle/presentation/pages/image_upload/widgets/denied_or_not_yet_granted.dart';
import 'package:bundle/presentation/pages/image_upload/widgets/limited_access.dart';
import 'package:bundle/presentation/pages/image_upload/widgets/permanently_denied.dart';
import 'package:bundle/presentation/pages/image_upload/widgets/restricted_access.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class ImageUploadWrapperPage extends StatelessWidget {
  const ImageUploadWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ImageUploadPermissionCubit>(
      create: (_) =>
          getIt<ImageUploadPermissionCubit>()..checkStoragePermissionStatus(),
      child:
          BlocBuilder<ImageUploadPermissionCubit, ImageUploadPermissionState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            granted: (_) => const Granted(),
            deniedOrNotYetGranted: (_) => const DeniedOrNotYetGranted(),
            restrictedAccess: (_) => const RestrictedAccess(),
            limitedAccess: (_) => const LimitedAccess(),
            permanentlyDenied: (_) => const PermanentlyDenied(),
            unknownOrError: (_) => const UnknownPermissionError(),
          );
        },
      ),
    );
  }
}
