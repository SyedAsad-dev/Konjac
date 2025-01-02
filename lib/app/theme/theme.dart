import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kon/app/theme/app_colors.dart';
import 'package:kon/app/theme/text_theme.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.bottomNavColor, // Set your primary color here
      scaffoldBackgroundColor: AppColors.scaffoldColor,
      datePickerTheme: const DatePickerThemeData(backgroundColor: Colors.white),
      dialogBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.appBarColor,
        actionsIconTheme: IconThemeData(color: AppColors.secondaryColor),
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
          color:
              AppColors.bottomNavColor // Background color for the BottomAppBar
          ),
      iconTheme: const IconThemeData(
        color: AppColors.bodyColor, // Default color for icons in BottomAppBar
      ),
      textTheme: AppTextTheme.lightTextTheme,
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        onPrimary: AppColors.bottomNavColor,
        onSecondary: AppColors.secondaryColor,
        onError: AppColors.errorColor,
        onSurface: AppColors.bgColor,
        primary: AppColors
            .primaryColor, // Primary color for buttons, active tabs, etc.
        secondary:
            AppColors.secondaryColor, // Secondary color for other elements
        surface: AppColors.bgColor, // Background color
        error: AppColors.errorColor, // Error color for forms, etc.
      ));

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColors.secondaryColor, // Set your primary color here
      scaffoldBackgroundColor: const Color.fromARGB(255, 22, 16, 16),
      datePickerTheme: const DatePickerThemeData(backgroundColor: Colors.white),
      dialogBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: Color.fromARGB(255, 13, 9, 9),
        actionsIconTheme: IconThemeData(color: AppColors.secondaryColor),
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
          color:
              AppColors.bottomNavColor // Background color for the BottomAppBar
          ),
      iconTheme: const IconThemeData(
        color: AppColors.bodyColor, // Default color for icons in BottomAppBar
      ),
      textTheme: AppTextTheme.darkTextTheme,
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        onPrimary: AppColors.primaryColor,
        onSecondary: AppColors.secondaryColor,
        onError: AppColors.errorColor,
        onSurface: AppColors.bgColor,
        primary: AppColors
            .primaryColor, // Primary color for buttons, active tabs, etc.
        secondary:
            AppColors.secondaryColor, // Secondary color for other elements
        surface: AppColors.bgColor, // Background color
        error: AppColors.errorColor, // Error color for forms, etc.
      ));
}

// ThemeData _createAppThemeDark(ThemeData baseTheme) {
//   final textTheme = _createTextTheme(baseTheme.textTheme);
//   return baseTheme.copyWith(
//     brightness: Brightness.dark,
//     primaryColor:
//         const Color.fromARGB(255, 38, 39, 32), // Set your primary color here
//     scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
//     datePickerTheme: const DatePickerThemeData(backgroundColor: Colors.white),
//     dialogBackgroundColor: Colors.white,
//     appBarTheme: const AppBarTheme(
//       backgroundColor: Color.fromARGB(255, 24, 6, 6),
//       actionsIconTheme: IconThemeData(color: AppColors.secondaryColor),
//       elevation: 0,
//       systemOverlayStyle: SystemUiOverlayStyle(
//         statusBarColor: Colors.white,
//         statusBarBrightness: Brightness.light,
//         statusBarIconBrightness: Brightness.dark,
//       ),
//     ),
//     bottomAppBarTheme: const BottomAppBarTheme(
//         color: AppColors.bottomNavColor // Background color for the BottomAppBar
//         ),
//     iconTheme: const IconThemeData(
//       color: AppColors.bodyColor, // Default color for icons in BottomAppBar
//     ),
//     textTheme: AppTextTheme.lightTextTheme,
//     colorScheme: baseTheme.colorScheme.copyWith(
//       primary: AppColors
//           .primaryColor, // Primary color for buttons, active tabs, etc.
//       secondary: AppColors.secondaryColor, // Secondary color for other elements
//       surface: AppColors.bgColor, // Background color
//       error: AppColors.errorColor, // Error color for forms, etc.
//     ),
//   );
// }

// ThemeData _createAppThemeLight(ThemeData baseTheme) {
//   final textTheme = _createTextTheme(baseTheme.textTheme);
//   return baseTheme.copyWith(
//     brightness: Brightness.light,
//     primaryColor: AppColors.primaryColor, // Set your primary color here
//     scaffoldBackgroundColor: AppColors.scaffoldColor,
//     datePickerTheme: const DatePickerThemeData(backgroundColor: Colors.white),
//     dialogBackgroundColor: Colors.white,
//     appBarTheme: const AppBarTheme(
//       backgroundColor: AppColors.appBarColor,
//       actionsIconTheme: IconThemeData(color: AppColors.secondaryColor),
//       elevation: 0,
//       systemOverlayStyle: SystemUiOverlayStyle(
//         statusBarColor: Colors.white,
//         statusBarBrightness: Brightness.light,
//         statusBarIconBrightness: Brightness.dark,
//       ),
//     ),
//     bottomAppBarTheme: const BottomAppBarTheme(
//         color: AppColors.bottomNavColor // Background color for the BottomAppBar
//         ),
//     iconTheme: const IconThemeData(
//       color: AppColors.bodyColor, // Default color for icons in BottomAppBar
//     ),
//     textTheme: textTheme,
//     colorScheme: baseTheme.colorScheme.copyWith(
//       primary: AppColors
//           .primaryColor, // Primary color for buttons, active tabs, etc.
//       secondary: AppColors.secondaryColor, // Secondary color for other elements
//       surface: AppColors.bgColor, // Background color
//       error: AppColors.errorColor, // Error color for forms, etc.
//     ),
//   );
// }
