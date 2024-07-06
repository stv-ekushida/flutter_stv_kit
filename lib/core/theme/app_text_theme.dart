// Flutter imports:
import 'package:flutter/material.dart';

class AppTextTheme {
  const AppTextTheme._({
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
      large: const TextStyle(fontSize: 16).merge(baseTextStyle),
      medium: const TextStyle(fontSize: 14).merge(baseTextStyle),
      small: const TextStyle(fontSize: 12).merge(baseTextStyle),
    );
  }

  final TextStyle large;
  final TextStyle medium;
  final TextStyle small;
}

extension AppTextThemeEx on TextStyle {
  TextStyle bold() => copyWith(fontWeight: FontWeight.w600);
}

final appTextTheme = AppTextTheme();
