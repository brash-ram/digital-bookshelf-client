/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 258 (129 per locale)
///
/// Built on 2024-05-29 at 07:55 UTC

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
	late final _StringsGeneralEn general = _StringsGeneralEn._(_root);
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
	String get confirmBecomeAuthor => 'Confirm switching account to "Author" status.\nReverting back is not possible!';
	String get confirmDelete => 'Confirm that you want to delete this resource.';
	String get helloAuthor => 'You are now an Author!';
}

// Path: validation
class _StringsValidationEn {
	_StringsValidationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get IsValidEmail => 'Invalid email address format';
	String get IsValidPhone => 'Invalid phone number format';
	String get NotBlank => 'Must not be empty';
	String get IsValidCardCvv => 'Invalid card CVV format';
	String get IsValidDateFormat => 'Invalid date format';
	String get IsValidCardExpiry => 'Card expiration date has passed';
	String get IsValidCardNumber => 'Invalid card number format';
}

// Path: utils
class _StringsUtilsEn {
	_StringsUtilsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get ok => 'OK';
	String get no => 'No';
	String get failAuth => 'Incorrect login or password';
	String get fail => 'Oops... Something went wrong.';
	String get save => 'Save';
	String get cancel => 'Cancel';
	String get becomeAuthor => 'Become an author';
	String get price => 'Price';
	late final _StringsUtilsDatePickerEn datePicker = _StringsUtilsDatePickerEn._(_root);
}

// Path: user
class _StringsUserEn {
	_StringsUserEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsUserPersonEn person = _StringsUserPersonEn._(_root);
	String get email => 'Email';
	String get phone => 'Phone';
	String get password => 'Password';
	late final _StringsUserContactEn contact = _StringsUserContactEn._(_root);
}

// Path: book
class _StringsBookEn {
	_StringsBookEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => 'Title';
	String get description => 'Description';
	String get tag => 'Tag';
	String get genre => 'Genre';
	String get tags => 'Tags';
	String get genres => 'Genres';
	String get priceType => 'Price Type';
	String get price => 'Price';
	String get bookSeries => 'Series';
	String get addToLibrary => 'Add to library';
	String get buy => 'Buy';
	String get isInLibrary => 'Already in library';
	String get download => 'Download';
	String get numberPurchase => 'Number of copies sold';
	String get similar => 'Similar books';
}

// Path: bookSeries
class _StringsBookSeriesEn {
	_StringsBookSeriesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Book series';
	String get listTitle => 'Book series';
	String get numberBooks => 'Number of books';
	String get name => 'Title';
	String get description => 'Description';
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
	String get title => 'Add book';
	String get changeTitle => 'Update book';
	String get addBookFile => 'Choose book file';
	String get addBookCover => 'Choose book cover';
	String get changeBookFile => 'Change book file';
	String get changeBookCover => 'Change book cover';
	String get bookUploaded => '(Book uploaded)';
	String get imageExtensions => 'Available image extensions - JPG, JPEG, PNG';
	String get bookExtensions => 'Available book file extensions - FB2, EPUB, PDF';
	String get invalidBookExtension => 'Selected file has an invalid extension';
	String get fail => 'Error occurred while uploading the book!';
}

// Path: profile
class _StringsProfileEn {
	_StringsProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get notAuthorized => 'Authorization is required to access the profile';
	String get goAuth => 'Authorize';
	String get profileTab => 'Profile';
	String get libraryTab => 'Library';
	String get booksTab => 'Works';
	String get bookSeriesTab => 'Book Series';
	late final _StringsProfileSettingsEn settings = _StringsProfileSettingsEn._(_root);
	late final _StringsProfileMenuEn menu = _StringsProfileMenuEn._(_root);
}

// Path: personalData
class _StringsPersonalDataEn {
	_StringsPersonalDataEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get mainInfo => 'Main information';
	String get name => 'Name and last name or nickname';
	String get status => 'Status';
	String get birth => 'Date of birth';
	String get selectDateBirth => 'Select date of birth';
	String get sex => 'Gender';
	String get about => 'About';
	String get aboutInfo => 'Your followers will be interested to learn about you...';
	String get contact => 'Contacts';
}

// Path: auth
class _StringsAuthEn {
	_StringsAuthEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsAuthHeaderEn header = _StringsAuthHeaderEn._(_root);
	late final _StringsAuthButtonEn button = _StringsAuthButtonEn._(_root);
}

// Path: general
class _StringsGeneralEn {
	_StringsGeneralEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get lastBooks => 'Last publications';
	String get recommendedBooks => 'Recommended books';
	String get view => 'All';
}

