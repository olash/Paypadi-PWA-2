import 'package:flutter/material.dart';

const int _designWidth = 1440;
const int _designHeight = 960;

extension BuildContextExtension on BuildContext {
  double get screenWidth => MediaQuery.sizeOf(this).width;
  double get screenHeight => MediaQuery.sizeOf(this).height;
}

extension NumExtension on num {
  num adH(BuildContext context) {
    return this * (context.screenHeight / _designHeight);
  }

  num adW(BuildContext context) {
    return this * (context.screenWidth / _designWidth);
  }
}
