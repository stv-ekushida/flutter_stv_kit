// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

// Project imports:
import 'package:flutter_stv_kit/i18n/strings_ja.g.dart';

enum NotificationSettingsCategoryType {
  pushNotification,
  email,
}

extension NotificationSettingsCategoryTypeEx
    on NotificationSettingsCategoryType {
  String get title {
    switch (this) {
      case NotificationSettingsCategoryType.pushNotification:
        return 'プッシュ通知';
      case NotificationSettingsCategoryType.email:
        return 'メールアドレス通知';
    }
  }
}

enum NotificationSettingsCategory1Type {
  message,
  news,
}

extension NotificationSettingsCategory1TypeEx
    on NotificationSettingsCategory1Type {
  String get title {
    switch (this) {
      case NotificationSettingsCategory1Type.message:
        return 'メッセージ';
      case NotificationSettingsCategory1Type.news:
        return 'お知らせ';
    }
  }
}

enum NotificationSettingsCategory2Type {
  message,
  news,
}

extension NotificationSettingsCategory2TypeEx
    on NotificationSettingsCategory2Type {
  String get title {
    switch (this) {
      case NotificationSettingsCategory2Type.message:
        return 'プッシュ通知';
      case NotificationSettingsCategory2Type.news:
        return 'お知らせ';
    }
  }
}

class NotificationSettingsScreen extends ConsumerStatefulWidget {
  const NotificationSettingsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NotificationScreenState();
}

class _NotificationScreenState
    extends ConsumerState<NotificationSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.strings.notificationSettings.screen),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ..._buildSectionTitle(
                NotificationSettingsCategoryType.pushNotification.title),
            const Divider(),
            _buildSection1(),
            ..._buildSectionTitle(NotificationSettingsCategoryType.email.title),
            const Divider(),
            _buildSection2(),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildSectionTitle(String title) {
    return [
      const Gap(16),
      Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      const Gap(16),
    ];
  }

  Widget _buildSection1() {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (_, index) {
        if (index == NotificationSettingsCategory1Type.values.length) {
          return const SizedBox.shrink();
        }

        final item = NotificationSettingsCategory1Type.values[index];

        return SwitchListTile(
          title: Text(item.title),
          value: true,
          onChanged: (value) {},
        );
      },
      separatorBuilder: (_, __) => const Divider(),
      itemCount: NotificationSettingsCategory1Type.values.length + 1,
    );
  }

  Widget _buildSection2() {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (_, index) {
        if (index == NotificationSettingsCategory2Type.values.length) {
          return const SizedBox.shrink();
        }

        final item = NotificationSettingsCategory2Type.values[index];

        return SwitchListTile(
          title: Text(item.title),
          value: true,
          onChanged: (value) {},
        );
      },
      separatorBuilder: (_, __) => const Divider(),
      itemCount: NotificationSettingsCategory2Type.values.length + 1,
    );
  }
}