// Path: genre
class _StringsGenreEn {
	_StringsGenreEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get newGenre => 'New genre';
	String get title => 'Genre';
	String get menuTitle => 'List of genres';
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
	String get title => 'Unavailable';
	String get content => 'The selected functionality is currently unavailable.';
}

// Path: alert.confirm
class _StringsAlertConfirmEn {
	_StringsAlertConfirmEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Confirm action';
}

// Path: utils.datePicker
class _StringsUtilsDatePickerEn {
	_StringsUtilsDatePickerEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get helpText => 'Choose date of birth';
	String get confirmText => 'Save';
	String get errorFormatText => 'Date is not within the valid range';
	String get errorInvalidText => 'Invalid format';
	String get fieldHintText => 'Enter date of birth';
	String get fieldLabelText => 'Date of birth';
}

// Path: user.person
class _StringsUserPersonEn {
	_StringsUserPersonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => 'Name';
	String get lastName => 'Last Name';
	String get middleName => 'Middle Name';
	String get birth => 'Date of Birth';
	String get gender => 'Gender';
}

// Path: user.contact
class _StringsUserContactEn {
	_StringsUserContactEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get vk => 'VK';
	String get email => 'Email';
	String get tg => 'Telegram';
	String get site => 'Website';
}

// Path: enums.showBirthType
class _StringsEnumsShowBirthTypeEn {
	_StringsEnumsShowBirthTypeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get show => 'Show';
	String get showWithoutYear => 'Show without year';
	String get notShow => 'Do not show';
}

// Path: enums.gender
class _StringsEnumsGenderEn {
	_StringsEnumsGenderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get male => 'Male';
	String get female => 'Female';
	String get notShow => 'Do not show';
}

// Path: enums.priceType
class _StringsEnumsPriceTypeEn {
	_StringsEnumsPriceTypeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get selling => 'Selling';
	String get free => 'Free';
}

// Path: profile.settings
class _StringsProfileSettingsEn {
	_StringsProfileSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get lang => 'Language';
	String get en => 'English';
	String get ru => 'Russian';
	String get theme => 'Theme';
	String get dark => 'Dark';
	String get light => 'Light';
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
	String get welcome => 'Welcome';
	String get info => 'Enter email address and password';
	late final _StringsAuthHeaderAppBarEn appBar = _StringsAuthHeaderAppBarEn._(_root);
}

// Path: auth.button
class _StringsAuthButtonEn {
	_StringsAuthButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get logIn => 'Log in';
	String get logUp => 'Sign up';
}

// Path: profile.menu.personal
class _StringsProfileMenuPersonalEn {
	_StringsProfileMenuPersonalEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Account';
	String get myProfile => 'My profile';
	String get main => 'Main information';
	String get contact => 'Contacts';
	String get logout => 'Log out';
	String get myLibrary => 'My library';
	String get myPurchased => 'My purchased books';
	String get settings => 'Settings';
}

// Path: profile.menu.admin
class _StringsProfileMenuAdminEn {
	_StringsProfileMenuAdminEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Administration';
	String get genres => 'List of genres';
}

// Path: profile.menu.author
class _StringsProfileMenuAuthorEn {
	_StringsProfileMenuAuthorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Author capabilities';
	String get bookSeries => 'My book series';
	String get addBookSeries => 'Add book series';
	String get books => 'My books';
	String get addBook => 'Add book';
}

