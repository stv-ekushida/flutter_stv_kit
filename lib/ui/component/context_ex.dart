// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_stv_kit/core/theme/app_color.dart';

extension BuildContextEx on BuildContext {
  Future<void> showInfoDialog({
    required title,
    required String message,
    String? btnName,
    required VoidCallback onPressed,
  }) async {
    await showDialog<void>(
      context: this,
      builder: (context) => AlertDialog(
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              onPressed();
            },
            child: Text(
              key: const ValueKey('info_dialog_ok_btn'),
              btnName ?? 'OK',
              style: const TextStyle(
                color: AppColor.primaryColor,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> showConfirmDialog({
    required title,
    required String message,
    String? btnName,
    required VoidCallback onPressed,
  }) async {
    await showDialog<void>(
      context: this,
      builder: (context) => AlertDialog(
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'Cancel',
              style: TextStyle(
                color: AppColor.primaryColor,
                fontSize: 14,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              onPressed();
            },
            child: const Text(
              'OK',
              style: TextStyle(
                color: AppColor.primaryColor,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
