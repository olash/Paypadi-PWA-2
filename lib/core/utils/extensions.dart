import 'package:flutter/material.dart';
import 'package:paypadi/core/constants/constants.dart';

const int _designWidth = 393;

const int _designHeight = 852;

extension BuildContextExtension on BuildContext {
  double get screenWidth => MediaQuery.sizeOf(this).width;

  double get screenHeight => MediaQuery.sizeOf(this).height;

  TextTheme get textTheme => Theme.of(this).textTheme;

  FilledButtonThemeData get filledButtonTheme =>
      Theme.of(this).filledButtonTheme;
}

extension NumExtension on num {
  double get sH => this * (AppSize.instance.getHeight / _designHeight);

  double get sW => this * (AppSize.instance.getWidth / _designWidth);
}

extension DoubleExtension on double {
  SizedBox get verticalSpacing => SizedBox(height: this);

  SizedBox get horizontalSpacing => SizedBox(width: this);
}