// Path: auth.header.appBar
class _StringsAuthHeaderAppBarEn {
	_StringsAuthHeaderAppBarEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get signIn => 'Sign in';
	String get signUp => 'Sign up';
	String get personalData => 'Personal data';
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
	@override late final _StringsGeneralRu general = _StringsGeneralRu._(_root);
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
	@override String get addToLibrary => 'Добавить в библиотеку';
	@override String get buy => 'Купить';
	@override String get isInLibrary => 'Уже в библиотеке';
	@override String get download => 'Скачать';
	@override String get numberPurchase => 'Количество проданных копий';
	@override String get similar => 'Похожие книги';
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
	@override late final _StringsProfileSettingsRu settings = _StringsProfileSettingsRu._(_root);
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

// Path: general
class _StringsGeneralRu implements _StringsGeneralEn {
	_StringsGeneralRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get lastBooks => 'Последние публикации';
	@override String get recommendedBooks => 'Рекомендованные книги';
	@override String get view => 'Все';
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

// Path: profile.settings
class _StringsProfileSettingsRu implements _StringsProfileSettingsEn {
	_StringsProfileSettingsRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get lang => 'Язык';
	@override String get en => 'Английский';
	@override String get ru => 'Русский';
	@override String get theme => 'Тема';
	@override String get dark => 'Темная';
	@override String get light => 'Светлая';
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
	@override String get myLibrary => 'Моя библиотека';
	@override String get myPurchased => 'Мои купленные книги';
	@override String get settings => 'Настройки';
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
			case 'alert.unavailable.title': return 'Unavailable';
			case 'alert.unavailable.content': return 'The selected functionality is currently unavailable.';
			case 'alert.confirm.title': return 'Confirm action';
			case 'alert.confirmBecomeAuthor': return 'Confirm switching account to "Author" status.\nReverting back is not possible!';
			case 'alert.confirmDelete': return 'Confirm that you want to delete this resource.';
			case 'alert.helloAuthor': return 'You are now an Author!';
			case 'validation.IsValidEmail': return 'Invalid email address format';
			case 'validation.IsValidPhone': return 'Invalid phone number format';
			case 'validation.NotBlank': return 'Must not be empty';
			case 'validation.IsValidCardCvv': return 'Invalid card CVV format';
			case 'validation.IsValidDateFormat': return 'Invalid date format';
			case 'validation.IsValidCardExpiry': return 'Card expiration date has passed';
			case 'validation.IsValidCardNumber': return 'Invalid card number format';
			case 'utils.ok': return 'OK';
			case 'utils.no': return 'No';
			case 'utils.failAuth': return 'Incorrect login or password';
			case 'utils.fail': return 'Oops... Something went wrong.';
			case 'utils.save': return 'Save';
			case 'utils.cancel': return 'Cancel';
			case 'utils.becomeAuthor': return 'Become an author';
			case 'utils.price': return 'Price';
			case 'utils.datePicker.helpText': return 'Choose date of birth';
			case 'utils.datePicker.confirmText': return 'Save';
			case 'utils.datePicker.errorFormatText': return 'Date is not within the valid range';
			case 'utils.datePicker.errorInvalidText': return 'Invalid format';
			case 'utils.datePicker.fieldHintText': return 'Enter date of birth';
			case 'utils.datePicker.fieldLabelText': return 'Date of birth';
			case 'user.person.name': return 'Name';
			case 'user.person.lastName': return 'Last Name';
			case 'user.person.middleName': return 'Middle Name';
			case 'user.person.birth': return 'Date of Birth';
			case 'user.person.gender': return 'Gender';
			case 'user.email': return 'Email';
			case 'user.phone': return 'Phone';
			case 'user.password': return 'Password';
			case 'user.contact.vk': return 'VK';
			case 'user.contact.email': return 'Email';
			case 'user.contact.tg': return 'Telegram';
			case 'user.contact.site': return 'Website';
			case 'book.name': return 'Title';
			case 'book.description': return 'Description';
			case 'book.tag': return 'Tag';
			case 'book.genre': return 'Genre';
			case 'book.tags': return 'Tags';
			case 'book.genres': return 'Genres';
			case 'book.priceType': return 'Price Type';
			case 'book.price': return 'Price';
			case 'book.bookSeries': return 'Series';
			case 'book.addToLibrary': return 'Add to library';
			case 'book.buy': return 'Buy';
			case 'book.isInLibrary': return 'Already in library';
			case 'book.download': return 'Download';
			case 'book.numberPurchase': return 'Number of copies sold';
			case 'book.similar': return 'Similar books';
			case 'bookSeries.title': return 'Book series';
			case 'bookSeries.listTitle': return 'Book series';
			case 'bookSeries.numberBooks': return 'Number of books';
			case 'bookSeries.name': return 'Title';
			case 'bookSeries.description': return 'Description';
			case 'enums.showBirthType.show': return 'Show';
			case 'enums.showBirthType.showWithoutYear': return 'Show without year';
			case 'enums.showBirthType.notShow': return 'Do not show';
			case 'enums.gender.male': return 'Male';
			case 'enums.gender.female': return 'Female';
			case 'enums.gender.notShow': return 'Do not show';
			case 'enums.priceType.selling': return 'Selling';
			case 'enums.priceType.free': return 'Free';
			case 'addBook.title': return 'Add book';
			case 'addBook.changeTitle': return 'Update book';
			case 'addBook.addBookFile': return 'Choose book file';
			case 'addBook.addBookCover': return 'Choose book cover';
			case 'addBook.changeBookFile': return 'Change book file';
			case 'addBook.changeBookCover': return 'Change book cover';
			case 'addBook.bookUploaded': return '(Book uploaded)';
			case 'addBook.imageExtensions': return 'Available image extensions - JPG, JPEG, PNG';
			case 'addBook.bookExtensions': return 'Available book file extensions - FB2, EPUB, PDF';
			case 'addBook.invalidBookExtension': return 'Selected file has an invalid extension';
			case 'addBook.fail': return 'Error occurred while uploading the book!';
			case 'profile.notAuthorized': return 'Authorization is required to access the profile';
			case 'profile.goAuth': return 'Authorize';
			case 'profile.profileTab': return 'Profile';
			case 'profile.libraryTab': return 'Library';
			case 'profile.booksTab': return 'Works';
			case 'profile.bookSeriesTab': return 'Book Series';
			case 'profile.settings.lang': return 'Language';
			case 'profile.settings.en': return 'English';
			case 'profile.settings.ru': return 'Russian';
			case 'profile.settings.theme': return 'Theme';
			case 'profile.settings.dark': return 'Dark';
			case 'profile.settings.light': return 'Light';
			case 'profile.menu.personal.title': return 'Account';
			case 'profile.menu.personal.myProfile': return 'My profile';
			case 'profile.menu.personal.main': return 'Main information';
			case 'profile.menu.personal.contact': return 'Contacts';
			case 'profile.menu.personal.logout': return 'Log out';
			case 'profile.menu.personal.myLibrary': return 'My library';
			case 'profile.menu.personal.myPurchased': return 'My purchased books';
			case 'profile.menu.personal.settings': return 'Settings';
			case 'profile.menu.admin.title': return 'Administration';
			case 'profile.menu.admin.genres': return 'List of genres';
			case 'profile.menu.author.title': return 'Author capabilities';
			case 'profile.menu.author.bookSeries': return 'My book series';
			case 'profile.menu.author.addBookSeries': return 'Add book series';
			case 'profile.menu.author.books': return 'My books';
			case 'profile.menu.author.addBook': return 'Add book';
			case 'personalData.mainInfo': return 'Main information';
			case 'personalData.name': return 'Name and last name or nickname';
			case 'personalData.status': return 'Status';
			case 'personalData.birth': return 'Date of birth';
			case 'personalData.selectDateBirth': return 'Select date of birth';
			case 'personalData.sex': return 'Gender';
			case 'personalData.about': return 'About';
			case 'personalData.aboutInfo': return 'Your followers will be interested to learn about you...';
			case 'personalData.contact': return 'Contacts';
			case 'auth.header.welcome': return 'Welcome';
			case 'auth.header.info': return 'Enter email address and password';
			case 'auth.header.appBar.signIn': return 'Sign in';
			case 'auth.header.appBar.signUp': return 'Sign up';
			case 'auth.header.appBar.personalData': return 'Personal data';
			case 'auth.button.logIn': return 'Log in';
			case 'auth.button.logUp': return 'Sign up';
			case 'general.lastBooks': return 'Last publications';
			case 'general.recommendedBooks': return 'Recommended books';
			case 'general.view': return 'All';
			case 'genre.newGenre': return 'New genre';
			case 'genre.title': return 'Genre';
			case 'genre.menuTitle': return 'List of genres';
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
			case 'book.addToLibrary': return 'Добавить в библиотеку';
			case 'book.buy': return 'Купить';
			case 'book.isInLibrary': return 'Уже в библиотеке';
			case 'book.download': return 'Скачать';
			case 'book.numberPurchase': return 'Количество проданных копий';
			case 'book.similar': return 'Похожие книги';
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
			case 'profile.settings.lang': return 'Язык';
			case 'profile.settings.en': return 'Английский';
			case 'profile.settings.ru': return 'Русский';
			case 'profile.settings.theme': return 'Тема';
			case 'profile.settings.dark': return 'Темная';
			case 'profile.settings.light': return 'Светлая';
			case 'profile.menu.personal.title': return 'Учетная запись';
			case 'profile.menu.personal.myProfile': return 'Мой профиль';
			case 'profile.menu.personal.main': return 'Основная информация';
			case 'profile.menu.personal.contact': return 'Контакты';
			case 'profile.menu.personal.logout': return 'Выйти из аккаунта';
			case 'profile.menu.personal.myLibrary': return 'Моя библиотека';
			case 'profile.menu.personal.myPurchased': return 'Мои купленные книги';
			case 'profile.menu.personal.settings': return 'Настройки';
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
			case 'general.lastBooks': return 'Последние публикации';
			case 'general.recommendedBooks': return 'Рекомендованные книги';
			case 'general.view': return 'Все';
			case 'genre.newGenre': return 'Новый жанр';
			case 'genre.title': return 'Жанр';
			case 'genre.menuTitle': return 'Список жанров';
			case 'currency.RUB': return '₽';
			default: return null;
		}
	}
}
