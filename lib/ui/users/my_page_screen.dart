// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_stv_kit/data/controller/auth/auth_controller.dart';
import 'package:flutter_stv_kit/ui/component/loading/screen_base_container.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:flutter_stv_kit/core/app_router.dart';
import 'package:flutter_stv_kit/core/theme/app_text_theme.dart';
import 'package:flutter_stv_kit/core/theme/app_theme.dart';
import 'package:flutter_stv_kit/data/controller/user/user_controller.dart';
import 'package:flutter_stv_kit/data/model/user/user.dart';
import 'package:flutter_stv_kit/gen/assets.gen.dart';
import 'package:flutter_stv_kit/i18n/strings_ja.g.dart';
import 'package:flutter_stv_kit/ui/component/context_ex.dart';
import 'package:flutter_stv_kit/ui/component/custom_divider.dart';

enum MyPageMenuType1 {
  profile,
  notificationSettings,
}

extension MyPageMenuType1Ex on MyPageMenuType1 {
  String get title {
    switch (this) {
      case MyPageMenuType1.profile:
        return i18n.strings.myPage.menu.profile;
      case MyPageMenuType1.notificationSettings:
        return i18n.strings.myPage.menu.notificationSettings;
    }
  }

  void onTapped(BuildContext context) {
    switch (this) {
      case MyPageMenuType1.profile:
        context.goNamed(ScreenType.profile.name);
      case MyPageMenuType1.notificationSettings:
        context.goNamed(ScreenType.notificationSettings.name);
    }
  }
}

enum MyPageMenuType2 {
  term,
  privacy,
  about,
}

extension MyPageMenuType2Ex on MyPageMenuType2 {
  String get title {
    switch (this) {
      case MyPageMenuType2.term:
        return i18n.strings.myPage.menu.term;
      case MyPageMenuType2.privacy:
        return i18n.strings.myPage.menu.privacy;
      case MyPageMenuType2.about:
        return i18n.strings.myPage.menu.about;
    }
  }
}

class MyPageScreen extends ConsumerStatefulWidget {
  const MyPageScreen({super.key});

  @override
  ConsumerState<MyPageScreen> createState() => _MyPageScreenState();
}

class _MyPageScreenState extends ConsumerState<MyPageScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        final notifier = ref.read(userControllerProvider().notifier);
        notifier.fetch();
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(appThemeProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          i18n.strings.myPage.screen,
          style: theme.textTheme.medium,
        ),
        actions: [
          IconButton(
            onPressed: () => context.goNamed(ScreenType.news.name),
            icon: const Icon(Icons.notifications_none_outlined),
          )
        ],
      ),
      body: ScreenBaseContainer(
        child: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    final state = ref.watch(userControllerProvider());

    return state.when(
      idle: SizedBox.shrink,
      data: (user) => SingleChildScrollView(
        child: Column(
          children: [
            _MyPageHeader(user: user),
            const CustomDivider(),
            const _MyPageSection1(),
            const CustomDivider(),
            const Gap(32),
            const CustomDivider(),
            const _MyPageSection2(),
            const CustomDivider(),
            const Gap(32),
            const Gap(32),
            TextButton(
              onPressed: () => _onPressedLogout(context),
              child: Text(i18n.strings.myPage.logout),
            ),
            const Gap(32),
          ],
        ),
      ),
    );
  }

  void _onPressedLogout(BuildContext context) {
    context.showConfirmDialog(
      i18n.strings.info.logout.title,
      i18n.strings.info.logout.message,
      () => _invokeLogout(),
    );
  }

  Future<void> _invokeLogout() async {
    final result = await ref.read(authControllerProvider().notifier).signOut();

    if (!result) return;

    await ref.read(userControllerProvider().notifier).clearUser();

    if (!mounted) return;

    context.goNamed(ScreenType.login.name);
  }
}

class _MyPageHeader extends ConsumerWidget {
  const _MyPageHeader({required this.user});

  final User? user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Container(
      color: Colors.grey[100],
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      child: Row(
        children: [
          CircleAvatar(child: Image.asset(Assets.images.logo.path)),
          const Gap(16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user == null ? '--' : '${user?.userName} 様',
                style: theme.textTheme.large.bold(),
              ),
              Text(
                user?.email ?? '-',
                style: theme.textTheme.medium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _MyPageSection1 extends ConsumerWidget {
  const _MyPageSection1();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) {
        final menuType = MyPageMenuType1.values[index];

        return ListTile(
          title: Text(
            menuType.title,
            style: theme.textTheme.medium,
          ),
          trailing: const Icon(Icons.arrow_forward_ios_sharp),
          onTap: () => menuType.onTapped(context),
        );
      },
      separatorBuilder: (_, index) => const CustomDivider(),
      itemCount: MyPageMenuType1.values.length,
    );
  }
}

class _MyPageSection2 extends ConsumerWidget {
  const _MyPageSection2();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) {
        return ListTile(
          title: Text(
            MyPageMenuType2.values[index].title,
            style: theme.textTheme.medium,
          ),
          trailing: const Icon(Icons.arrow_forward_ios_sharp),
        );
      },
      separatorBuilder: (_, index) => const CustomDivider(),
      itemCount: MyPageMenuType2.values.length,
    );
  }
}
