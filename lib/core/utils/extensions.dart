import 'package:flutter/material.dart';
import 'package:paypadi/core/utils/constants.dart';
import 'package:paypadi/src/shared/controllers/app_toast_channel.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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

extension AppToastChannelRefExtension on Ref {
  void showErrorToast(String message) {
    read(appToastChannelProvider.notifier).showMessage(message);
  }

  void showExceptionToast(Object? error) {
    read(appToastChannelProvider.notifier).showException(error);
  }
}
