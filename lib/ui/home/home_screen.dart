// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:bart/bart.dart';
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:flutter_stv_kit/core/app_router.dart';
import 'package:flutter_stv_kit/ui/message/message_screen.dart';
import 'package:flutter_stv_kit/ui/users/my_page_screen.dart';

enum GlobalNavigationType {
  home,
  message,
  myPage,
}

extension GlobalNavigationTypeEx on GlobalNavigationType {
  String get label {
    switch (this) {
      case GlobalNavigationType.home:
        return 'ホーム';
      case GlobalNavigationType.message:
        return 'メッセージ';
      case GlobalNavigationType.myPage:
        return 'マイページ';
    }
  }
}

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
        label: GlobalNavigationType.home.label,
        icon: Icons.home,
        path: '/home',
        pageBuilder: (_, __, ___) => Scaffold(
          appBar: AppBar(
            title: Text(GlobalNavigationType.home.label),
            actions: [
              IconButton(
                onPressed: () => context.goNamed(ScreenType.news.name),
                icon: const Icon(Icons.notifications_none_outlined),
              )
            ],
          ),
          body: Container(),
        ),
      ),
      BartMenuRoute.bottomBar(
        label: GlobalNavigationType.message.label,
        icon: Icons.chat_bubble,
        path: '/message',
        pageBuilder: (_, __, ___) => const MessageScreen(),
      ),
      BartMenuRoute.bottomBar(
        label: GlobalNavigationType.myPage.label,
        icon: Icons.person,
        path: '/myPage',
        pageBuilder: (_, __, ___) => const MyPageScreen(),
      ),
    ];
  }
}
