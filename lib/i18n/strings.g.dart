/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 126 (63 per locale)
///
/// Built on 2024-05-12 at 13:58 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build),
	ru(languageCode: 'ru', build: _StringsRu.build);

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
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

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
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
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
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final _StringsAppEn app = _StringsAppEn._(_root);
	late final _StringsAlertEn alert = _StringsAlertEn._(_root);
	late final _StringsValidationEn validation = _StringsValidationEn._(_root);
	late final _StringsUtilsEn utils = _StringsUtilsEn._(_root);
	late final _StringsUserEn user = _StringsUserEn._(_root);
	late final _StringsEnumsEn enums = _StringsEnumsEn._(_root);
	late final _StringsProfileEn profile = _StringsProfileEn._(_root);
	late final _StringsPersonalDataEn personalData = _StringsPersonalDataEn._(_root);
	late final _StringsAuthEn auth = _StringsAuthEn._(_root);
}

// Path: app
class _StringsAppEn {
	_StringsAppEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => 'Digital bookshelf';
}

// Path: alert
class _StringsAlertEn {
	_StringsAlertEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsAlertUnavailableEn unavailable = _StringsAlertUnavailableEn._(_root);
	late final _StringsAlertConfirmEn confirm = _StringsAlertConfirmEn._(_root);
	String get confirmBecomeAuthor => 'Подтвердите переход аккаунта в статус "Автор".\nОбратный переход невозможен!';
	String get helloAuthor => 'Теперь вы Автор!';
}

// Path: validation
class _StringsValidationEn {
	_StringsValidationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get IsValidEmail => 'Неверный формат адреса электронной почты';
	String get IsValidPhone => 'Неверный формат адреса номера телефона';
	String get NotBlank => 'Должно быть не пустое значение';
	String get IsValidCardCvv => 'Неверный формат CVV карты.';
	String get IsValidDateFormat => 'Неверный формат даты';
	String get IsValidCardExpiry => 'Срок действия карты истек';
	String get IsValidCardNumber => 'Неверный формат номера карты';
}

// Path: utils
class _StringsUtilsEn {
	_StringsUtilsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get ok => 'ОК';
	String get no => 'Нет';
	String get failAuth => 'Неверный логин или пароль';
	String get fail => 'Упс... Что-то пошло не так.';
	String get save => 'Сохранить';
	String get cancel => 'Отмена';
	String get becomeAuthor => 'Стать автором';
	late final _StringsUtilsDatePickerEn datePicker = _StringsUtilsDatePickerEn._(_root);
}

// Path: user
class _StringsUserEn {
	_StringsUserEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsUserPersonEn person = _StringsUserPersonEn._(_root);
	String get email => 'Email';
	String get phone => 'Телефон';
	String get password => 'Пароль';
	late final _StringsUserContactEn contact = _StringsUserContactEn._(_root);
}

// Path: enums
class _StringsEnumsEn {
	_StringsEnumsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsEnumsShowBirthTypeEn showBirthType = _StringsEnumsShowBirthTypeEn._(_root);
	late final _StringsEnumsGenderEn gender = _StringsEnumsGenderEn._(_root);
}

// Path: profile
class _StringsProfileEn {
	_StringsProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get notAuthorized => 'Для доступа к профилю необходимо авторизоваться';
	String get goAuth => 'Авторизоваться';
	late final _StringsProfileMenuEn menu = _StringsProfileMenuEn._(_root);
}

// Path: personalData
class _StringsPersonalDataEn {
	_StringsPersonalDataEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get mainInfo => 'Основная информация';
	String get name => 'Имя и фамилия или псевдоним';
	String get status => 'Статус';
	String get birth => 'День рождения';
	String get selectDateBirth => 'Выбрать день рождения';
	String get sex => 'Пол';
	String get about => 'О себе';
	String get aboutInfo => 'Вашим подписчикам будет интересно узнать о вас...';
	String get contact => 'Контакты';
}

// Path: auth
class _StringsAuthEn {
	_StringsAuthEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsAuthHeaderEn header = _StringsAuthHeaderEn._(_root);
	late final _StringsAuthButtonEn button = _StringsAuthButtonEn._(_root);
}

// Path: alert.unavailable
class _StringsAlertUnavailableEn {
	_StringsAlertUnavailableEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Недоступен';
	String get content => 'Выбранный функционал пока недоступен.';
}

// Path: alert.confirm
class _StringsAlertConfirmEn {
	_StringsAlertConfirmEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Подтвердите действие';
}

