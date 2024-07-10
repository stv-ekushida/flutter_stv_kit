// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:flutter_stv_kit/core/app_router.dart';
import 'package:flutter_stv_kit/core/theme/app_theme.dart';
import 'package:flutter_stv_kit/i18n/strings_ja.g.dart';

enum AboutMenuType {
  license,
  cancelMember,
}

extension AboutMenuTypeEx on AboutMenuType {
  String get title {
    switch (this) {
      case AboutMenuType.license:
        return i18n.strings.about.menuLicense;
      case AboutMenuType.cancelMember:
        return i18n.strings.about.menuCancelMemberShip;
    }
  }

  void onTapped(BuildContext context) {
    switch (this) {
      case AboutMenuType.license:
        context.goNamed(ScreenType.license.name);
      case AboutMenuType.cancelMember:
        context.goNamed(ScreenType.cancelMemberShip.name);
    }
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.strings.about.screen),
      ),
      body: const _AboutPageMenu(),
    );
  }
}

class _AboutPageMenu extends ConsumerWidget {
  const _AboutPageMenu();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) {
        if (index == AboutMenuType.values.length) {
          return const SizedBox.shrink();
        }

        final menuType = AboutMenuType.values[index];

        return ListTile(
          title: Text(
            menuType.title,
            style: theme.textTheme.medium,
          ),
          trailing: const Icon(Icons.arrow_forward_ios_sharp),
          onTap: () => menuType.onTapped(context),
        );
      },
      separatorBuilder: (_, index) => const Divider(),
      itemCount: AboutMenuType.values.length + 1,
    );
  }
}
