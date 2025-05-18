import 'package:flutter/material.dart';

const int _designWidth = 393;
const int _designHeight = 852;

extension BuildContextExtension on BuildContext {
  double get screenWidth => MediaQuery.sizeOf(this).width;

  double get screenHeight => MediaQuery.sizeOf(this).height;

  TextTheme get textTheme => Theme.of(this).textTheme;
}

extension NumExtension on num {
  double adH(BuildContext context) {
    return this * (context.screenHeight / _designHeight);
  }

  num adW(BuildContext context) {
    return this * (context.screenWidth / _designWidth);
  }
}

extension DoubleExtension on double {
  SizedBox get verticalSpacing => SizedBox(height: this);

  SizedBox get horizontalSpacing => SizedBox(width: this);
}
