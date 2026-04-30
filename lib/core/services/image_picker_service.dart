import 'package:flutter/services.dart' show PlatformException;
import 'package:image_picker/image_picker.dart';

import 'package:paypadi/core/api/exceptions/client_exception.dart';

class ImagePickerService {
  ImagePickerService({ImagePicker? picker}) : _picker = picker ?? ImagePicker();
  final ImagePicker _picker;

  Future<XFile?> pickImage() async {
    try {
      return await _picker.pickImage(source: ImageSource.gallery);
    } on PlatformException catch (pe) {
      throw ClientException(
        message: 'Platform error ${pe.code}: ${pe.message ?? pe.details ?? ''}',
        cause: pe,
      );
    }
  }
}
