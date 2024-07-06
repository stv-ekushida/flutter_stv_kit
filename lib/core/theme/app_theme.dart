// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_stv_kit/core/theme/app_color.dart';
import 'package:flutter_stv_kit/core/theme/app_text_theme.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: AppColor.primaryColor, surface: Colors.white),
      useMaterial3: true,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColor.primaryColor,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        titleTextStyle:
            appTextTheme.large2.bold().copyWith(color: Colors.white),
      ),
      tabBarTheme: TabBarTheme(
        labelColor: AppColor.primaryColor,
        indicatorColor: AppColor.primaryColor,
        unselectedLabelColor: Colors.grey[500],
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.all(AppColor.primaryColor),
        trackColor: WidgetStateProperty.all(Colors.grey[200]),
      ),
      fontFamily: 'NotoSansJp',
    );
  }
}
