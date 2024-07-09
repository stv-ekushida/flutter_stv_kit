// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:flutter_stv_kit/core/theme/app_color.dart';
import 'package:flutter_stv_kit/core/theme/app_text_theme.dart';

final appThemeProvider = Provider<AppTheme>((ref) {
  return AppTheme.light();
});

class AppTheme {
  AppTheme({
    required this.mode,
    required this.themeData,
    required this.textTheme,
  });

  final ThemeMode mode;
  final ThemeData themeData;
  final AppTextTheme textTheme;

  factory AppTheme.light() {
    final textTheme = AppTextTheme();

    final themeData = ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(
        backgroundColor: AppColor.primaryColor,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        titleTextStyle: textTheme.large2.bold().copyWith(color: Colors.white),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: AppColor.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          minimumSize: const Size(312, 50),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          minimumSize: const Size(312, 50),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColor.primaryColor,
        ),
      ),
      tabBarTheme: TabBarTheme(
        labelColor: AppColor.primaryColor,
        indicatorColor: AppColor.primaryColor,
        unselectedLabelColor: Colors.grey[500],
      ),
      inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        alignLabelWithHint: true,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        border: OutlineInputBorder(),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.all(AppColor.primaryColor),
        trackColor: WidgetStateProperty.all(Colors.grey[200]),
      ),
      dividerTheme: DividerThemeData(
        color: Colors.grey[300],
        thickness: 1.0,
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColor.primaryColor,
      ),
    );

    return AppTheme(
      mode: ThemeMode.light,
      themeData: themeData,
      textTheme: AppTextTheme(),
    );
  }
}
