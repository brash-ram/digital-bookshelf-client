/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 222 (111 per locale)
///
/// Built on 2024-05-25 at 08:02 UTC

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
	late final _StringsBookEn book = _StringsBookEn._(_root);
	late final _StringsBookSeriesEn bookSeries = _StringsBookSeriesEn._(_root);
	late final _StringsEnumsEn enums = _StringsEnumsEn._(_root);
	late final _StringsAddBookEn addBook = _StringsAddBookEn._(_root);
	late final _StringsProfileEn profile = _StringsProfileEn._(_root);
	late final _StringsPersonalDataEn personalData = _StringsPersonalDataEn._(_root);
	late final _StringsAuthEn auth = _StringsAuthEn._(_root);
	late final _StringsGenreEn genre = _StringsGenreEn._(_root);
	late final _StringsCurrencyEn currency = _StringsCurrencyEn._(_root);
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
	String get confirmDelete => 'Подтвердите что хотите удалить данный ресурс.';
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
	String get price => 'Цена';
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

// Path: book
class _StringsBookEn {
	_StringsBookEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => 'Название';
	String get description => 'Описание';
	String get tag => 'Тег';
	String get genre => 'Жанр';
	String get tags => 'Теги';
	String get genres => 'Жанры';
	String get priceType => 'Тип цены';
	String get price => 'Цена';
	String get bookSeries => 'Цикл';
}

// Path: bookSeries
class _StringsBookSeriesEn {
	_StringsBookSeriesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Цикл книг';
	String get listTitle => 'Циклы книг';
	String get numberBooks => 'Количество книг';
	String get name => 'Название';
	String get description => 'Описание';
}

// Path: enums
class _StringsEnumsEn {
	_StringsEnumsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsEnumsShowBirthTypeEn showBirthType = _StringsEnumsShowBirthTypeEn._(_root);
	late final _StringsEnumsGenderEn gender = _StringsEnumsGenderEn._(_root);
	late final _StringsEnumsPriceTypeEn priceType = _StringsEnumsPriceTypeEn._(_root);
}

// Path: addBook
class _StringsAddBookEn {
	_StringsAddBookEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Добавить книгу';
	String get changeTitle => 'Обновить книгу';
	String get addBookFile => 'Выбрать файл книги';
	String get addBookCover => 'Выбрать обложку для книги';
	String get changeBookFile => 'Изменить файл книги';
	String get changeBookCover => 'Изменить обложку для книги';
	String get bookUploaded => '(Книга загружена)';
	String get imageExtensions => 'Доступные расширения изображений - JPG, JPEG, PNG';
	String get bookExtensions => 'Доступные расширения файлов книг - FB2, EPUB, PDF';
	String get invalidBookExtension => 'Выбран файл с недоступным расширением';
	String get fail => 'Возникла ошибка при загрузке книги!';
}