// Path: utils.datePicker
class _StringsUtilsDatePickerEn {
	_StringsUtilsDatePickerEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get helpText => 'Выберете день рождения';
	String get confirmText => 'Сохранить';
	String get errorFormatText => 'Дата не входит в допустимый диапазон';
	String get errorInvalidText => 'Неверный формат';
	String get fieldHintText => 'Введите дату рождения';
	String get fieldLabelText => 'День рождения';
}

// Path: user.person
class _StringsUserPersonEn {
	_StringsUserPersonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => 'Имя';
	String get lastName => 'Фамилия';
	String get middleName => 'Отчество';
	String get birth => 'Дата рождения';
	String get gender => 'Пол';
}

// Path: user.contact
class _StringsUserContactEn {
	_StringsUserContactEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get vk => 'ВК';
	String get email => 'Почта';
	String get tg => 'Telegram';
	String get site => 'Сайт';
}

// Path: enums.showBirthType
class _StringsEnumsShowBirthTypeEn {
	_StringsEnumsShowBirthTypeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get show => 'Показывать';
	String get showWithoutYear => 'Показывать без года';
	String get notShow => 'Не показывать';
}

// Path: enums.gender
class _StringsEnumsGenderEn {
	_StringsEnumsGenderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get male => 'Мужской';
	String get female => 'Женский';
	String get notShow => 'Не показывать';
}

// Path: profile.menu
class _StringsProfileMenuEn {
	_StringsProfileMenuEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get personal => 'Учетная запись';
}

// Path: auth.header
class _StringsAuthHeaderEn {
	_StringsAuthHeaderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get welcome => 'Добро пожаловать';
	String get info => 'Введите адрес электронной почты и пароль';
	late final _StringsAuthHeaderAppBarEn appBar = _StringsAuthHeaderAppBarEn._(_root);
}

// Path: auth.button
class _StringsAuthButtonEn {
	_StringsAuthButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get logIn => 'Войти';
	String get logUp => 'Зарегистрироваться';
}

// Path: auth.header.appBar
class _StringsAuthHeaderAppBarEn {
	_StringsAuthHeaderAppBarEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get signIn => 'Авторизация';
	String get signUp => 'Регистрация';
	String get personalData => 'Личные данные';
}

// Path: <root>
class _StringsRu implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsRu.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsRu _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsAppRu app = _StringsAppRu._(_root);
	@override late final _StringsAlertRu alert = _StringsAlertRu._(_root);
	@override late final _StringsValidationRu validation = _StringsValidationRu._(_root);
	@override late final _StringsUtilsRu utils = _StringsUtilsRu._(_root);
	@override late final _StringsUserRu user = _StringsUserRu._(_root);
	@override late final _StringsEnumsRu enums = _StringsEnumsRu._(_root);
	@override late final _StringsProfileRu profile = _StringsProfileRu._(_root);
	@override late final _StringsPersonalDataRu personalData = _StringsPersonalDataRu._(_root);
	@override late final _StringsAuthRu auth = _StringsAuthRu._(_root);
}

// Path: app
class _StringsAppRu implements _StringsAppEn {
	_StringsAppRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Digital bookshelf';
}

// Path: alert
class _StringsAlertRu implements _StringsAlertEn {
	_StringsAlertRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override late final _StringsAlertUnavailableRu unavailable = _StringsAlertUnavailableRu._(_root);
	@override late final _StringsAlertConfirmRu confirm = _StringsAlertConfirmRu._(_root);
	@override String get confirmBecomeAuthor => 'Подтвердите переход аккаунта в статус "Автор".\nОбратный переход невозможен!';
	@override String get helloAuthor => 'Теперь вы Автор!';
}

// Path: validation
class _StringsValidationRu implements _StringsValidationEn {
	_StringsValidationRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get IsValidEmail => 'Неверный формат адреса электронной почты';
	@override String get IsValidPhone => 'Неверный формат адреса номера телефона';
	@override String get NotBlank => 'Должно быть не пустое значение';
	@override String get IsValidCardCvv => 'Неверный формат CVV карты.';
	@override String get IsValidDateFormat => 'Неверный формат даты';
	@override String get IsValidCardExpiry => 'Срок действия карты истек';
	@override String get IsValidCardNumber => 'Неверный формат номера карты';
}

// Path: utils
class _StringsUtilsRu implements _StringsUtilsEn {
	_StringsUtilsRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get ok => 'ОК';
	@override String get no => 'Нет';
	@override String get failAuth => 'Неверный логин или пароль';
	@override String get fail => 'Упс... Что-то пошло не так.';
	@override String get save => 'Сохранить';
	@override String get cancel => 'Отмена';
	@override String get becomeAuthor => 'Стать автором';
	@override late final _StringsUtilsDatePickerRu datePicker = _StringsUtilsDatePickerRu._(_root);
}

