import 'package:bundle/application/image_upload_permission/image_upload_permission_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PermanentlyDenied extends StatelessWidget {
  const PermanentlyDenied({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text(
              'Bundle needs access to your photo library in order to upload photos. We\'ll never upload photos without your consent'),
          ElevatedButton(
              onPressed: () {
                context.read<ImageUploadPermissionCubit>().openAppSettings();
              },
              child: const Text('Or go to app settings'))
        ],
      ),
    );
  }
}