// Path: profile
class _StringsProfileEn {
	_StringsProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get notAuthorized => 'Для доступа к профилю необходимо авторизоваться';
	String get goAuth => 'Авторизоваться';
	String get profileTab => 'Профиль';
	String get libraryTab => 'Библиотека';
	String get booksTab => 'Произведения';
	String get bookSeriesTab => 'Серии книг';
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

// Path: genre
class _StringsGenreEn {
	_StringsGenreEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get newGenre => 'Новый жанр';
	String get title => 'Жанр';
	String get menuTitle => 'Список жанров';
}

// Path: currency
class _StringsCurrencyEn {
	_StringsCurrencyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get RUB => '₽';
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

// Path: enums.priceType
class _StringsEnumsPriceTypeEn {
	_StringsEnumsPriceTypeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get selling => 'Продажа';
	String get free => 'Бесплатно';
}

// Path: profile.menu
class _StringsProfileMenuEn {
	_StringsProfileMenuEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsProfileMenuPersonalEn personal = _StringsProfileMenuPersonalEn._(_root);
	late final _StringsProfileMenuAdminEn admin = _StringsProfileMenuAdminEn._(_root);
	late final _StringsProfileMenuAuthorEn author = _StringsProfileMenuAuthorEn._(_root);
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

// Path: profile.menu.personal
class _StringsProfileMenuPersonalEn {
	_StringsProfileMenuPersonalEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Учетная запись';
	String get myProfile => 'Мой профиль';
	String get main => 'Основная информация';
	String get contact => 'Контакты';
	String get logout => 'Выйти из аккаунта';
}

// Path: profile.menu.admin
class _StringsProfileMenuAdminEn {
	_StringsProfileMenuAdminEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Администрирование';
	String get genres => 'Список жанров';
}

// Path: profile.menu.author
class _StringsProfileMenuAuthorEn {
	_StringsProfileMenuAuthorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Возможности автора';
	String get bookSeries => 'Мои циклы книг';
	String get addBookSeries => 'Добавить цикл книг';
	String get books => 'Мои книги';
	String get addBook => 'Добавить книгу';
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
	@override late final _StringsBookRu book = _StringsBookRu._(_root);
	@override late final _StringsBookSeriesRu bookSeries = _StringsBookSeriesRu._(_root);
	@override late final _StringsEnumsRu enums = _StringsEnumsRu._(_root);
	@override late final _StringsAddBookRu addBook = _StringsAddBookRu._(_root);
	@override late final _StringsProfileRu profile = _StringsProfileRu._(_root);
	@override late final _StringsPersonalDataRu personalData = _StringsPersonalDataRu._(_root);
	@override late final _StringsAuthRu auth = _StringsAuthRu._(_root);
	@override late final _StringsGenreRu genre = _StringsGenreRu._(_root);
	@override late final _StringsCurrencyRu currency = _StringsCurrencyRu._(_root);
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
	@override String get confirmDelete => 'Подтвердите что хотите удалить данный ресурс.';
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
	@override String get price => 'Цена';
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

// Path: book
class _StringsBookRu implements _StringsBookEn {
	_StringsBookRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Название';
	@override String get description => 'Описание';
	@override String get tag => 'Тег';
	@override String get genre => 'Жанр';
	@override String get tags => 'Теги';
	@override String get genres => 'Жанры';
	@override String get priceType => 'Тип цены';
	@override String get price => 'Цена';
	@override String get bookSeries => 'Цикл';
}

// Path: bookSeries
class _StringsBookSeriesRu implements _StringsBookSeriesEn {
	_StringsBookSeriesRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Цикл книг';
	@override String get listTitle => 'Циклы книг';
	@override String get numberBooks => 'Количество книг';
	@override String get name => 'Название';
	@override String get description => 'Описание';
}

// Path: enums
class _StringsEnumsRu implements _StringsEnumsEn {
	_StringsEnumsRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override late final _StringsEnumsShowBirthTypeRu showBirthType = _StringsEnumsShowBirthTypeRu._(_root);
	@override late final _StringsEnumsGenderRu gender = _StringsEnumsGenderRu._(_root);
	@override late final _StringsEnumsPriceTypeRu priceType = _StringsEnumsPriceTypeRu._(_root);
}

// Path: addBook
class _StringsAddBookRu implements _StringsAddBookEn {
	_StringsAddBookRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Добавить книгу';
	@override String get changeTitle => 'Обновить книгу';
	@override String get addBookFile => 'Выбрать файл книги';
	@override String get addBookCover => 'Выбрать обложку для книги';
	@override String get changeBookFile => 'Изменить файл книги';
	@override String get changeBookCover => 'Изменить обложку для книги';
	@override String get bookUploaded => '(Книга загружена)';
	@override String get imageExtensions => 'Доступные расширения изображений - JPG, JPEG, PNG';
	@override String get bookExtensions => 'Доступные расширения файлов книг - FB2, EPUB, PDF';
	@override String get invalidBookExtension => 'Выбран файл с недоступным расширением';
	@override String get fail => 'Возникла ошибка при загрузке книги!';
}

// Path: profile
class _StringsProfileRu implements _StringsProfileEn {
	_StringsProfileRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get notAuthorized => 'Для доступа к профилю необходимо авторизоваться';
	@override String get goAuth => 'Авторизоваться';
	@override String get profileTab => 'Профиль';
	@override String get libraryTab => 'Библиотека';
	@override String get booksTab => 'Произведения';
	@override String get bookSeriesTab => 'Серии книг';
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

// Path: genre
class _StringsGenreRu implements _StringsGenreEn {
	_StringsGenreRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get newGenre => 'Новый жанр';
	@override String get title => 'Жанр';
	@override String get menuTitle => 'Список жанров';
}

// Path: currency
class _StringsCurrencyRu implements _StringsCurrencyEn {
	_StringsCurrencyRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get RUB => '₽';
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

// Path: enums.priceType
class _StringsEnumsPriceTypeRu implements _StringsEnumsPriceTypeEn {
	_StringsEnumsPriceTypeRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get selling => 'Продажа';
	@override String get free => 'Бесплатно';
}

// Path: profile.menu
class _StringsProfileMenuRu implements _StringsProfileMenuEn {
	_StringsProfileMenuRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override late final _StringsProfileMenuPersonalRu personal = _StringsProfileMenuPersonalRu._(_root);
	@override late final _StringsProfileMenuAdminRu admin = _StringsProfileMenuAdminRu._(_root);
	@override late final _StringsProfileMenuAuthorRu author = _StringsProfileMenuAuthorRu._(_root);
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

// Path: profile.menu.personal
class _StringsProfileMenuPersonalRu implements _StringsProfileMenuPersonalEn {
	_StringsProfileMenuPersonalRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Учетная запись';
	@override String get myProfile => 'Мой профиль';
	@override String get main => 'Основная информация';
	@override String get contact => 'Контакты';
	@override String get logout => 'Выйти из аккаунта';
}

// Path: profile.menu.admin
class _StringsProfileMenuAdminRu implements _StringsProfileMenuAdminEn {
	_StringsProfileMenuAdminRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Администрирование';
	@override String get genres => 'Список жанров';
}

// Path: profile.menu.author
class _StringsProfileMenuAuthorRu implements _StringsProfileMenuAuthorEn {
	_StringsProfileMenuAuthorRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Возможности автора';
	@override String get bookSeries => 'Мои циклы книг';
	@override String get addBookSeries => 'Добавить цикл книг';
	@override String get books => 'Мои книги';
	@override String get addBook => 'Добавить книгу';
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
			case 'alert.confirmDelete': return 'Подтвердите что хотите удалить данный ресурс.';
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
			case 'utils.price': return 'Цена';
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
			case 'book.name': return 'Название';
			case 'book.description': return 'Описание';
			case 'book.tag': return 'Тег';
			case 'book.genre': return 'Жанр';
			case 'book.tags': return 'Теги';
			case 'book.genres': return 'Жанры';
			case 'book.priceType': return 'Тип цены';
			case 'book.price': return 'Цена';
			case 'book.bookSeries': return 'Цикл';
			case 'bookSeries.title': return 'Цикл книг';
			case 'bookSeries.listTitle': return 'Циклы книг';
			case 'bookSeries.numberBooks': return 'Количество книг';
			case 'bookSeries.name': return 'Название';
			case 'bookSeries.description': return 'Описание';
			case 'enums.showBirthType.show': return 'Показывать';
			case 'enums.showBirthType.showWithoutYear': return 'Показывать без года';
			case 'enums.showBirthType.notShow': return 'Не показывать';
			case 'enums.gender.male': return 'Мужской';
			case 'enums.gender.female': return 'Женский';
			case 'enums.gender.notShow': return 'Не показывать';
			case 'enums.priceType.selling': return 'Продажа';
			case 'enums.priceType.free': return 'Бесплатно';
			case 'addBook.title': return 'Добавить книгу';
			case 'addBook.changeTitle': return 'Обновить книгу';
			case 'addBook.addBookFile': return 'Выбрать файл книги';
			case 'addBook.addBookCover': return 'Выбрать обложку для книги';
			case 'addBook.changeBookFile': return 'Изменить файл книги';
			case 'addBook.changeBookCover': return 'Изменить обложку для книги';
			case 'addBook.bookUploaded': return '(Книга загружена)';
			case 'addBook.imageExtensions': return 'Доступные расширения изображений - JPG, JPEG, PNG';
			case 'addBook.bookExtensions': return 'Доступные расширения файлов книг - FB2, EPUB, PDF';
			case 'addBook.invalidBookExtension': return 'Выбран файл с недоступным расширением';
			case 'addBook.fail': return 'Возникла ошибка при загрузке книги!';
			case 'profile.notAuthorized': return 'Для доступа к профилю необходимо авторизоваться';
			case 'profile.goAuth': return 'Авторизоваться';
			case 'profile.profileTab': return 'Профиль';
			case 'profile.libraryTab': return 'Библиотека';
			case 'profile.booksTab': return 'Произведения';
			case 'profile.bookSeriesTab': return 'Серии книг';
			case 'profile.menu.personal.title': return 'Учетная запись';
			case 'profile.menu.personal.myProfile': return 'Мой профиль';
			case 'profile.menu.personal.main': return 'Основная информация';
			case 'profile.menu.personal.contact': return 'Контакты';
			case 'profile.menu.personal.logout': return 'Выйти из аккаунта';
			case 'profile.menu.admin.title': return 'Администрирование';
			case 'profile.menu.admin.genres': return 'Список жанров';
			case 'profile.menu.author.title': return 'Возможности автора';
			case 'profile.menu.author.bookSeries': return 'Мои циклы книг';
			case 'profile.menu.author.addBookSeries': return 'Добавить цикл книг';
			case 'profile.menu.author.books': return 'Мои книги';
			case 'profile.menu.author.addBook': return 'Добавить книгу';
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
			case 'genre.newGenre': return 'Новый жанр';
			case 'genre.title': return 'Жанр';
			case 'genre.menuTitle': return 'Список жанров';
			case 'currency.RUB': return '₽';
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
			case 'alert.confirmDelete': return 'Подтвердите что хотите удалить данный ресурс.';
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
			case 'utils.price': return 'Цена';
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
			case 'book.name': return 'Название';
			case 'book.description': return 'Описание';
			case 'book.tag': return 'Тег';
			case 'book.genre': return 'Жанр';
			case 'book.tags': return 'Теги';
			case 'book.genres': return 'Жанры';
			case 'book.priceType': return 'Тип цены';
			case 'book.price': return 'Цена';
			case 'book.bookSeries': return 'Цикл';
			case 'bookSeries.title': return 'Цикл книг';
			case 'bookSeries.listTitle': return 'Циклы книг';
			case 'bookSeries.numberBooks': return 'Количество книг';
			case 'bookSeries.name': return 'Название';
			case 'bookSeries.description': return 'Описание';
			case 'enums.showBirthType.show': return 'Показывать';
			case 'enums.showBirthType.showWithoutYear': return 'Показывать без года';
			case 'enums.showBirthType.notShow': return 'Не показывать';
			case 'enums.gender.male': return 'Мужской';
			case 'enums.gender.female': return 'Женский';
			case 'enums.gender.notShow': return 'Не показывать';
			case 'enums.priceType.selling': return 'Продажа';
			case 'enums.priceType.free': return 'Бесплатно';
			case 'addBook.title': return 'Добавить книгу';
			case 'addBook.changeTitle': return 'Обновить книгу';
			case 'addBook.addBookFile': return 'Выбрать файл книги';
			case 'addBook.addBookCover': return 'Выбрать обложку для книги';
			case 'addBook.changeBookFile': return 'Изменить файл книги';
			case 'addBook.changeBookCover': return 'Изменить обложку для книги';
			case 'addBook.bookUploaded': return '(Книга загружена)';
			case 'addBook.imageExtensions': return 'Доступные расширения изображений - JPG, JPEG, PNG';
			case 'addBook.bookExtensions': return 'Доступные расширения файлов книг - FB2, EPUB, PDF';
			case 'addBook.invalidBookExtension': return 'Выбран файл с недоступным расширением';
			case 'addBook.fail': return 'Возникла ошибка при загрузке книги!';
			case 'profile.notAuthorized': return 'Для доступа к профилю необходимо авторизоваться';
			case 'profile.goAuth': return 'Авторизоваться';
			case 'profile.profileTab': return 'Профиль';
			case 'profile.libraryTab': return 'Библиотека';
			case 'profile.booksTab': return 'Произведения';
			case 'profile.bookSeriesTab': return 'Серии книг';
			case 'profile.menu.personal.title': return 'Учетная запись';
			case 'profile.menu.personal.myProfile': return 'Мой профиль';
			case 'profile.menu.personal.main': return 'Основная информация';
			case 'profile.menu.personal.contact': return 'Контакты';
			case 'profile.menu.personal.logout': return 'Выйти из аккаунта';
			case 'profile.menu.admin.title': return 'Администрирование';
			case 'profile.menu.admin.genres': return 'Список жанров';
			case 'profile.menu.author.title': return 'Возможности автора';
			case 'profile.menu.author.bookSeries': return 'Мои циклы книг';
			case 'profile.menu.author.addBookSeries': return 'Добавить цикл книг';
			case 'profile.menu.author.books': return 'Мои книги';
			case 'profile.menu.author.addBook': return 'Добавить книгу';
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
			case 'genre.newGenre': return 'Новый жанр';
			case 'genre.title': return 'Жанр';
			case 'genre.menuTitle': return 'Список жанров';
			case 'currency.RUB': return '₽';
			default: return null;
		}
	}
}