// Path: user
class _StringsUserRu implements _StringsUserEn {
	_StringsUserRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override late final _StringsUserPersonRu person = _StringsUserPersonRu._(_root);
	@override String get email => 'Email';
	@override String get phone => 'Телефон';
	@override String get password => 'Пароль';
	@override late final _StringsUserContactRu contact = _StringsUserContactRu._(_root);
}

// Path: enums
class _StringsEnumsRu implements _StringsEnumsEn {
	_StringsEnumsRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override late final _StringsEnumsShowBirthTypeRu showBirthType = _StringsEnumsShowBirthTypeRu._(_root);
	@override late final _StringsEnumsGenderRu gender = _StringsEnumsGenderRu._(_root);
}

// Path: profile
class _StringsProfileRu implements _StringsProfileEn {
	_StringsProfileRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get notAuthorized => 'Для доступа к профилю необходимо авторизоваться';
	@override String get goAuth => 'Авторизоваться';
	@override late final _StringsProfileMenuRu menu = _StringsProfileMenuRu._(_root);
}

// Path: personalData
class _StringsPersonalDataRu implements _StringsPersonalDataEn {
	_StringsPersonalDataRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get mainInfo => 'Основная информация';
	@override String get name => 'Имя и фамилия или псевдоним';
	@override String get status => 'Статус';
	@override String get birth => 'День рождения';
	@override String get selectDateBirth => 'Выбрать день рождения';
	@override String get sex => 'Пол';
	@override String get about => 'О себе';
	@override String get aboutInfo => 'Вашим подписчикам будет интересно узнать о вас...';
	@override String get contact => 'Контакты';
}

// Path: auth
class _StringsAuthRu implements _StringsAuthEn {
	_StringsAuthRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override late final _StringsAuthHeaderRu header = _StringsAuthHeaderRu._(_root);
	@override late final _StringsAuthButtonRu button = _StringsAuthButtonRu._(_root);
}

// Path: alert.unavailable
class _StringsAlertUnavailableRu implements _StringsAlertUnavailableEn {
	_StringsAlertUnavailableRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Недоступен';
	@override String get content => 'Выбранный функционал пока недоступен.';
}

// Path: alert.confirm
class _StringsAlertConfirmRu implements _StringsAlertConfirmEn {
	_StringsAlertConfirmRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Подтвердите действие';
}

// Path: utils.datePicker
class _StringsUtilsDatePickerRu implements _StringsUtilsDatePickerEn {
	_StringsUtilsDatePickerRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get helpText => 'Выберете день рождения';
	@override String get confirmText => 'Сохранить';
	@override String get errorFormatText => 'Дата не входит в допустимый диапазон';
	@override String get errorInvalidText => 'Неверный формат';
	@override String get fieldHintText => 'Введите дату рождения';
	@override String get fieldLabelText => 'День рождения';
}

// Path: user.person
class _StringsUserPersonRu implements _StringsUserPersonEn {
	_StringsUserPersonRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Имя';
	@override String get lastName => 'Фамилия';
	@override String get middleName => 'Отчество';
	@override String get birth => 'Дата рождения';
	@override String get gender => 'Пол';
}

// Path: user.contact
class _StringsUserContactRu implements _StringsUserContactEn {
	_StringsUserContactRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get vk => 'ВК';
	@override String get email => 'Почта';
	@override String get tg => 'Telegram';
	@override String get site => 'Сайт';
}

// Path: enums.showBirthType
class _StringsEnumsShowBirthTypeRu implements _StringsEnumsShowBirthTypeEn {
	_StringsEnumsShowBirthTypeRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get show => 'Показывать';
	@override String get showWithoutYear => 'Показывать без года';
	@override String get notShow => 'Не показывать';
}

// Path: enums.gender
class _StringsEnumsGenderRu implements _StringsEnumsGenderEn {
	_StringsEnumsGenderRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get male => 'Мужской';
	@override String get female => 'Женский';
	@override String get notShow => 'Не показывать';
}

// Path: profile.menu
class _StringsProfileMenuRu implements _StringsProfileMenuEn {
	_StringsProfileMenuRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get personal => 'Учетная запись';
}

