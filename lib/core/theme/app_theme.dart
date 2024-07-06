// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_stv_kit/core/theme/app_color.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: AppColor.primaryColor, surface: Colors.white),
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColor.primaryColor,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(
          fontFamily: 'NotoSansJp',
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.white,
        ),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.all(AppColor.primaryColor),
        trackColor: WidgetStateProperty.all(Colors.grey[200]),
      ),
      fontFamily: 'NotoSansJp',
    );
  }
}
