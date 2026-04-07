import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:paypadi/core/api/exceptions/app_exception.dart';
import 'package:paypadi/core/utils/helpers.dart';

part 'app_toast_channel.g.dart';

@Riverpod(keepAlive: true)
class AppToastChannel extends _$AppToastChannel {
  @override
  String? build() => null;

  void showMessage(String message) {
    if (message.trim().isEmpty) {
      return;
    }

    state = message;
    showErrorDialog(message: message);
    clear();
  }

  void showException(Object? error) {
    final AppException exception = error is AppException
        ? error
        : AppException.handleException(error);

    showMessage(AppException.getExceptionMessage(exception));
  }

  void clear() => state = null;
}
