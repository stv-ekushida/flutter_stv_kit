// Flutter imports:
import 'package:flutter/cupertino.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:flutter_stv_kit/ui/authentication/login/login_screen.dart';
import 'package:flutter_stv_kit/ui/authentication/password_reset/password_reset_screen.dart';
import 'package:flutter_stv_kit/ui/authentication/sign_up/auth_code_screen.dart';
import 'package:flutter_stv_kit/ui/authentication/sign_up/sign_up_with_email_screen.dart';
import 'package:flutter_stv_kit/ui/authentication/sign_up/sing_up_screen.dart';
import 'package:flutter_stv_kit/ui/home/home_screen.dart';
import 'package:flutter_stv_kit/ui/news/news_list/news_list_screen.dart';
import 'package:flutter_stv_kit/ui/notification/notification_settings_screen.dart';
import 'package:flutter_stv_kit/ui/other/license_screen.dart';
import 'package:flutter_stv_kit/ui/users/about_screen.dart';
import 'package:flutter_stv_kit/ui/users/cancel_membership_screen.dart';
import 'package:flutter_stv_kit/ui/users/profile_screen.dart';

enum ScreenType {
  login,
  signUp,
  signUpWithEmail,
  authCode,
  passwordReset,
  home,
  news,
  profile,
  notificationSettings,
  about,
  license,
  cancelMemberShip,
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
              routes: [
                GoRoute(
                  path: ScreenType.signUpWithEmail.name,
                  name: ScreenType.signUpWithEmail.name,
                  builder: (BuildContext context, GoRouterState state) =>
                      const SignUpWithEmail(),
                ),
              ],
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
          path: '/${ScreenType.authCode.name}',
          name: ScreenType.authCode.name,
          builder: (BuildContext context, GoRouterState state) =>
              const AuthCodeScreen(),
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
              path: ScreenType.profile.name,
              name: ScreenType.profile.name,
              builder: (BuildContext context, GoRouterState state) =>
                  const ProfileScreen(),
            ),
            GoRoute(
              path: ScreenType.notificationSettings.name,
              name: ScreenType.notificationSettings.name,
              builder: (BuildContext context, GoRouterState state) =>
                  const NotificationSettingsScreen(),
            ),
            GoRoute(
              path: ScreenType.about.name,
              name: ScreenType.about.name,
              builder: (BuildContext context, GoRouterState state) =>
                  const AboutScreen(),
              routes: [
                GoRoute(
                  path: ScreenType.license.name,
                  name: ScreenType.license.name,
                  builder: (BuildContext context, GoRouterState state) =>
                      const LicenseScreen(),
                ),
                GoRoute(
                  path: ScreenType.cancelMemberShip.name,
                  name: ScreenType.cancelMemberShip.name,
                  builder: (BuildContext context, GoRouterState state) =>
                      const CancelMembershipScreen(),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  },
);
