import 'dart:math';

import 'package:flutter/material.dart';
import 'package:paypadi/core/constants/constants.dart';

const int _designWidth = 393;

const int _designHeight = 852;

final double _scaleWidth = (AppSize.instance.getWidth / _designWidth);

final double _scaleHeight = (AppSize.instance.getHeight / _designHeight);

extension BuildContextExtension on BuildContext {
  double get screenWidth => MediaQuery.sizeOf(this).width;

  double get screenHeight => MediaQuery.sizeOf(this).height;

  TextTheme get textTheme => Theme.of(this).textTheme;

  FilledButtonThemeData get filledButtonTheme =>
      Theme.of(this).filledButtonTheme;
}

extension NumExtension on num {
  double get sH => this * _scaleHeight;

  double get sW => this * _scaleWidth;

  double get sp => this * min(_scaleWidth, _scaleHeight);

  double get r => this * min(_scaleWidth, _scaleHeight);
}

extension DoubleExtension on double {
  SizedBox get verticalSpacing => SizedBox(height: this);

  SizedBox get horizontalSpacing => SizedBox(width: this);
}
