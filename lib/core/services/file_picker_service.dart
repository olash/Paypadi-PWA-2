import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart' show PlatformException;
import 'package:paypadi/core/api/exceptions/client_exception.dart';

class FilePickerService {
  static const int _maxFileSizeBytes = 5 * 1024 * 1024;
  static const List<String> _allowedExtensions = ['jpg', 'pdf', 'png', 'jpeg'];

  Future<FilePickerResult> pickFileFromSystem() async {
    try {
      final FilePickerResult? result = await FilePicker.pickFiles(
        withData: true,
        type: FileType.custom,
        allowedExtensions: _allowedExtensions,
      );

      if (result == null || result.files.isEmpty) {
        throw const ClientException(message: 'Cancelled file upload');
      }

      final file = result.files.first;
      if (file.size > _maxFileSizeBytes) {
        throw const ClientException(message: 'File exceeds 5MB limit');
      }

      return result;
    } on ClientException {
      rethrow;
    } on PlatformException catch (pe) {
      throw ClientException(
        message: 'Platform error ${pe.code}: ${pe.message ?? pe.details ?? ''}',
        cause: pe,
      );
    }
  }
}
