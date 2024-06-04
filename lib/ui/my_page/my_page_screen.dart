// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_stv_kit/gen/assets.gen.dart';
import 'package:flutter_stv_kit/i18n/strings_ja.g.dart';
import 'package:flutter_stv_kit/ui/component/custom_divider.dart';

// Package imports:
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:flutter_stv_kit/foundation/app_router.dart';
import 'package:flutter_stv_kit/ui/component/context_ex.dart';
import 'package:flutter_stv_kit/ui/component/custom_text_button.dart';

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

class MyPageScreen extends StatefulWidget {
  const MyPageScreen({super.key});

  @override
  State<MyPageScreen> createState() => _MyPageScreenState();
}

class _MyPageScreenState extends State<MyPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.strings.myPage.screen),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ..._buildHeader(),
            const CustomDivider(),
            _buildMyPageList1(),
            const CustomDivider(),
            const Gap(32),
            const CustomDivider(),
            _buildMyPageList2(),
            const CustomDivider(),
            const Gap(32),
            ..._buildLogOut(),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildHeader() {
    return [
      Container(
        color: Colors.grey[100],
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: Row(
          children: [
            CircleAvatar(
              child: Image.asset(Assets.images.logo.path),
            ),
            const Gap(16),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'STV　太郎 様',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'example@stv-tech.co.jp',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ];
  }

  Widget _buildMyPageList1() {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) {
        return ListTile(
          title: Text(MyPageMenuType1.values[index].title),
          trailing: const Icon(Icons.arrow_forward_ios_sharp),
        );
      },
      separatorBuilder: (_, index) => const CustomDivider(),
      itemCount: MyPageMenuType1.values.length,
    );
  }

  Widget _buildMyPageList2() {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) {
        return ListTile(
          title: Text(MyPageMenuType2.values[index].title),
          trailing: const Icon(Icons.arrow_forward_ios_sharp),
        );
      },
      separatorBuilder: (_, index) => const CustomDivider(),
      itemCount: MyPageMenuType2.values.length,
    );
  }

  List<Widget> _buildLogOut() {
    return [
      const Gap(32),
      CustomTextButton(
        title: i18n.strings.myPage.logout,
        onPressed: () => _onPressedLogout(),
      ),
      const Gap(32),
    ];
  }

  void _onPressedLogout() {
    context.showConfirmDialog(
      '確認',
      'ログアウトしますか？',
      () {
        context.goNamed(ScreenType.login.name);
      },
    );
  }
}
