import 'package:flutter/cupertino.dart';
import 'package:paypadi/core/utils/extensions.dart';

final Size kButtonSize = Size(362.sW, 56.sH);

final Size kAppBarSize = Size(double.infinity, 56);

final double kTopPadding = 40.0;

final double kBottomPadding = 40.0;

final List<String> kAppKeyPadKeys = [
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  '.',
  '0',
  'x',
];

final double kZeroLetterSpacing = 0.0;

final double kVeryTightLetterSpacing = -0.43;

final String kDemoProfilePic =
    "https://images.unsplash.com/photo-1590086782957-93c06ef21604?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8d2hpdGUlMjBtYWxlfGVufDB8fDB8fHww";

class AppSize {
  AppSize._();
  static final AppSize _instance = AppSize._();
  static AppSize get instance => _instance;

  late double _height;

  late double _width;

  double get getHeight => _height;

  double get getWidth => _width;

  set appHeight(double appHeight) => _height = appHeight;

  set appWidth(double appWidth) => _width = appWidth;
}
