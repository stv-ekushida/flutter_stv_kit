// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:flutter_stv_kit/foundation/app_router.dart';

class PortfolioListScreen extends StatelessWidget {
  const PortfolioListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('components'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('認証'),
            onTap: () => context.goNamed(ScreenType.login.name),
          ),
          const ListTile(
            title: Text('開発'),
          ),
        ],
      ),
    );
  }
}
