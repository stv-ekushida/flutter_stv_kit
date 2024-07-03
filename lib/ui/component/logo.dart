// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_stv_kit/gen/assets.gen.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
    this.width = 128,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Image.asset(Assets.images.logo.path),
    );
  }
}
