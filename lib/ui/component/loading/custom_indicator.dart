// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_stv_kit/core/theme/app_color.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key, this.backgroundColor});

  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        backgroundColor: backgroundColor ?? AppColor.primaryColor,
      ),
    );
  }
}
