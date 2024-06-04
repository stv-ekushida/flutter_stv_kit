// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:bart/bart.dart';

// Project imports:
import 'package:flutter_stv_kit/ui/my_page/my_page_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BartScaffold(
      routesBuilder:
          subRoutes, // add a reference to the subRoutes list you created before
      bottomBar: BartBottomBar
          .adaptive(), // add the bottom bar (see below for other options)
    );
  }

  List<BartMenuRoute> subRoutes() {
    return [
      BartMenuRoute.bottomBar(
        label: "ホーム",
        icon: Icons.home,
        path: '/home',
        pageBuilder: (_, __, ___) => Scaffold(
          appBar: AppBar(
            title: const Text('ホーム'),
          ),
          body: Container(),
        ),
      ),
      BartMenuRoute.bottomBar(
        label: "マイページ",
        icon: Icons.person,
        path: '/myPage',
        pageBuilder: (_, __, ___) => const MyPageScreen(),
      ),
    ];
  }
}
