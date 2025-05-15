import 'package:flutter/material.dart';
import 'package:paypadi/config/gen/colors.gen.dart' show AppColors;

final ThemeData theme = ThemeData(
  fontFamily: 'Manrope',
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColors.white,
  colorScheme: const ColorScheme.light(primary: AppColors.primary),
  // filledButtonTheme: FilledButtonThemeData(
  //   style: ButtonStyle(
  //     textStyle: WidgetStatePropertyAll(
  //       TextStyle(
  //         fontSize: 16,
  //         color: AppColors.white,
  //         fontWeight: FontWeight.w600,
  //       ),
  //     ),
  //     backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
  //       return states.contains(WidgetState.disabled)
  //           ? AppColors.disabledButton
  //           : AppColors.black;
  //     }),
  //     padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 24.w)),
  //     fixedSize: WidgetStatePropertyAll(Size(362.w, 56.h)),
  //     shape: WidgetStatePropertyAll(
  //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
  //     ),
  //   ),
  // ),
  // outlinedButtonTheme: OutlinedButtonThemeData(
  //   style: ButtonStyle(
  //     textStyle: WidgetStatePropertyAll(
  //       TextStyle(
  //         fontSize: 15,
  //         color: AppColors.black,
  //         fontWeight: FontWeight.w600,
  //       ),
  //     ),
  //     fixedSize: WidgetStatePropertyAll(Size(361.w, 48.h)),
  //     padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 24.w)),
  //     side: const WidgetStatePropertyAll(
  //       BorderSide(color: AppColors.outlinedButtonBorder),
  //     ),
  //     shape: WidgetStatePropertyAll(
  //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
  //     ),
  //   ),
  // ),
  // inputDecorationTheme: InputDecorationTheme(
  //   filled: true,
  //   fillColor: AppColors.white,
  //   hintStyle: TextStyle(
  //     fontSize: 14,
  //     fontWeight: FontWeight.w500,
  //     color: AppColors.black.withValues(alpha: .3),
  //   ),
  //   constraints: BoxConstraints(maxWidth: 362.w),
  //   contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
  //   errorBorder: OutlineInputBorder(
  //     borderSide: const BorderSide(color: AppColors.red),
  //     borderRadius: BorderRadius.circular(5.r),
  //   ),
  //   focusedErrorBorder: OutlineInputBorder(
  //     borderSide: const BorderSide(color: AppColors.red),
  //     borderRadius: BorderRadius.circular(5.r),
  //   ),
  //   focusedBorder: OutlineInputBorder(
  //     borderSide: const BorderSide(color: AppColors.black),
  //     borderRadius: BorderRadius.circular(5.r),
  //   ),
  //   enabledBorder: OutlineInputBorder(
  //     borderSide: const BorderSide(color: AppColors.textFieldBorderColor),
  //     borderRadius: BorderRadius.circular(5.r),
  //   ),
  // ),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontSize: 57,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    displayMedium: TextStyle(
      fontSize: 45,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    displaySmall: TextStyle(
      fontSize: 36,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    headlineLarge: TextStyle(
      fontSize: 32,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    headlineMedium: TextStyle(
      fontSize: 28,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    headlineSmall: TextStyle(
      fontSize: 24,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    titleLarge: TextStyle(
      fontSize: 22,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      fontSize: 11,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    ),
  ),
);
