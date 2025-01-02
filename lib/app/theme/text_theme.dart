import 'package:flutter/material.dart';
import 'package:kon/app/theme/app_colors.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle(
        fontSize: 24,
        color: AppColors.textColor,
        fontWeight: FontWeight.w700), // For Large Heading With Bold
    headlineMedium: const TextStyle(
        fontSize: 22,
        color: AppColors.textColor,
        fontWeight: FontWeight.w500), // For Medium Heading
    headlineSmall: const TextStyle(
        fontSize: 20,
        color: AppColors.textColor,
        fontWeight: FontWeight.w500), // For Small Heading
    titleLarge: const TextStyle(
        fontSize: 16,
        color: AppColors.textColor,
        fontWeight: FontWeight.w500), // Useable if need smaller than headings
    titleMedium: const TextStyle(
        fontSize: 14, color: AppColors.textColor, fontWeight: FontWeight.w500),
    titleSmall: const TextStyle(
        fontSize: 10, color: AppColors.textColor, fontWeight: FontWeight.w500),
    bodyLarge: const TextStyle(
        fontSize: 16, color: AppColors.textColor), // Normal Body text
    bodyMedium: const TextStyle(fontSize: 14, color: AppColors.textColor),
    bodySmall: const TextStyle(fontSize: 12, color: AppColors.textColor),
    labelSmall: const TextStyle(
        fontSize: 12,
        color: AppColors.textColor,
        fontWeight: FontWeight.w600), // For TextField Labels
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle(
        fontSize: 24,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w700), // For Large Heading With Bold
    headlineMedium: const TextStyle(
        fontSize: 22,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w500), // For Medium Heading
    headlineSmall: const TextStyle(
        fontSize: 20,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w500), // For Small Heading
    titleLarge: const TextStyle(
        fontSize: 16,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w500), // Useable if need smaller than headings
    titleMedium: const TextStyle(
        fontSize: 14, color: AppColors.whiteColor, fontWeight: FontWeight.w500),
    titleSmall: const TextStyle(
        fontSize: 10, color: AppColors.whiteColor, fontWeight: FontWeight.w500),
    bodyLarge: const TextStyle(
      fontSize: 16,
      color: AppColors.whiteColor,
    ), // Normal Body text
    bodyMedium: const TextStyle(
      fontSize: 14,
      color: AppColors.whiteColor,
    ),
    bodySmall: const TextStyle(
      fontSize: 12,
      color: AppColors.whiteColor,
    ),
    labelSmall: const TextStyle(
        fontSize: 12,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w600), // For TextField Labels
  );
}
