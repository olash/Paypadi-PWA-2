import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:paypadi/core/utils/constants.dart' show debugLogger;
import 'package:paypadi/src/shared/controllers/app_loading_controller.dart';
import 'package:paypadi/src/shared/controllers/app_toast_controller.dart';

extension BuildContextExtension on BuildContext {
  double get screenWidth => MediaQuery.sizeOf(this).width;

  double get screenHeight => MediaQuery.sizeOf(this).height;

  TextTheme get textTheme => Theme.of(this).textTheme;

  FilledButtonThemeData get filledButtonTheme =>
      Theme.of(this).filledButtonTheme;

  double get devicePixelRatio => MediaQuery.devicePixelRatioOf(this);
}

extension DoubleExtension on double {
  SizedBox get verticalSpacing => SizedBox(height: this);

  SizedBox get horizontalSpacing => SizedBox(width: this);
}

extension NullableObjextExtension on Object? {
  void print([Object? exception, StackTrace? stackTrace]) =>
      debugLogger.debug(this, exception, stackTrace);
}

extension AppToastOnRef on Ref {
  void showInfoToast(String message) => _toast.showInfo(message);

  void showSuccessToast(String message) => _toast.showSuccess(message);

  void showErrorToast(String message) => _toast.showError(message);

  void showExceptionMessage(Object? error, [StackTrace? stackTrace]) =>
      _toast.showExceptionMessage(error, stackTrace);

  AppToastController get _toast => read(appToastControllerProvider.notifier);
}

extension AppToastOnWidgetRef on WidgetRef {
  void showInfoToast(String message) => _toast.showInfo(message);

  void showSuccessToast(String message) => _toast.showSuccess(message);

  void showErrorToast(String message) => _toast.showError(message);

  void showExceptionMessage(Object? error, [StackTrace? stackTrace]) =>
      _toast.showExceptionMessage(error, stackTrace);

  AppToastController get _toast => read(appToastControllerProvider.notifier);
}

extension AppLoadingOnRef on Ref {
  void showLoading() => read(appLoadingControllerProvider.notifier).show();
  void dismissLoading() =>
      read(appLoadingControllerProvider.notifier).dismiss();
}

extension AppLoadingOnWidgetRef on WidgetRef {
  void showLoading() => read(appLoadingControllerProvider.notifier).show();
  void dismissLoading() =>
      read(appLoadingControllerProvider.notifier).dismiss();
}
