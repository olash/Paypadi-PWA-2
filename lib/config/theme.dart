import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:paypadi/config/gen/colors.gen.dart' show AppColors;
import 'package:paypadi/config/gen/fonts.gen.dart';
import 'package:paypadi/core/utils/constants.dart';

class AppTheme {
  const AppTheme({required this.primary});
  final Color primary;

  ThemeData theme() => ThemeData(
    brightness: Brightness.light,
    fontFamily: FontFamily.manrope,
    colorScheme: ColorScheme.light(primary: primary),
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: AppBarTheme(elevation: 0, scrolledUnderElevation: 0),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        textStyle: WidgetStatePropertyAll(
          TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        fixedSize: WidgetStatePropertyAll(kButtonSize),
        foregroundColor: WidgetStatePropertyAll(AppColors.white),
        backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
          return states.contains(WidgetState.disabled)
              ? AppColors.disabled
              : primary;
        }),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        fixedSize: WidgetStatePropertyAll(kButtonSize),
        side: WidgetStatePropertyAll(
          BorderSide(color: primary),
        ),
        foregroundColor: WidgetStatePropertyAll(primary),
        textStyle: WidgetStatePropertyAll(TextStyle(fontSize: 16)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.white,
      constraints: BoxConstraints(maxWidth: 362),
      hintStyle: TextStyle(
        fontSize: 14,
        letterSpacing: 0,
        color: AppColors.hintText,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.circular(12),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.unfocusedTextField),
        borderRadius: BorderRadius.circular(12),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Values.v18),
        borderSide: const BorderSide(color: AppColors.failure),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Values.v18),
        borderSide: const BorderSide(color: AppColors.failure),
      ),
    ),
    textTheme: TextTheme(
      displaySmall: _appTextStyle(36.sp),
      headlineLarge: _appTextStyle(32.sp),
      headlineMedium: _appTextStyle(28.sp),
      headlineSmall: _appTextStyle(24.sp),
      titleLarge: _appTextStyle(18.sp),
      titleMedium: _appTextStyle(16.sp),
      titleSmall: _appTextStyle(14.sp),
      bodyLarge: _appTextStyle(16.sp),
      bodyMedium: _appTextStyle(14.sp),
      bodySmall: _appTextStyle(12.sp),
      labelLarge: _appTextStyle(14.sp),
      labelMedium: _appTextStyle(12.sp),
      labelSmall: _appTextStyle(11.sp),
    ),
  );
}

TextStyle _appTextStyle(double fontSize) {
  return TextStyle(
    fontSize: fontSize,
    letterSpacing: 0.5,
    color: AppColors.black,
    fontWeight: FontWeight.w500,
  );
}