// Path: auth.header
class _StringsAuthHeaderRu implements _StringsAuthHeaderEn {
	_StringsAuthHeaderRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get welcome => 'Добро пожаловать';
	@override String get info => 'Введите адрес электронной почты и пароль';
	@override late final _StringsAuthHeaderAppBarRu appBar = _StringsAuthHeaderAppBarRu._(_root);
}

// Path: auth.button
class _StringsAuthButtonRu implements _StringsAuthButtonEn {
	_StringsAuthButtonRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get logIn => 'Войти';
	@override String get logUp => 'Зарегистрироваться';
}

// Path: auth.header.appBar
class _StringsAuthHeaderAppBarRu implements _StringsAuthHeaderAppBarEn {
	_StringsAuthHeaderAppBarRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get signIn => 'Авторизация';
	@override String get signUp => 'Регистрация';
	@override String get personalData => 'Личные данные';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'app.name': return 'Digital bookshelf';
			case 'alert.unavailable.title': return 'Недоступен';
			case 'alert.unavailable.content': return 'Выбранный функционал пока недоступен.';
			case 'alert.confirm.title': return 'Подтвердите действие';
			case 'alert.confirmBecomeAuthor': return 'Подтвердите переход аккаунта в статус "Автор".\nОбратный переход невозможен!';
			case 'alert.helloAuthor': return 'Теперь вы Автор!';
			case 'validation.IsValidEmail': return 'Неверный формат адреса электронной почты';
			case 'validation.IsValidPhone': return 'Неверный формат адреса номера телефона';
			case 'validation.NotBlank': return 'Должно быть не пустое значение';
			case 'validation.IsValidCardCvv': return 'Неверный формат CVV карты.';
			case 'validation.IsValidDateFormat': return 'Неверный формат даты';
			case 'validation.IsValidCardExpiry': return 'Срок действия карты истек';
			case 'validation.IsValidCardNumber': return 'Неверный формат номера карты';
			case 'utils.ok': return 'ОК';
			case 'utils.no': return 'Нет';
			case 'utils.failAuth': return 'Неверный логин или пароль';
			case 'utils.fail': return 'Упс... Что-то пошло не так.';
			case 'utils.save': return 'Сохранить';
			case 'utils.cancel': return 'Отмена';
			case 'utils.becomeAuthor': return 'Стать автором';
			case 'utils.datePicker.helpText': return 'Выберете день рождения';
			case 'utils.datePicker.confirmText': return 'Сохранить';
			case 'utils.datePicker.errorFormatText': return 'Дата не входит в допустимый диапазон';
			case 'utils.datePicker.errorInvalidText': return 'Неверный формат';
			case 'utils.datePicker.fieldHintText': return 'Введите дату рождения';
			case 'utils.datePicker.fieldLabelText': return 'День рождения';
			case 'user.person.name': return 'Имя';
			case 'user.person.lastName': return 'Фамилия';
			case 'user.person.middleName': return 'Отчество';
			case 'user.person.birth': return 'Дата рождения';
			case 'user.person.gender': return 'Пол';
			case 'user.email': return 'Email';
			case 'user.phone': return 'Телефон';
			case 'user.password': return 'Пароль';
			case 'user.contact.vk': return 'ВК';
			case 'user.contact.email': return 'Почта';
			case 'user.contact.tg': return 'Telegram';
			case 'user.contact.site': return 'Сайт';
			case 'enums.showBirthType.show': return 'Показывать';
			case 'enums.showBirthType.showWithoutYear': return 'Показывать без года';
			case 'enums.showBirthType.notShow': return 'Не показывать';
			case 'enums.gender.male': return 'Мужской';
			case 'enums.gender.female': return 'Женский';
			case 'enums.gender.notShow': return 'Не показывать';
			case 'profile.notAuthorized': return 'Для доступа к профилю необходимо авторизоваться';
			case 'profile.goAuth': return 'Авторизоваться';
			case 'profile.menu.personal': return 'Учетная запись';
			case 'personalData.mainInfo': return 'Основная информация';
			case 'personalData.name': return 'Имя и фамилия или псевдоним';
			case 'personalData.status': return 'Статус';
			case 'personalData.birth': return 'День рождения';
			case 'personalData.selectDateBirth': return 'Выбрать день рождения';
			case 'personalData.sex': return 'Пол';
			case 'personalData.about': return 'О себе';
			case 'personalData.aboutInfo': return 'Вашим подписчикам будет интересно узнать о вас...';
			case 'personalData.contact': return 'Контакты';
			case 'auth.header.welcome': return 'Добро пожаловать';
			case 'auth.header.info': return 'Введите адрес электронной почты и пароль';
			case 'auth.header.appBar.signIn': return 'Авторизация';
			case 'auth.header.appBar.signUp': return 'Регистрация';
			case 'auth.header.appBar.personalData': return 'Личные данные';
			case 'auth.button.logIn': return 'Войти';
			case 'auth.button.logUp': return 'Зарегистрироваться';
			default: return null;
		}
	}
}

