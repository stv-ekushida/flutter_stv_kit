// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_stv_kit/core/theme/app_color.dart';

class CustomTextButton extends StatefulWidget {
  const CustomTextButton({
    super.key,
    required this.title,
    this.onPressed,
  });

  final String title;
  final VoidCallback? onPressed;

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> state) {
            return AppColor.primaryColor;
          },
        ),
      ),
      child: Text(widget.title),
    );
  }
}
