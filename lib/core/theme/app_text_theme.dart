// Flutter imports:
import 'package:flutter/material.dart';

class AppTextTheme {
  const AppTextTheme._({
    required this.large2,
    required this.large,
    required this.medium,
    required this.small,
  });

  factory AppTextTheme() {
    const baseTextStyle = TextStyle(
      fontFamily: 'NotoSansJp',
      fontWeight: FontWeight.w400,
    );

    return AppTextTheme._(
      large2: const TextStyle(fontSize: 18).merge(baseTextStyle),
      large: const TextStyle(fontSize: 16).merge(baseTextStyle),
      medium: const TextStyle(fontSize: 14).merge(baseTextStyle),
      small: const TextStyle(fontSize: 12).merge(baseTextStyle),
    );
  }

  final TextStyle large2;
  final TextStyle large;
  final TextStyle medium;
  final TextStyle small;
}

extension AppTextThemeEx on TextStyle {
  TextStyle bold() => copyWith(fontWeight: FontWeight.w600);
}

final appTextTheme = AppTextTheme();
