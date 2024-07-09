// Flutter imports:
import 'package:flutter/material.dart';

class AppColor {
  static const primaryColor = Color(0xFF0D3EB1);

  static const secondaryColor = Color(0xFF898FAD);

  static const tertiaryColor = Color(0xFFB182A9);

  static const errorColor = Color(0xFFFF5449);

  static const neutralColor = Color(0xFF919094);

  static const neutralVariantColor = Color(0xFF90909A);

  const AppColor({
    required this.background,
  });

  factory AppColor.light() {
    return const AppColor(
      background: Colors.white,
    );
  }

  factory AppColor.dark() {
    return const AppColor(
      background: Color(0xFF121212),
    );
  }

  final Color background;
}
