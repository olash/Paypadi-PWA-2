import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/core/utils/constants.dart' show debugLogger;
import 'package:paypadi/src/shared/controllers/app_loading/app_loading_controller.dart';
import 'package:paypadi/src/shared/controllers/app_toast/app_toast_controller.dart';

extension BuildContextExt on BuildContext {
  double get screenWidth => MediaQuery.sizeOf(this).width;

  double get screenHeight => MediaQuery.sizeOf(this).height;

  TextTheme get textTheme => Theme.of(this).textTheme;

  FilledButtonThemeData get filledButtonTheme =>
      Theme.of(this).filledButtonTheme;

  double get devicePixelRatio => MediaQuery.devicePixelRatioOf(this);
}

extension NullObjectExt on Object? {
  void printLog([Object? exception, StackTrace? stackTrace]) =>
      debugLogger.debug(this, exception, stackTrace);
}

extension RefExt on Ref {
  void showExceptionMessage(Object? error, [StackTrace? stackTrace]) => read(
    appToastControllerProvider.notifier,
  ).showExceptionMessage(error, stackTrace);
}

extension WidgetRefExt on WidgetRef {
  void showSuccessToast(String message) => _toast.showSuccess(message);

  void showErrorToast(String message) => _toast.showError(message);

  void showExceptionMessage(Object? error, [StackTrace? stackTrace]) =>
      _toast.showExceptionMessage(error, stackTrace);

  AppToastController get _toast => read(appToastControllerProvider.notifier);

  void showLoading() => read(appLoadingControllerProvider.notifier).show();

  void dismissLoading() =>
      read(appLoadingControllerProvider.notifier).dismiss();

  void closeKeyboard() => FocusManager.instance.primaryFocus?.unfocus();
}
