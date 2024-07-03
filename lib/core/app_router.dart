// Flutter imports:
import 'package:flutter/cupertino.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:flutter_stv_kit/ui/authentication/login/login_screen.dart';
import 'package:flutter_stv_kit/ui/authentication/password_reset/password_reset_screen.dart';
import 'package:flutter_stv_kit/ui/authentication/sign_up/sing_up_screen.dart';
import 'package:flutter_stv_kit/ui/home/home_screen.dart';
import 'package:flutter_stv_kit/ui/news/news_list/news_list_screen.dart';
import 'package:flutter_stv_kit/ui/notification/notificatin_settings_screen.dart';

enum ScreenType {
  login,
  signUp,
  passwordReset,
  home,
  news,
  notificationSettings,
}

final appRouterProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          name: ScreenType.login.name,
          builder: (BuildContext context, GoRouterState state) =>
              const LoginScreen(),
          routes: [
            GoRoute(
              path: ScreenType.signUp.name,
              name: ScreenType.signUp.name,
              builder: (BuildContext context, GoRouterState state) =>
                  const SignUpScreen(),
            ),
            GoRoute(
              path: ScreenType.passwordReset.name,
              name: ScreenType.passwordReset.name,
              builder: (BuildContext context, GoRouterState state) =>
                  const PasswordResetScreen(),
            ),
          ],
        ),
        GoRoute(
          path: '/${ScreenType.home.name}',
          name: ScreenType.home.name,
          builder: (BuildContext context, GoRouterState state) =>
              const HomeScreen(),
          routes: [
            GoRoute(
              path: ScreenType.news.name,
              name: ScreenType.news.name,
              builder: (BuildContext context, GoRouterState state) =>
                  const NewsListScreen(),
            ),
            GoRoute(
              path: ScreenType.notificationSettings.name,
              name: ScreenType.notificationSettings.name,
              builder: (BuildContext context, GoRouterState state) =>
                  const NotificationSettingsScreen(),
            ),
          ],
        ),
      ],
    );
  },
);
