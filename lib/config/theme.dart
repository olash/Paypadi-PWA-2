import 'package:flutter/material.dart';
import 'package:paypadi/config/gen/colors.gen.dart' show AppColors;
import 'package:paypadi/config/gen/fonts.gen.dart';
import 'package:paypadi/core/constants/constants.dart';
import 'package:paypadi/core/utils/extensions.dart';

final ThemeData theme = ThemeData(
  brightness: Brightness.light,
  fontFamily: FontFamily.poppins,
  scaffoldBackgroundColor: AppColors.white,
  colorScheme: const ColorScheme.light(primary: AppColors.primary),
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
            : AppColors.primary;
      }),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      fixedSize: WidgetStatePropertyAll(kButtonSize),
      side: const WidgetStatePropertyAll(BorderSide(color: AppColors.primary)),
      foregroundColor: WidgetStatePropertyAll(AppColors.primary),
      textStyle: WidgetStatePropertyAll(TextStyle(fontSize: 16)),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.white,
    constraints: BoxConstraints(maxWidth: 362.sW),
    hintStyle: TextStyle(
      fontSize: 14,
      letterSpacing: 0,
      color: AppColors.hintText,
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.primary),
      borderRadius: BorderRadius.circular(12),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.unfocusedTextField),
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  textTheme: TextTheme(
    displaySmall: TextStyle(
      fontSize: 36.sp,
      letterSpacing: 0.5,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    headlineLarge: TextStyle(
      fontSize: 32.sp,
      letterSpacing: 0.5,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    headlineMedium: TextStyle(
      fontSize: 28.sp,
      letterSpacing: 0.5,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    headlineSmall: TextStyle(
      fontSize: 24.sp,
      letterSpacing: 0.5,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    titleLarge: TextStyle(
      fontSize: 18.sp,
      letterSpacing: 0.5,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(
      fontSize: 16.sp,
      letterSpacing: 0.5,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle(
      fontSize: 14.sp,
      letterSpacing: 0.5,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: TextStyle(
      fontSize: 16.sp,
      letterSpacing: 0.5,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: TextStyle(
      fontSize: 14.sp,
      letterSpacing: 0.5,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    bodySmall: TextStyle(
      fontSize: 12.sp,
      letterSpacing: 0.5,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    labelLarge: TextStyle(
      fontSize: 14.sp,
      letterSpacing: 0.5,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: TextStyle(
      fontSize: 12.sp,
      letterSpacing: 0.5,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      fontSize: 11.sp,
      letterSpacing: 0.5,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
  ),
);
