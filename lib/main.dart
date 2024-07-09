// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:device_preview/device_preview.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:flutter_stv_kit/core/app_router.dart';
import 'package:flutter_stv_kit/core/theme/app_theme.dart';
import 'package:flutter_stv_kit/i18n/strings_ja.g.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();

  runApp(
    DevicePreview(
      storage: DevicePreviewStorage.none(),
      availableLocales: const [
        Locale('ja_JP'),
      ],
      tools: const [
        DeviceSection(),
      ],
      builder: (context) =>
          const ProviderScope(child: MyApp()), // Wrap your app
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(appRouterProvider);
    final theme = ref.watch(appThemeProvider);
    const jpLocale = Locale('ja', 'JP');

    return MaterialApp.router(
      title: 'STV Flutter Components',
      locale: jpLocale,
      supportedLocales: const [jpLocale],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      theme: theme.themeData,
      routerConfig: goRouter,
    );
  }
}
