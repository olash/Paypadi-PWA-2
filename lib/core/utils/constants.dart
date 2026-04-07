import 'package:flutter/foundation.dart' show kReleaseMode;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paypadi/config/gen/assets.gen.dart';
import 'package:paypadi/core/models/beneficiary_model/beneficiary_model.dart';

import 'package:talker_flutter/talker_flutter.dart';

import 'package:paypadi/config/gen/colors.gen.dart';

class Values {
  static final double zero = 0.0;
  static final double v1 = 1.0;
  static final double v2 = 2.0;
  static final double v4 = 4.0;
  static final double v6 = 6.0;
  static final double v8 = 8.0;
  static final double v10 = 10.0;
  static final double v12 = 12.0;
  static final double v14 = 14.0;
  static final double v16 = 16.0;
  static final double v18 = 18.0;
  static final double v20 = 20.0;
  static final double v24 = 24.0;
  static final double v28 = 28.0;
  static final double v32 = 32.0;
  static final double v36 = 36.0;
  static final double v48 = 48.0;
  static final double v64 = 64.0;
  static final double v72 = 72.0;
  static final double v84 = 84.0;
  static final double v92 = 92.0;
  static final double v96 = 96.0;
  static final double v108 = 108.0;
  static final double v120 = 120.0;
  static final double v136 = 136.0;
  static final double v150 = 150.0;
}

final int transactionPinLength = 4;

final int passwordPinLength = 6;

final double kZeroLetterSpacing = 0.0;

final double kVeryTightLetterSpacing = -0.43;

final double kTopPadding = 40.0;

final double kBottomPadding = 40.0;

final Size appDesignSize = Size(393, 852);

final Size kButtonSize = Size(362.w, 48.h);

final Size kButtonMediumSize = Size(158, 48);

final Size kButtonSmallSize = Size(125, 32);

final Size kAppBarSize = Size(double.infinity, 56);

final Duration animatedFooDuration = Durations.medium4;

final String kDemoProfilePic =
    "https://images.unsplash.com/photo-1590086782957-93c06ef21604?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8d2hpdGUlMjBtYWxlfGVufDB8fDB8fHww";

final List<Color> availableColors = [
  AppColors.primary,
  AppColors.blueThemeColor,
  AppColors.pinkThemeColor,
  AppColors.orangeThemeColor,
  AppColors.lightGreenThemeColor,
];

final Map<String, String> onboardingStoryAndAsset = {
  "Pay Seamlessly with your wallet—No More Change Wahala!":
      AppAssets.images.storyOne.path,
  "Exact Payments, No More Change Drama!": AppAssets.images.storyTwo.path,
  "Your ‘Last Card’ Just Got Smarter": AppAssets.images.storyThree.path,
};

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

final List<BeneficiaryModel> kMockBeneficiaries = List.generate(
  8,
  (index) => BeneficiaryModel(
    id: index.toString(),
    type: "User",
    accountNumber: "1234567890",
    accountName: "Fake Beneficiary",
    bankCode: "Fake Code",
    isVerified: true,
    createdAt: DateTime.now().toIso8601String(),
    updatedAt: DateTime.now().toIso8601String(),
  ),
);

final Talker debugLogger = TalkerFlutter.init(
  settings: TalkerSettings(
    enabled: !kReleaseMode,
    useConsoleLogs: !kReleaseMode,
    colors: {
      TalkerKey.route: AnsiPen()..cyan(),
      TalkerKey.error: AnsiPen()..magenta(),
      TalkerKey.debug: AnsiPen()..white(),
      TalkerKey.info: AnsiPen()..rgb(r: 100 / 255, g: 181 / 255, b: 246 / 255),
      TalkerKey.riverpodAdd: AnsiPen()
        ..rgb(r: 129 / 255, g: 212 / 255, b: 250 / 255),
      TalkerKey.riverpodUpdate: AnsiPen()
        ..rgb(r: 255 / 255, g: 214 / 255, b: 165 / 255),
      TalkerKey.riverpodFail: AnsiPen()
        ..rgb(r: 171 / 255, g: 235 / 255, b: 198 / 255),
      TalkerKey.riverpodDispose: AnsiPen()
        ..rgb(r: 255 / 255, g: 171 / 255, b: 145 / 255),
      TalkerKey.httpRequest: AnsiPen()
        ..rgb(r: 255 / 255, g: 235 / 255, b: 59 / 255),
      TalkerKey.httpResponse: AnsiPen()
        ..rgb(r: 0 / 255, g: 188 / 255, b: 212 / 255),
      TalkerKey.httpError: AnsiPen()
        ..rgb(r: 239 / 255, g: 83 / 255, b: 80 / 255),
    },
  ),
);

class CacheKeys {
  static final String isDarkMode = "dark_mode";
  static final String enabledBiometrics = "biometrics";
  static final String colorTheme = "color_theme";

  static final String sessionId = "session_id";
  static final String refreshToken = "refresh_token";
  static final String accessToken = "access_token";

  static final String user = "user";
  static final String password = "user_password";
  static final String phoneNumber = "user_phone_number";
  static final String transactionPin = "user_transaction_pin";
}
