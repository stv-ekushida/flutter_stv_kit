// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Project imports:
import 'package:flutter_stv_kit/core/app_color.dart';

class CustomSnsButton extends StatelessWidget {
  const CustomSnsButton({
    super.key,
    required this.title,
    required this.iconData,
    this.onPressed,
    this.backgroundColor = Colors.blue,
    this.width,
    this.textStyle,
  });

  final String title;
  final IconData iconData;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final double? width;
  final TextStyle? textStyle;

  final double _defaultWidth = 314;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: width ?? _defaultWidth,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          children: [
            FaIcon(
              iconData,
              size: 30,
              color: AppColor.primaryColor,
            ),
            const Spacer(),
            Text(
              title,
              style: textStyle,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
