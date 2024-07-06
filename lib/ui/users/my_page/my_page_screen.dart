// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:flutter_stv_kit/core/app_router.dart';
import 'package:flutter_stv_kit/core/theme/app_text_theme.dart';
import 'package:flutter_stv_kit/data/model/user/user.dart';
import 'package:flutter_stv_kit/gen/assets.gen.dart';
import 'package:flutter_stv_kit/i18n/strings_ja.g.dart';
import 'package:flutter_stv_kit/ui/component/button/custom_text_button.dart';
import 'package:flutter_stv_kit/ui/component/context_ex.dart';
import 'package:flutter_stv_kit/ui/component/custom_divider.dart';
import 'package:flutter_stv_kit/ui/component/custom_indicator.dart';
import 'package:flutter_stv_kit/ui/users/my_page/my_page_screen_view_model.dart';

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
        final notifier = ref.read(myPageScreenViewModelProvider().notifier);
        notifier.fetch();
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          i18n.strings.myPage.screen,
          style: appTextTheme.medium,
        ),
        actions: [
          IconButton(
            onPressed: () => context.goNamed(ScreenType.news.name),
            icon: const Icon(Icons.notifications_none_outlined),
          )
        ],
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    final state = ref.watch(myPageScreenViewModelProvider());

    return SingleChildScrollView(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              _MyPageHeader(user: state.user),
              const CustomDivider(),
              const _MyPageSection1(),
              const CustomDivider(),
              const Gap(32),
              const CustomDivider(),
              const _MyPageSection2(),
              const CustomDivider(),
              const Gap(32),
              const Gap(32),
              CustomTextButton(
                title: i18n.strings.myPage.logout,
                onPressed: () => _onPressedLogout(context),
              ),
              const Gap(32),
            ],
          ),
          if (state.isLoading) const CustomIndicator()
        ],
      ),
    );
  }

  void _onPressedLogout(BuildContext context) {
    context.showConfirmDialog(
      '確認',
      'ログアウトしますか？',
      () => _invokeLogout(),
    );
  }

  Future<void> _invokeLogout() async {
    await ref.read(myPageScreenViewModelProvider().notifier).signOut();

    if (!mounted) {
      return;
    }

    context.goNamed(ScreenType.login.name);
  }
}

class _MyPageHeader extends StatelessWidget {
  const _MyPageHeader({super.key, required this.user});

  final User? user;

  @override
  Widget build(BuildContext context) {
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
                style: appTextTheme.large.bold(),
              ),
              Text(
                user?.email ?? '-',
                style: appTextTheme.medium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _MyPageSection1 extends StatelessWidget {
  const _MyPageSection1({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) {
        final menuType = MyPageMenuType1.values[index];

        return ListTile(
          title: Text(
            menuType.title,
            style: appTextTheme.medium,
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

class _MyPageSection2 extends StatelessWidget {
  const _MyPageSection2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) {
        return ListTile(
          title: Text(
            MyPageMenuType2.values[index].title,
            style: appTextTheme.medium,
          ),
          trailing: const Icon(Icons.arrow_forward_ios_sharp),
        );
      },
      separatorBuilder: (_, index) => const CustomDivider(),
      itemCount: MyPageMenuType2.values.length,
    );
  }
}
