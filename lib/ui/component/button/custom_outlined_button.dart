// Flutter imports:
import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
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
      child: OutlinedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          textStyle: textStyle,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(title),
      ),
    );
  }
}
