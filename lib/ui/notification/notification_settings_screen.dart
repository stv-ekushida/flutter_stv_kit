// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_stv_kit/core/theme/app_theme.dart';
import 'package:gap/gap.dart';

// Project imports:
import 'package:flutter_stv_kit/core/theme/app_text_theme.dart';
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
            _NotificationSettingsTitle(
                title: NotificationSettingsCategoryType.pushNotification.title),
            const Divider(),
            const Gap(16),
            const _NotificationSettingSection1(),
            const Gap(16),
            _NotificationSettingsTitle(
                title: NotificationSettingsCategoryType.email.title),
            const Divider(),
            const Gap(16),
            const _NotificationSettingsSection2(),
            const Gap(16),
          ],
        ),
      ),
    );
  }
}

class _NotificationSettingsTitle extends ConsumerWidget {
  const _NotificationSettingsTitle({required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return Text(
      title,
      style: theme.textTheme.medium.bold(),
    );
  }
}

class _NotificationSettingSection1 extends ConsumerWidget {
  const _NotificationSettingSection1();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (_, index) {
        if (index == NotificationSettingsCategory1Type.values.length) {
          return const SizedBox.shrink();
        }

        final item = NotificationSettingsCategory1Type.values[index];

        return SwitchListTile(
          title: Text(
            item.title,
            style: theme.textTheme.medium,
          ),
          value: true,
          onChanged: (value) {},
        );
      },
      separatorBuilder: (_, __) => const Divider(),
      itemCount: NotificationSettingsCategory1Type.values.length + 1,
    );
  }
}

class _NotificationSettingsSection2 extends ConsumerWidget {
  const _NotificationSettingsSection2();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);

    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (_, index) {
        if (index == NotificationSettingsCategory2Type.values.length) {
          return const SizedBox.shrink();
        }

        final item = NotificationSettingsCategory2Type.values[index];

        return SwitchListTile(
          title: Text(
            item.title,
            style: theme.textTheme.medium,
          ),
          value: true,
          onChanged: (value) {},
        );
      },
      separatorBuilder: (_, __) => const Divider(),
      itemCount: NotificationSettingsCategory2Type.values.length + 1,
    );
  }
}
