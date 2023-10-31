import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:you_might_need_work/theme/theme.dart';

mixin AppTheme {
  static ThemeData get theme => ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.light(
          primary: AppColors.primary1,
          secondary: AppColors.primary2,
          onBackground: AppColors.primary1,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary1,
            foregroundColor: AppColors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: InputBorder.none,
          fillColor: AppColors.white,
          hintStyle: AppTextStyle.bodyText2,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppPadding.large,
            vertical: AppPadding.large,
          ),
        ),
        chipTheme: const ChipThemeData(
          backgroundColor: AppColors.primary2,
          side: BorderSide.none,
        ),
        textTheme: GoogleFonts.poppinsTextTheme().copyWith(
          titleLarge: AppTextStyle.heading1,
          titleMedium: AppTextStyle.heading2,
          titleSmall: AppTextStyle.heading3,
          headlineMedium: AppTextStyle.heading4,
          headlineSmall: AppTextStyle.heading5,
          bodyLarge: AppTextStyle.bodyText1,
          bodyMedium: AppTextStyle.bodyText2,
          bodySmall: AppTextStyle.bodyText3,
          displayLarge: AppTextStyle.titleLarge,
          displayMedium: AppTextStyle.titleMedium,
          displaySmall: AppTextStyle.titleSmall,
        ),
      );
}
