// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_stv_kit/core/app_color.dart';

extension BuildContextEx on BuildContext {
  Future<void> showInfoDialog(
      String title, String message, VoidCallback onPressed) async {
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

  Future<void> showConfirmDialog(
      String title, String message, VoidCallback onPressed) async {
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
