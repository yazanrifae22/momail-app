import 'package:flutter/material.dart';
import 'package:momail/core/util/themes/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData getAppTheme(BuildContext context) {
  return ThemeData(
    colorScheme: Theme.of(context).colorScheme.copyWith(
          primary: AppColors.primary,
          secondary: AppColors.secondary,
        ),
    textTheme: Theme.of(context).textTheme.copyWith(
          subtitle1: const TextStyle(color: AppColors.secondary),
          headline1: TextStyle(
            fontSize: 32.sp,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            fontSize: 29.sp,
            color: AppColors.secondary,
            fontWeight: FontWeight.bold,
          ),
          headline3: TextStyle(
            fontSize: 24.sp,
            color: AppColors.secondary,
            fontWeight: FontWeight.w500,
          ),
          headline4: TextStyle(
            fontSize: 22.sp,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          headline5: TextStyle(
            fontSize: 16.sp,
            color: AppColors.secondary,
            fontWeight: FontWeight.w600,
          ),
          bodyText1: TextStyle(
            color: AppColors.textBodyColor,
            fontSize: 14.sp,
          ),
          bodyText2: TextStyle(
            color: AppColors.textBodyColor,
            fontSize: 12.sp,
          ),
        ),
    appBarTheme: AppBarTheme(
      color: AppColors.secondary,
      titleTextStyle: TextStyle(
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
      ),
      elevation: 0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(color: Colors.white))),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        textStyle: TextStyle(
          color: AppColors.textBodyColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
        side: BorderSide(color: AppColors.secondary, width: 1.w),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      hintStyle: TextStyle(color: AppColors.textBodyColor, fontSize: 14.sp),
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.zero,
        borderSide: BorderSide(
          color: Colors.white,
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.zero,
        borderSide: BorderSide(
          color: AppColors.secondary,
        ),
      ),
    ),
  );
}
