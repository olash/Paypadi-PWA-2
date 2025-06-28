import 'package:flutter/cupertino.dart';
import 'package:paypadi/core/utils/extensions.dart';
import 'package:talker_flutter/talker_flutter.dart';

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

final Talker logger = TalkerFlutter.init(
  settings: TalkerSettings(
    colors: {
      TalkerLogType.route.key: AnsiPen()..cyan(),
      TalkerLogType.error.key: AnsiPen()..magenta(),
      TalkerLogType.debug.key: AnsiPen()..white(),
      TalkerLogType.info.key:
          AnsiPen()..rgb(r: 100 / 255, g: 181 / 255, b: 246 / 255),
      TalkerLogType.riverpodAdd.key:
          AnsiPen()..rgb(r: 129 / 255, g: 212 / 255, b: 250 / 255),
      TalkerLogType.riverpodUpdate.key:
          AnsiPen()..rgb(r: 255 / 255, g: 214 / 255, b: 165 / 255),
      TalkerLogType.riverpodFail.key:
          AnsiPen()..rgb(r: 171 / 255, g: 235 / 255, b: 198 / 255),
      TalkerLogType.riverpodDispose.key:
          AnsiPen()..rgb(r: 255 / 255, g: 171 / 255, b: 145 / 255),
      TalkerLogType.httpRequest.key:
          AnsiPen()..rgb(r: 255 / 255, g: 235 / 255, b: 59 / 255),
      TalkerLogType.httpResponse.key:
          AnsiPen()..rgb(r: 0 / 255, g: 188 / 255, b: 212 / 255),
      TalkerLogType.httpError.key:
          AnsiPen()..rgb(r: 239 / 255, g: 83 / 255, b: 80 / 255),
    },
  ),
);

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