extension on _StringsRu {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'app.name': return 'Digital bookshelf';
			case 'alert.unavailable.title': return 'Недоступен';
			case 'alert.unavailable.content': return 'Выбранный функционал пока недоступен.';
			case 'alert.confirm.title': return 'Подтвердите действие';
			case 'alert.confirmBecomeAuthor': return 'Подтвердите переход аккаунта в статус "Автор".\nОбратный переход невозможен!';
			case 'alert.helloAuthor': return 'Теперь вы Автор!';
			case 'validation.IsValidEmail': return 'Неверный формат адреса электронной почты';
			case 'validation.IsValidPhone': return 'Неверный формат адреса номера телефона';
			case 'validation.NotBlank': return 'Должно быть не пустое значение';
			case 'validation.IsValidCardCvv': return 'Неверный формат CVV карты.';
			case 'validation.IsValidDateFormat': return 'Неверный формат даты';
			case 'validation.IsValidCardExpiry': return 'Срок действия карты истек';
			case 'validation.IsValidCardNumber': return 'Неверный формат номера карты';
			case 'utils.ok': return 'ОК';
			case 'utils.no': return 'Нет';
			case 'utils.failAuth': return 'Неверный логин или пароль';
			case 'utils.fail': return 'Упс... Что-то пошло не так.';
			case 'utils.save': return 'Сохранить';
			case 'utils.cancel': return 'Отмена';
			case 'utils.becomeAuthor': return 'Стать автором';
			case 'utils.datePicker.helpText': return 'Выберете день рождения';
			case 'utils.datePicker.confirmText': return 'Сохранить';
			case 'utils.datePicker.errorFormatText': return 'Дата не входит в допустимый диапазон';
			case 'utils.datePicker.errorInvalidText': return 'Неверный формат';
			case 'utils.datePicker.fieldHintText': return 'Введите дату рождения';
			case 'utils.datePicker.fieldLabelText': return 'День рождения';
			case 'user.person.name': return 'Имя';
			case 'user.person.lastName': return 'Фамилия';
			case 'user.person.middleName': return 'Отчество';
			case 'user.person.birth': return 'Дата рождения';
			case 'user.person.gender': return 'Пол';
			case 'user.email': return 'Email';
			case 'user.phone': return 'Телефон';
			case 'user.password': return 'Пароль';
			case 'user.contact.vk': return 'ВК';
			case 'user.contact.email': return 'Почта';
			case 'user.contact.tg': return 'Telegram';
			case 'user.contact.site': return 'Сайт';
			case 'enums.showBirthType.show': return 'Показывать';
			case 'enums.showBirthType.showWithoutYear': return 'Показывать без года';
			case 'enums.showBirthType.notShow': return 'Не показывать';
			case 'enums.gender.male': return 'Мужской';
			case 'enums.gender.female': return 'Женский';
			case 'enums.gender.notShow': return 'Не показывать';
			case 'profile.notAuthorized': return 'Для доступа к профилю необходимо авторизоваться';
			case 'profile.goAuth': return 'Авторизоваться';
			case 'profile.menu.personal': return 'Учетная запись';
			case 'personalData.mainInfo': return 'Основная информация';
			case 'personalData.name': return 'Имя и фамилия или псевдоним';
			case 'personalData.status': return 'Статус';
			case 'personalData.birth': return 'День рождения';
			case 'personalData.selectDateBirth': return 'Выбрать день рождения';
			case 'personalData.sex': return 'Пол';
			case 'personalData.about': return 'О себе';
			case 'personalData.aboutInfo': return 'Вашим подписчикам будет интересно узнать о вас...';
			case 'personalData.contact': return 'Контакты';
			case 'auth.header.welcome': return 'Добро пожаловать';
			case 'auth.header.info': return 'Введите адрес электронной почты и пароль';
			case 'auth.header.appBar.signIn': return 'Авторизация';
			case 'auth.header.appBar.signUp': return 'Регистрация';
			case 'auth.header.appBar.personalData': return 'Личные данные';
			case 'auth.button.logIn': return 'Войти';
			case 'auth.button.logUp': return 'Зарегистрироваться';
			default: return null;
		}
	}
}
