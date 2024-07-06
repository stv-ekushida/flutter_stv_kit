// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_stv_kit/core/theme/app_color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.onPressed,
    this.backgroundColor = Colors.blue,
    this.width,
    this.textStyle,
  });

  final String title;
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
          textStyle: textStyle,
          foregroundColor: Colors.white,
          backgroundColor: AppColor.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(title),
      ),
    );
  }
}
