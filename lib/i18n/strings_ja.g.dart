/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 1
/// Strings: 27
///
/// Built on 2024-06-05 at 02:38 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.ja;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.ja) // set locale
/// - Locale locale = AppLocale.ja.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.ja) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	ja(languageCode: 'ja', build: Translations.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of i18n).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = i18n.someKey.anotherKey;
/// String b = i18n['someKey.anotherKey']; // Only for edge cases!
Translations get i18n => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final i18n = Translations.of(context); // Get i18n variable.
/// String a = i18n.someKey.anotherKey; // Use i18n variable.
/// String b = i18n['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.i18n.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get i18n => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final i18n = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final _StringsJaStringsJa strings = _StringsJaStringsJa._(_root);
}

// Path: strings
class _StringsJaStringsJa {
	_StringsJaStringsJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsJaStringsLoginJa login = _StringsJaStringsLoginJa._(_root);
	late final _StringsJaStringsPasswordResetJa passwordReset = _StringsJaStringsPasswordResetJa._(_root);
	late final _StringsJaStringsMyPageJa myPage = _StringsJaStringsMyPageJa._(_root);
	late final _StringsJaStringsOauthJa oauth = _StringsJaStringsOauthJa._(_root);
	late final _StringsJaStringsErrorJa error = _StringsJaStringsErrorJa._(_root);
}

// Path: strings.login
class _StringsJaStringsLoginJa {
	_StringsJaStringsLoginJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get screen => 'ログイン';
	String get loginBtn => 'ログイン';
	String get email => 'メールアドレス';
	String get emailHint => 'メールアドレスを入力してください';
	String get password => 'パスワード';
	String get passwordHint => 'パスワードを入力してください';
	String get resetPassword => 'パスワードを忘れた方はこちらから';
	String get gotoSignUp => 'アカウントをお持ちでない方';
	String get signUp => '会員登録';
}

// Path: strings.passwordReset
class _StringsJaStringsPasswordResetJa {
	_StringsJaStringsPasswordResetJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get screen => 'パスワード再設定';
	String get subTitle => 'パスワードを忘れた方';
	String get description => 'ご登録されたメールアドレスにパスワード再設定のご案内メールが送信されます。';
	String get email => 'メールアドレス';
	String get emailHint => 'メールアドレスを入力してください';
	String get resetBtn => 'パスワードをリセットする';
}

// Path: strings.myPage
class _StringsJaStringsMyPageJa {
	_StringsJaStringsMyPageJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get screen => 'マイページ';
	late final _StringsJaStringsMyPageMenuJa menu = _StringsJaStringsMyPageMenuJa._(_root);
	String get logout => 'ログアウト';
}

// Path: strings.oauth
class _StringsJaStringsOauthJa {
	_StringsJaStringsOauthJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get apple => 'Appleでサインイン';
	String get google => 'Googleでサインイン';
	String get line => 'LINEでサインイン';
}

// Path: strings.error
class _StringsJaStringsErrorJa {
	_StringsJaStringsErrorJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get emailAndPassword => 'メールアドレス及びパスワードを正しく入力してください';
	String get email => 'メールアドレスを正しく入力してください';
}

// Path: strings.myPage.menu
class _StringsJaStringsMyPageMenuJa {
	_StringsJaStringsMyPageMenuJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get profile => '登録情報';
	String get notificationSettings => '通知情報';
	String get term => '利用規約';
	String get privacy => 'プライバシーポリシー';
	String get about => 'アプリについて';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'strings.login.screen': return 'ログイン';
			case 'strings.login.loginBtn': return 'ログイン';
			case 'strings.login.email': return 'メールアドレス';
			case 'strings.login.emailHint': return 'メールアドレスを入力してください';
			case 'strings.login.password': return 'パスワード';
			case 'strings.login.passwordHint': return 'パスワードを入力してください';
			case 'strings.login.resetPassword': return 'パスワードを忘れた方はこちらから';
			case 'strings.login.gotoSignUp': return 'アカウントをお持ちでない方';
			case 'strings.login.signUp': return '会員登録';
			case 'strings.passwordReset.screen': return 'パスワード再設定';
			case 'strings.passwordReset.subTitle': return 'パスワードを忘れた方';
			case 'strings.passwordReset.description': return 'ご登録されたメールアドレスにパスワード再設定のご案内メールが送信されます。';
			case 'strings.passwordReset.email': return 'メールアドレス';
			case 'strings.passwordReset.emailHint': return 'メールアドレスを入力してください';
			case 'strings.passwordReset.resetBtn': return 'パスワードをリセットする';
			case 'strings.myPage.screen': return 'マイページ';
			case 'strings.myPage.menu.profile': return '登録情報';
			case 'strings.myPage.menu.notificationSettings': return '通知情報';
			case 'strings.myPage.menu.term': return '利用規約';
			case 'strings.myPage.menu.privacy': return 'プライバシーポリシー';
			case 'strings.myPage.menu.about': return 'アプリについて';
			case 'strings.myPage.logout': return 'ログアウト';
			case 'strings.oauth.apple': return 'Appleでサインイン';
			case 'strings.oauth.google': return 'Googleでサインイン';
			case 'strings.oauth.line': return 'LINEでサインイン';
			case 'strings.error.emailAndPassword': return 'メールアドレス及びパスワードを正しく入力してください';
			case 'strings.error.email': return 'メールアドレスを正しく入力してください';
			default: return null;
		}
	}
}
