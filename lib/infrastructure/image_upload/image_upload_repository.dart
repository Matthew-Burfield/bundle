import 'dart:async';

import 'package:bundle/domain/image_upload/i_image_upload_repository.dart';
import 'package:bundle/infrastructure/core/permission_facade.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IImageUploadRepository)
class ImageUploadRepository implements IImageUploadRepository {
  ImageUploadRepository();
}
