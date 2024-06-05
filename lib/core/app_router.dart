// Flutter imports:
import 'package:flutter/cupertino.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:flutter_stv_kit/ui/authentication/login/login_screen.dart';
import 'package:flutter_stv_kit/ui/authentication/pasword_reset/password_reset_screen.dart';
import 'package:flutter_stv_kit/ui/home/home_screen.dart';
import 'package:flutter_stv_kit/ui/portfolio_list_screen.dart';

enum ScreenType {
  menu,
  login,
  passwordReset,
  home,
  devHome,
}

final appRouterProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) =>
              const PortfolioListScreen(),
          routes: [
            GoRoute(
              path: ScreenType.login.name,
              name: ScreenType.login.name,
              builder: (BuildContext context, GoRouterState state) =>
                  const LoginScreen(),
              routes: [
                GoRoute(
                  path: ScreenType.passwordReset.name,
                  name: ScreenType.passwordReset.name,
                  builder: (BuildContext context, GoRouterState state) =>
                      const PasswordResetScreen(),
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          path: '/${ScreenType.home.name}',
          name: ScreenType.home.name,
          builder: (BuildContext context, GoRouterState state) =>
              const HomeScreen(),
        ),
      ],
    );
  },
);
