/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 468 (234 per locale)
///
/// Built on 2024-04-27 at 14:21 UTC

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
	late final _StringsAuthEn auth = _StringsAuthEn._(_root);
	late final _StringsProfileEn profile = _StringsProfileEn._(_root);
	late final _StringsUserEn user = _StringsUserEn._(_root);
	late final _StringsEnumsEn enums = _StringsEnumsEn._(_root);
	late final _StringsCatalogEn catalog = _StringsCatalogEn._(_root);
	late final _StringsPersonalAccountEn personalAccount = _StringsPersonalAccountEn._(_root);
	late final _StringsCartEn cart = _StringsCartEn._(_root);
	late final _StringsMakingPurchaseEn makingPurchase = _StringsMakingPurchaseEn._(_root);
	late final _StringsAlertEn alert = _StringsAlertEn._(_root);
	late final _StringsValidationEn validation = _StringsValidationEn._(_root);
	late final _StringsUtilsEn utils = _StringsUtilsEn._(_root);
	late final _StringsCurrencyEn currency = _StringsCurrencyEn._(_root);
	late final _StringsMeasureUnitEn measureUnit = _StringsMeasureUnitEn._(_root);
}

// Path: app
class _StringsAppEn {
	_StringsAppEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => 'Short chain';
}

// Path: auth
class _StringsAuthEn {
	_StringsAuthEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsAuthHeaderEn header = _StringsAuthHeaderEn._(_root);
	late final _StringsAuthFooterEn footer = _StringsAuthFooterEn._(_root);
	late final _StringsAuthButtonEn button = _StringsAuthButtonEn._(_root);
}

// Path: profile
class _StringsProfileEn {
	_StringsProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsProfileDataEn data = _StringsProfileDataEn._(_root);
	String get button => 'Сохранить изменения';
	late final _StringsProfileSalesmanEn salesman = _StringsProfileSalesmanEn._(_root);
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
}

// Path: enums
class _StringsEnumsEn {
	_StringsEnumsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsEnumsGenderEn gender = _StringsEnumsGenderEn._(_root);
	late final _StringsEnumsSortTypeEn sortType = _StringsEnumsSortTypeEn._(_root);
	late final _StringsEnumsTypeProfileEn typeProfile = _StringsEnumsTypeProfileEn._(_root);
	late final _StringsEnumsDeliveryTypeEn deliveryType = _StringsEnumsDeliveryTypeEn._(_root);
	late final _StringsEnumsPaymentTypeEn paymentType = _StringsEnumsPaymentTypeEn._(_root);
	late final _StringsEnumsUsedConditionEn usedCondition = _StringsEnumsUsedConditionEn._(_root);
	late final _StringsEnumsContactMethodEn contactMethod = _StringsEnumsContactMethodEn._(_root);
	late final _StringsEnumsReviewSortTypeEn reviewSortType = _StringsEnumsReviewSortTypeEn._(_root);
	late final _StringsEnumsOfferTypeEn offerType = _StringsEnumsOfferTypeEn._(_root);
	late final _StringsEnumsPaymentServiceEn paymentService = _StringsEnumsPaymentServiceEn._(_root);
}

// Path: catalog
class _StringsCatalogEn {
	_StringsCatalogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsCatalogSearchEn search = _StringsCatalogSearchEn._(_root);
	late final _StringsCatalogItemEn item = _StringsCatalogItemEn._(_root);
	late final _StringsCatalogFilterEn filter = _StringsCatalogFilterEn._(_root);
	late final _StringsCatalogCharacteristicEn characteristic = _StringsCatalogCharacteristicEn._(_root);
	late final _StringsCatalogReviewEn review = _StringsCatalogReviewEn._(_root);
}

// Path: personalAccount
class _StringsPersonalAccountEn {
	_StringsPersonalAccountEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsPersonalAccountPurchasesEn purchases = _StringsPersonalAccountPurchasesEn._(_root);
	late final _StringsPersonalAccountSalesEn sales = _StringsPersonalAccountSalesEn._(_root);
	late final _StringsPersonalAccountRequestsEn requests = _StringsPersonalAccountRequestsEn._(_root);
	late final _StringsPersonalAccountAccountEn account = _StringsPersonalAccountAccountEn._(_root);
}

// Path: cart
class _StringsCartEn {
	_StringsCartEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get header => 'Корзина';
	String get footerButton => 'Перейти к оформлению';
	String get selectAll => 'Выбрать все';
	String get deleteSelected => 'Удалить выбранное';
	String get selectItems => 'Выберете товары, которые хотите купить';
}

// Path: makingPurchase
class _StringsMakingPurchaseEn {
	_StringsMakingPurchaseEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Оформление заказа';
	String get receiver => 'Получатель';
	String get makePurchase => 'Оформить покупку';
	String get makePurchaseInfo => 'При оформлении покупки вы сможете указать способ оплаты и доставки товара.';
}

// Path: alert
class _StringsAlertEn {
	_StringsAlertEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsAlertUnavailableEn unavailable = _StringsAlertUnavailableEn._(_root);
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
	String get address => 'Адрес';
	String get openMap => 'Открыть карту';
	String get active => 'Активные';
	String get archive => 'Архив';
	String get days => 'дней';
	String get imageUploadInfo => 'Вы можете загрузить 10 файлов с разрешением: jpg, jpeg, png, tiff и размером не более 10Мб каждый.';
	String get imageLoading => 'Подождите пока загрузятся все изображения';
	String items({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'товар',
		few: 'товара',
		other: 'товаров',
	);
	String get discount => 'Скидка';
	String get total => 'Итого';
	String get failAuth => 'Неверный логин или пароль';
}

// Path: currency
class _StringsCurrencyEn {
	_StringsCurrencyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get RUB => '₽';
}

// Path: measureUnit
class _StringsMeasureUnitEn {
	_StringsMeasureUnitEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsMeasureUnitShortEn short = _StringsMeasureUnitShortEn._(_root);
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

// Path: auth.footer
class _StringsAuthFooterEn {
	_StringsAuthFooterEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get noAccount => 'У вас нет учетной записи?';
}

// Path: auth.button
class _StringsAuthButtonEn {
	_StringsAuthButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get logIn => 'Авторизоваться';
	String get logUp => 'Зарегистрироваться';
}

// Path: profile.data
class _StringsProfileDataEn {
	_StringsProfileDataEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsProfileDataTypeProfileEn typeProfile = _StringsProfileDataTypeProfileEn._(_root);
	late final _StringsProfileDataPersonEn person = _StringsProfileDataPersonEn._(_root);
	late final _StringsProfileDataPrivateEn private = _StringsProfileDataPrivateEn._(_root);
}

// Path: profile.salesman
class _StringsProfileSalesmanEn {
	_StringsProfileSalesmanEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get documentsVerified => 'Документы проверены';
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

// Path: enums.gender
class _StringsEnumsGenderEn {
	_StringsEnumsGenderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Пол';
	String get male => 'Мужской';
	String get female => 'Женский';
}

// Path: enums.sortType
class _StringsEnumsSortTypeEn {
	_StringsEnumsSortTypeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get popular => 'Популярные';
	String get cheap => 'Сначала дешевые';
	String get expensive => 'Сначала дорогие';
	String get highRating => 'Высокий рейтинг';
}

// Path: enums.typeProfile
class _StringsEnumsTypeProfileEn {
	_StringsEnumsTypeProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get private => 'Частное лицо';
	String get legal => 'Юридическое лицо';
	String get any => 'Любое';
}

// Path: enums.deliveryType
class _StringsEnumsDeliveryTypeEn {
	_StringsEnumsDeliveryTypeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get self => 'Самовывоз';
	String get delivery => 'Доставка';
	String get any => 'Самовывоз или доставка';
}

// Path: enums.paymentType
class _StringsEnumsPaymentTypeEn {
	_StringsEnumsPaymentTypeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Оплата';
	String get card => 'Картой';
	String get cash => 'Наличными';
	String get online => 'Онлайн';
	String get any => 'Любая';
}

// Path: enums.usedCondition
class _StringsEnumsUsedConditionEn {
	_StringsEnumsUsedConditionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get likeNew => 'Как новый';
	String get great => 'Отличный';
	String get good => 'Хороший';
	String get any => 'Не имеет значения';
}

// Path: enums.contactMethod
class _StringsEnumsContactMethodEn {
	_StringsEnumsContactMethodEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Способ связи с вами';
	String get message => 'Только сообщения';
	String get phone => 'Только звонки';
	String get any => 'Звонки и сообщения';
}

// Path: enums.reviewSortType
class _StringsEnumsReviewSortTypeEn {
	_StringsEnumsReviewSortTypeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get positive => 'Сначала положительные';
	String get negative => 'Сначала отрицательные';
	String get popular => 'Популярные';
}

// Path: enums.offerType
class _StringsEnumsOfferTypeEn {
	_StringsEnumsOfferTypeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get common => 'Обычная';
	String get possibleSwap => 'Возможен обмен';
	String get onlySwap => 'Только обмен';
	String get free => 'Отдам бесплатно';
}

// Path: enums.paymentService
class _StringsEnumsPaymentServiceEn {
	_StringsEnumsPaymentServiceEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get sbp => 'Система быстрых платежей';
	String get sberpay => 'SberPay';
	String get ym => 'ЮMoney';
	String get card => 'Картой онлайн';
}

// Path: catalog.search
class _StringsCatalogSearchEn {
	_StringsCatalogSearchEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get hint => 'Искать товары и услуги';
}

// Path: catalog.item
class _StringsCatalogItemEn {
	_StringsCatalogItemEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get auction => 'Аукцион';
	String get requests => 'запросов';
	String get offers => 'предложений';
	String get remains => 'Осталось';
	String get requestButton => 'Предложить цену';
	String get cartButton => 'В корзину';
	String get description => 'Описание';
	late final _StringsCatalogItemAvailabilityEn availability = _StringsCatalogItemAvailabilityEn._(_root);
	late final _StringsCatalogItemContactEn contact = _StringsCatalogItemContactEn._(_root);
	late final _StringsCatalogItemInfoEn info = _StringsCatalogItemInfoEn._(_root);
	late final _StringsCatalogItemOfferPriceEn offerPrice = _StringsCatalogItemOfferPriceEn._(_root);
	late final _StringsCatalogItemReviewsEn reviews = _StringsCatalogItemReviewsEn._(_root);
}

// Path: catalog.filter
class _StringsCatalogFilterEn {
	_StringsCatalogFilterEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get header => 'Фильтр';
	String get onlyNew => 'Только новые товары';
	String get onlyDelivery => 'Только с доставкой';
}

// Path: catalog.characteristic
class _StringsCatalogCharacteristicEn {
	_StringsCatalogCharacteristicEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Характеристики';
}

// Path: catalog.review
class _StringsCatalogReviewEn {
	_StringsCatalogReviewEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Отзывы о товаре';
}

// Path: personalAccount.purchases
class _StringsPersonalAccountPurchasesEn {
	_StringsPersonalAccountPurchasesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Покупки';
	late final _StringsPersonalAccountPurchasesMyPriceOffersEn myPriceOffers = _StringsPersonalAccountPurchasesMyPriceOffersEn._(_root);
	String get offers => 'Заказы';
	String get purchasedItems => 'Купленные товары';
	String get favorites => 'Избранное';
	late final _StringsPersonalAccountPurchasesMyReviewsEn myReviews = _StringsPersonalAccountPurchasesMyReviewsEn._(_root);
}

// Path: personalAccount.sales
class _StringsPersonalAccountSalesEn {
	_StringsPersonalAccountSalesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Продажи';
	late final _StringsPersonalAccountSalesMyGoodsEn myGoods = _StringsPersonalAccountSalesMyGoodsEn._(_root);
	late final _StringsPersonalAccountSalesAddItemEn addItem = _StringsPersonalAccountSalesAddItemEn._(_root);
	String get offersFromBuyers => 'Предложения от покупателей';
	String get comments => 'Комментарии';
	String get mySales => 'Мои продажи';
	String get reviewsAboutMe => 'Отзывы обо мне';
}

// Path: personalAccount.requests
class _StringsPersonalAccountRequestsEn {
	_StringsPersonalAccountRequestsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Запросы';
	late final _StringsPersonalAccountRequestsMyRequestsEn myRequests = _StringsPersonalAccountRequestsMyRequestsEn._(_root);
	late final _StringsPersonalAccountRequestsAddRequestEn addRequest = _StringsPersonalAccountRequestsAddRequestEn._(_root);
	String get answersForRequest => 'Ответы на мои запросы';
	String get myAnswers => 'Мои ответы';
	String get featuredQueries => 'Избранные запросы';
}

// Path: personalAccount.account
class _StringsPersonalAccountAccountEn {
	_StringsPersonalAccountAccountEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Аккаунт';
	String get personalData => 'Личные данные';
	String get messages => 'Сообщения';
	String get myAddresses => 'Мои адреса';
	String get supportRequests => 'Обращения в поддержку';
	String get notificationSettings => 'Настройки уведомлений';
	String get logout => 'Выйти из аккаунта';
}

// Path: alert.unavailable
class _StringsAlertUnavailableEn {
	_StringsAlertUnavailableEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Недоступен';
	String get content => 'Выбранный функционал пока недоступен.';
}

// Path: measureUnit.short
class _StringsMeasureUnitShortEn {
	_StringsMeasureUnitShortEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get piece => 'шт.';
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

// Path: profile.data.typeProfile
class _StringsProfileDataTypeProfileEn {
	_StringsProfileDataTypeProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get text => 'Частные лица могут продавать новые или б/у товары, приобретенные в розничных магазинах для собственного использования.';
	String get label => 'Тип профиля';
}

// Path: profile.data.person
class _StringsProfileDataPersonEn {
	_StringsProfileDataPersonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get text => 'Эта информация являются публичной. Она видна другим пользователям сети Интернет.\nРазмещая свои персональные данные в данном разделе, вы раскрываете их неопределенному кругу лиц.';
}

// Path: profile.data.private
class _StringsProfileDataPrivateEn {
	_StringsProfileDataPrivateEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get text => 'Данные ниже видны только вам. Мы надежно храним эти данные и не показываем их другим пользователям.';
}

// Path: catalog.item.availability
class _StringsCatalogItemAvailabilityEn {
	_StringsCatalogItemAvailabilityEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Наличие';
	String get some => 'несколько';
}

// Path: catalog.item.contact
class _StringsCatalogItemContactEn {
	_StringsCatalogItemContactEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get write => 'Написать';
	String get call => 'Позвонить';
}

// Path: catalog.item.info
class _StringsCatalogItemInfoEn {
	_StringsCatalogItemInfoEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get added => 'Добавлено';
	String get views => 'просмотров';
	String get complain => 'Пожаловаться на описание';
}

// Path: catalog.item.offerPrice
class _StringsCatalogItemOfferPriceEn {
	_StringsCatalogItemOfferPriceEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get offerHeader => 'Предложение цены';
	String get offerText => 'Укажите вашу цену и срок действия вашего предложения. Если продавец примет ваши условия, мы пришлем уведомление об этом.';
	String get button => 'Отправить предложение';
	String get priceLabel => 'Сумма';
	String get timeLabel => 'Срок предложения';
	String get days => 'дней';
}

// Path: catalog.item.reviews
class _StringsCatalogItemReviewsEn {
	_StringsCatalogItemReviewsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get reviewsLabel => 'отзывов';
	String get onlyPhotoFilter => 'Только с фото';
}

// Path: personalAccount.purchases.myPriceOffers
class _StringsPersonalAccountPurchasesMyPriceOffersEn {
	_StringsPersonalAccountPurchasesMyPriceOffersEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Мои предложения цены';
	String otherOffer({required Object from, required Object to}) => 'Другие пользователи предложили от ${from} до ${to}';
	String get youOfferTitle => 'Ваше предложение';
	String get youOfferPrice => 'Вы предложили купить этот товар за';
	String get youOfferTime => 'Предложение действует';
	String get acceptOffer => 'Продавец принял ваше предложение';
	String get rejectOffer => 'Продавец отказался от предложения';
	String get uploadButton => 'Обновить';
	String get buy => 'Оформить покупку';
	String get reject => 'Отказаться';
}

// Path: personalAccount.purchases.myReviews
class _StringsPersonalAccountPurchasesMyReviewsEn {
	_StringsPersonalAccountPurchasesMyReviewsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Мои отзывы и оценки';
	String get disadvants => 'Недостатки';
	String get advants => 'Преимущества';
	String get comment => 'Комментарий';
	String get photo => 'Фото';
}

// Path: personalAccount.sales.myGoods
class _StringsPersonalAccountSalesMyGoodsEn {
	_StringsPersonalAccountSalesMyGoodsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Мои объявления';
	String get views => 'просмотров';
	String expires({required Object days}) => 'Истекает через ${days} дней';
	String get messages => 'сообщений';
	String get addSale => 'Добавить объявление';
}

// Path: personalAccount.sales.addItem
class _StringsPersonalAccountSalesAddItemEn {
	_StringsPersonalAccountSalesAddItemEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Добавление объявления';
	late final _StringsPersonalAccountSalesAddItemGoodStateEn goodState = _StringsPersonalAccountSalesAddItemGoodStateEn._(_root);
	String get name => 'Название товара';
	String get nameInfo => 'Из названия должно быть понятно, что конкретно вы хотите купить.';
	String get category => 'Категория';
	String get categoryHint => 'Выберите категорию';
	String get categoryInfo => 'Выберите раздел каталога, в котором будет размещаться ваше объявление. Если не нашли подходящей категории, сообщите нам об этом.';
	String get categoryPopup => 'Выберите раздел каталога, в котором будет размещаться ваше объявление. Если не нашли подходящей категории, сообщите нам об этом.';
	String get categorySearch => 'Поиск по категориям';
	String get characteristics => 'Характеристики';
	String get brand => 'Бренд';
	String get imei => 'IMEI';
	String get imeiInfo => 'IMEI указан на обратной стороне устройства или на коробке';
	String get parametersTitle => 'Параметры и описание';
	String get state => 'Состояние';
	String get stateInfo => 'Новым может считаться товар только в упаковке и ни разу не использованный.';
	String get descriptionTitle => 'Описание объявления';
	String get descriptionInfo => 'Не указывайте в описании телефон и e-mail — для этого есть отдельные поля.';
	String get usedCondition => 'Состояние б/у';
	String get price => 'Цена';
	String get sale => 'Продажа';
	String get offersBelowPrice => 'Не принимать предложения ниже указанной стоимости';
	String get severalPieces => 'Несколько штук в наличии';
	String get severalPiecesInfo => 'Покупатели увидят, что вы продаёте несколько штук, упаковок или других единиц товара — и смогут купить больше одной.';
	String get offerTime => 'Срок объявления';
	String get renew => 'Продлевать автоматически';
	String get photo => 'Фото и видео';
	String get itemPhoto => 'Фотографии товара';
	String get video => 'Видео с YouTube или Rutube';
	String get place => 'Место сделки';
	String get placeAddress => 'Точное место сделки';
	String get deliveryAddressInfo => 'Объявление смогут найти покупатели, которые ищут товары в конкретном радиусе или районе.\nТочный адрес не помешает вашему предложению появиться в результатах поиска по городу, региону или всей России.';
	String get contact => 'Контакты';
	String get yourPhone => 'Ваш телефон';
	String get contactType => 'Способ связи с вами';
	String get post => 'Опубликовать объявление';
	String get saveDraft => 'Сохранить черновик';
	String get postInfo => 'Вы публикуете объявление и данные в нём, чтобы их мог посмотреть кто угодно в интернете.\nВы также соглашаетесь с правилами Short Chain.';
}

// Path: personalAccount.requests.myRequests
class _StringsPersonalAccountRequestsMyRequestsEn {
	_StringsPersonalAccountRequestsMyRequestsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Мои запросы';
	String get views => 'просмотров';
	String expires({required Object days}) => 'Истекает через ${days} дней';
	String get messages => 'сообщений';
	String get addRequest => 'Новый запрос';
	String get upTo => 'до';
}

// Path: personalAccount.requests.addRequest
class _StringsPersonalAccountRequestsAddRequestEn {
	_StringsPersonalAccountRequestsAddRequestEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsPersonalAccountRequestsAddRequestGoodStateEn goodState = _StringsPersonalAccountRequestsAddRequestGoodStateEn._(_root);
	String get addTitle => 'Добавление запроса на покупку';
	String get nameGood => 'Название товара';
	String get nameInfo => 'Из названия должно быть понятно, что конкретно вы хотите купить.';
	String get parametersTitle => 'Параметры и описание';
	String get state => 'Состояние';
	String get stateInfo => 'Новым может считаться товар только в упаковке и ни разу не использованный.';
	String get descriptionTitle => 'Описание запроса';
	String get descriptionInfo => 'Не указывайте в описании телефон и e-mail — для этого есть отдельные поля.';
	String get usedCondition => 'Состояние б/у';
	String get maxPrice => 'Максимальная цена';
	String get severalPieces => 'Требуется несколько штук';
	String get numberPieces => 'Продавцы смогут предложить вам несколько единиц товара.';
	String get requestTime => 'Срок запроса';
	String get renew => 'Продлевать автоматически';
	String get place => 'Место сделки';
	String get delivery => 'Тип доставки';
	String get deliveryAddressTitle => 'Адрес доставки';
	String get deliveryAddressInfo => 'Объявление смогут найти покупатели, которые ищут товары в конкретном радиусе или районе.\nТочный адрес не помешает вашему предложению появиться в результатах поиска по городу, региону или всей России.';
	String get contact => 'Контакты';
	String get yourPhone => 'Ваш телефон';
	String get contactType => 'Способ связи с вами';
	String get post => 'Опубликовать объявление';
	String get saveDraft => 'Сохранить черновик';
	String get postInfo => 'Вы публикуете объявление и данные в нём, чтобы их мог посмотреть кто угодно в интернете.\nВы также соглашаетесь с правилами Short Chain.';
}

// Path: personalAccount.sales.addItem.goodState
class _StringsPersonalAccountSalesAddItemGoodStateEn {
	_StringsPersonalAccountSalesAddItemGoodStateEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get newState => 'Новое';
	String get usedState => 'Б/у';
}

// Path: personalAccount.requests.addRequest.goodState
class _StringsPersonalAccountRequestsAddRequestGoodStateEn {
	_StringsPersonalAccountRequestsAddRequestGoodStateEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get newState => 'Только новое';
	String get usedState => 'Можно б/у';
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
	@override late final _StringsAuthRu auth = _StringsAuthRu._(_root);
	@override late final _StringsProfileRu profile = _StringsProfileRu._(_root);
	@override late final _StringsUserRu user = _StringsUserRu._(_root);
	@override late final _StringsEnumsRu enums = _StringsEnumsRu._(_root);
	@override late final _StringsCatalogRu catalog = _StringsCatalogRu._(_root);
	@override late final _StringsPersonalAccountRu personalAccount = _StringsPersonalAccountRu._(_root);
	@override late final _StringsCartRu cart = _StringsCartRu._(_root);
	@override late final _StringsMakingPurchaseRu makingPurchase = _StringsMakingPurchaseRu._(_root);
	@override late final _StringsAlertRu alert = _StringsAlertRu._(_root);
	@override late final _StringsValidationRu validation = _StringsValidationRu._(_root);
	@override late final _StringsUtilsRu utils = _StringsUtilsRu._(_root);
	@override late final _StringsCurrencyRu currency = _StringsCurrencyRu._(_root);
	@override late final _StringsMeasureUnitRu measureUnit = _StringsMeasureUnitRu._(_root);
}

// Path: app
class _StringsAppRu implements _StringsAppEn {
	_StringsAppRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get name => 'Short chain';
}

// Path: auth
class _StringsAuthRu implements _StringsAuthEn {
	_StringsAuthRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override late final _StringsAuthHeaderRu header = _StringsAuthHeaderRu._(_root);
	@override late final _StringsAuthFooterRu footer = _StringsAuthFooterRu._(_root);
	@override late final _StringsAuthButtonRu button = _StringsAuthButtonRu._(_root);
}

// Path: profile
class _StringsProfileRu implements _StringsProfileEn {
	_StringsProfileRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override late final _StringsProfileDataRu data = _StringsProfileDataRu._(_root);
	@override String get button => 'Сохранить изменения';
	@override late final _StringsProfileSalesmanRu salesman = _StringsProfileSalesmanRu._(_root);
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
}

// Path: enums
class _StringsEnumsRu implements _StringsEnumsEn {
	_StringsEnumsRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override late final _StringsEnumsGenderRu gender = _StringsEnumsGenderRu._(_root);
	@override late final _StringsEnumsSortTypeRu sortType = _StringsEnumsSortTypeRu._(_root);
	@override late final _StringsEnumsTypeProfileRu typeProfile = _StringsEnumsTypeProfileRu._(_root);
	@override late final _StringsEnumsDeliveryTypeRu deliveryType = _StringsEnumsDeliveryTypeRu._(_root);
	@override late final _StringsEnumsPaymentTypeRu paymentType = _StringsEnumsPaymentTypeRu._(_root);
	@override late final _StringsEnumsUsedConditionRu usedCondition = _StringsEnumsUsedConditionRu._(_root);
	@override late final _StringsEnumsContactMethodRu contactMethod = _StringsEnumsContactMethodRu._(_root);
	@override late final _StringsEnumsReviewSortTypeRu reviewSortType = _StringsEnumsReviewSortTypeRu._(_root);
	@override late final _StringsEnumsOfferTypeRu offerType = _StringsEnumsOfferTypeRu._(_root);
	@override late final _StringsEnumsPaymentServiceRu paymentService = _StringsEnumsPaymentServiceRu._(_root);
}

// Path: catalog
class _StringsCatalogRu implements _StringsCatalogEn {
	_StringsCatalogRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override late final _StringsCatalogSearchRu search = _StringsCatalogSearchRu._(_root);
	@override late final _StringsCatalogItemRu item = _StringsCatalogItemRu._(_root);
	@override late final _StringsCatalogFilterRu filter = _StringsCatalogFilterRu._(_root);
	@override late final _StringsCatalogCharacteristicRu characteristic = _StringsCatalogCharacteristicRu._(_root);
	@override late final _StringsCatalogReviewRu review = _StringsCatalogReviewRu._(_root);
}

// Path: personalAccount
class _StringsPersonalAccountRu implements _StringsPersonalAccountEn {
	_StringsPersonalAccountRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override late final _StringsPersonalAccountPurchasesRu purchases = _StringsPersonalAccountPurchasesRu._(_root);
	@override late final _StringsPersonalAccountSalesRu sales = _StringsPersonalAccountSalesRu._(_root);
	@override late final _StringsPersonalAccountRequestsRu requests = _StringsPersonalAccountRequestsRu._(_root);
	@override late final _StringsPersonalAccountAccountRu account = _StringsPersonalAccountAccountRu._(_root);
}

// Path: cart
class _StringsCartRu implements _StringsCartEn {
	_StringsCartRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get header => 'Корзина';
	@override String get footerButton => 'Перейти к оформлению';
	@override String get selectAll => 'Выбрать все';
	@override String get deleteSelected => 'Удалить выбранное';
	@override String get selectItems => 'Выберете товары, которые хотите купить';
}

// Path: makingPurchase
class _StringsMakingPurchaseRu implements _StringsMakingPurchaseEn {
	_StringsMakingPurchaseRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Оформление заказа';
	@override String get receiver => 'Получатель';
	@override String get makePurchase => 'Оформить покупку';
	@override String get makePurchaseInfo => 'При оформлении покупки вы сможете указать способ оплаты и доставки товара.';
}

// Path: alert
class _StringsAlertRu implements _StringsAlertEn {
	_StringsAlertRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override late final _StringsAlertUnavailableRu unavailable = _StringsAlertUnavailableRu._(_root);
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
	@override String get address => 'Адрес';
	@override String get openMap => 'Открыть карту';
	@override String get active => 'Активные';
	@override String get archive => 'Архив';
	@override String get days => 'дней';
	@override String get imageUploadInfo => 'Вы можете загрузить 10 файлов с разрешением: jpg, jpeg, png, tiff и размером не более 10Мб каждый.';
	@override String get imageLoading => 'Подождите пока загрузятся все изображения';
	@override String items({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: 'товар',
		few: 'товара',
		other: 'товаров',
	);
	@override String get discount => 'Скидка';
	@override String get total => 'Итого';
	@override String get failAuth => 'Неверный логин или пароль';
}

// Path: currency
class _StringsCurrencyRu implements _StringsCurrencyEn {
	_StringsCurrencyRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get RUB => '₽';
}

// Path: measureUnit
class _StringsMeasureUnitRu implements _StringsMeasureUnitEn {
	_StringsMeasureUnitRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override late final _StringsMeasureUnitShortRu short = _StringsMeasureUnitShortRu._(_root);
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

// Path: auth.footer
class _StringsAuthFooterRu implements _StringsAuthFooterEn {
	_StringsAuthFooterRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get noAccount => 'У вас нет учетной записи?';
}

// Path: auth.button
class _StringsAuthButtonRu implements _StringsAuthButtonEn {
	_StringsAuthButtonRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get logIn => 'Авторизоваться';
	@override String get logUp => 'Зарегистрироваться';
}

// Path: profile.data
class _StringsProfileDataRu implements _StringsProfileDataEn {
	_StringsProfileDataRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override late final _StringsProfileDataTypeProfileRu typeProfile = _StringsProfileDataTypeProfileRu._(_root);
	@override late final _StringsProfileDataPersonRu person = _StringsProfileDataPersonRu._(_root);
	@override late final _StringsProfileDataPrivateRu private = _StringsProfileDataPrivateRu._(_root);
}

// Path: profile.salesman
class _StringsProfileSalesmanRu implements _StringsProfileSalesmanEn {
	_StringsProfileSalesmanRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get documentsVerified => 'Документы проверены';
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

// Path: enums.gender
class _StringsEnumsGenderRu implements _StringsEnumsGenderEn {
	_StringsEnumsGenderRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get label => 'Пол';
	@override String get male => 'Мужской';
	@override String get female => 'Женский';
}

// Path: enums.sortType
class _StringsEnumsSortTypeRu implements _StringsEnumsSortTypeEn {
	_StringsEnumsSortTypeRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get popular => 'Популярные';
	@override String get cheap => 'Сначала дешевые';
	@override String get expensive => 'Сначала дорогие';
	@override String get highRating => 'Высокий рейтинг';
}

// Path: enums.typeProfile
class _StringsEnumsTypeProfileRu implements _StringsEnumsTypeProfileEn {
	_StringsEnumsTypeProfileRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get private => 'Частное лицо';
	@override String get legal => 'Юридическое лицо';
	@override String get any => 'Любое';
}

// Path: enums.deliveryType
class _StringsEnumsDeliveryTypeRu implements _StringsEnumsDeliveryTypeEn {
	_StringsEnumsDeliveryTypeRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get self => 'Самовывоз';
	@override String get delivery => 'Доставка';
	@override String get any => 'Самовывоз или доставка';
}

// Path: enums.paymentType
class _StringsEnumsPaymentTypeRu implements _StringsEnumsPaymentTypeEn {
	_StringsEnumsPaymentTypeRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get label => 'Оплата';
	@override String get card => 'Картой';
	@override String get cash => 'Наличными';
	@override String get online => 'Онлайн';
	@override String get any => 'Любая';
}

// Path: enums.usedCondition
class _StringsEnumsUsedConditionRu implements _StringsEnumsUsedConditionEn {
	_StringsEnumsUsedConditionRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get likeNew => 'Как новый';
	@override String get great => 'Отличный';
	@override String get good => 'Хороший';
	@override String get any => 'Не имеет значения';
}

// Path: enums.contactMethod
class _StringsEnumsContactMethodRu implements _StringsEnumsContactMethodEn {
	_StringsEnumsContactMethodRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get label => 'Способ связи с вами';
	@override String get message => 'Только сообщения';
	@override String get phone => 'Только звонки';
	@override String get any => 'Звонки и сообщения';
}

// Path: enums.reviewSortType
class _StringsEnumsReviewSortTypeRu implements _StringsEnumsReviewSortTypeEn {
	_StringsEnumsReviewSortTypeRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get positive => 'Сначала положительные';
	@override String get negative => 'Сначала отрицательные';
	@override String get popular => 'Популярные';
}

// Path: enums.offerType
class _StringsEnumsOfferTypeRu implements _StringsEnumsOfferTypeEn {
	_StringsEnumsOfferTypeRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get common => 'Обычная';
	@override String get possibleSwap => 'Возможен обмен';
	@override String get onlySwap => 'Только обмен';
	@override String get free => 'Отдам бесплатно';
}

// Path: enums.paymentService
class _StringsEnumsPaymentServiceRu implements _StringsEnumsPaymentServiceEn {
	_StringsEnumsPaymentServiceRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get sbp => 'Система быстрых платежей';
	@override String get sberpay => 'SberPay';
	@override String get ym => 'ЮMoney';
	@override String get card => 'Картой онлайн';
}

// Path: catalog.search
class _StringsCatalogSearchRu implements _StringsCatalogSearchEn {
	_StringsCatalogSearchRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get hint => 'Искать товары и услуги';
}

// Path: catalog.item
class _StringsCatalogItemRu implements _StringsCatalogItemEn {
	_StringsCatalogItemRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get auction => 'Аукцион';
	@override String get requests => 'запросов';
	@override String get offers => 'предложений';
	@override String get remains => 'Осталось';
	@override String get requestButton => 'Предложить цену';
	@override String get cartButton => 'В корзину';
	@override String get description => 'Описание';
	@override late final _StringsCatalogItemAvailabilityRu availability = _StringsCatalogItemAvailabilityRu._(_root);
	@override late final _StringsCatalogItemContactRu contact = _StringsCatalogItemContactRu._(_root);
	@override late final _StringsCatalogItemInfoRu info = _StringsCatalogItemInfoRu._(_root);
	@override late final _StringsCatalogItemOfferPriceRu offerPrice = _StringsCatalogItemOfferPriceRu._(_root);
	@override late final _StringsCatalogItemReviewsRu reviews = _StringsCatalogItemReviewsRu._(_root);
}

// Path: catalog.filter
class _StringsCatalogFilterRu implements _StringsCatalogFilterEn {
	_StringsCatalogFilterRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get header => 'Фильтр';
	@override String get onlyNew => 'Только новые товары';
	@override String get onlyDelivery => 'Только с доставкой';
}

// Path: catalog.characteristic
class _StringsCatalogCharacteristicRu implements _StringsCatalogCharacteristicEn {
	_StringsCatalogCharacteristicRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get label => 'Характеристики';
}

// Path: catalog.review
class _StringsCatalogReviewRu implements _StringsCatalogReviewEn {
	_StringsCatalogReviewRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get label => 'Отзывы о товаре';
}

// Path: personalAccount.purchases
class _StringsPersonalAccountPurchasesRu implements _StringsPersonalAccountPurchasesEn {
	_StringsPersonalAccountPurchasesRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get label => 'Покупки';
	@override late final _StringsPersonalAccountPurchasesMyPriceOffersRu myPriceOffers = _StringsPersonalAccountPurchasesMyPriceOffersRu._(_root);
	@override String get offers => 'Заказы';
	@override String get purchasedItems => 'Купленные товары';
	@override String get favorites => 'Избранное';
	@override late final _StringsPersonalAccountPurchasesMyReviewsRu myReviews = _StringsPersonalAccountPurchasesMyReviewsRu._(_root);
}

// Path: personalAccount.sales
class _StringsPersonalAccountSalesRu implements _StringsPersonalAccountSalesEn {
	_StringsPersonalAccountSalesRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get label => 'Продажи';
	@override late final _StringsPersonalAccountSalesMyGoodsRu myGoods = _StringsPersonalAccountSalesMyGoodsRu._(_root);
	@override late final _StringsPersonalAccountSalesAddItemRu addItem = _StringsPersonalAccountSalesAddItemRu._(_root);
	@override String get offersFromBuyers => 'Предложения от покупателей';
	@override String get comments => 'Комментарии';
	@override String get mySales => 'Мои продажи';
	@override String get reviewsAboutMe => 'Отзывы обо мне';
}

// Path: personalAccount.requests
class _StringsPersonalAccountRequestsRu implements _StringsPersonalAccountRequestsEn {
	_StringsPersonalAccountRequestsRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get label => 'Запросы';
	@override late final _StringsPersonalAccountRequestsMyRequestsRu myRequests = _StringsPersonalAccountRequestsMyRequestsRu._(_root);
	@override late final _StringsPersonalAccountRequestsAddRequestRu addRequest = _StringsPersonalAccountRequestsAddRequestRu._(_root);
	@override String get answersForRequest => 'Ответы на мои запросы';
	@override String get myAnswers => 'Мои ответы';
	@override String get featuredQueries => 'Избранные запросы';
}

// Path: personalAccount.account
class _StringsPersonalAccountAccountRu implements _StringsPersonalAccountAccountEn {
	_StringsPersonalAccountAccountRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get label => 'Аккаунт';
	@override String get personalData => 'Личные данные';
	@override String get messages => 'Сообщения';
	@override String get myAddresses => 'Мои адреса';
	@override String get supportRequests => 'Обращения в поддержку';
	@override String get notificationSettings => 'Настройки уведомлений';
	@override String get logout => 'Выйти из аккаунта';
}

// Path: alert.unavailable
class _StringsAlertUnavailableRu implements _StringsAlertUnavailableEn {
	_StringsAlertUnavailableRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Недоступен';
	@override String get content => 'Выбранный функционал пока недоступен.';
}

// Path: measureUnit.short
class _StringsMeasureUnitShortRu implements _StringsMeasureUnitShortEn {
	_StringsMeasureUnitShortRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get piece => 'шт.';
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

// Path: profile.data.typeProfile
class _StringsProfileDataTypeProfileRu implements _StringsProfileDataTypeProfileEn {
	_StringsProfileDataTypeProfileRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get text => 'Частные лица могут продавать новые или б/у товары, приобретенные в розничных магазинах для собственного использования.';
	@override String get label => 'Тип профиля';
}

// Path: profile.data.person
class _StringsProfileDataPersonRu implements _StringsProfileDataPersonEn {
	_StringsProfileDataPersonRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get text => 'Эта информация являются публичной. Она видна другим пользователям сети Интернет.\nРазмещая свои персональные данные в данном разделе, вы раскрываете их неопределенному кругу лиц.';
}

// Path: profile.data.private
class _StringsProfileDataPrivateRu implements _StringsProfileDataPrivateEn {
	_StringsProfileDataPrivateRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get text => 'Данные ниже видны только вам. Мы надежно храним эти данные и не показываем их другим пользователям.';
}

// Path: catalog.item.availability
class _StringsCatalogItemAvailabilityRu implements _StringsCatalogItemAvailabilityEn {
	_StringsCatalogItemAvailabilityRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get label => 'Наличие';
	@override String get some => 'несколько';
}

// Path: catalog.item.contact
class _StringsCatalogItemContactRu implements _StringsCatalogItemContactEn {
	_StringsCatalogItemContactRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get write => 'Написать';
	@override String get call => 'Позвонить';
}

// Path: catalog.item.info
class _StringsCatalogItemInfoRu implements _StringsCatalogItemInfoEn {
	_StringsCatalogItemInfoRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get added => 'Добавлено';
	@override String get views => 'просмотров';
	@override String get complain => 'Пожаловаться на описание';
}

// Path: catalog.item.offerPrice
class _StringsCatalogItemOfferPriceRu implements _StringsCatalogItemOfferPriceEn {
	_StringsCatalogItemOfferPriceRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get offerHeader => 'Предложение цены';
	@override String get offerText => 'Укажите вашу цену и срок действия вашего предложения. Если продавец примет ваши условия, мы пришлем уведомление об этом.';
	@override String get button => 'Отправить предложение';
	@override String get priceLabel => 'Сумма';
	@override String get timeLabel => 'Срок предложения';
	@override String get days => 'дней';
}

// Path: catalog.item.reviews
class _StringsCatalogItemReviewsRu implements _StringsCatalogItemReviewsEn {
	_StringsCatalogItemReviewsRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get reviewsLabel => 'отзывов';
	@override String get onlyPhotoFilter => 'Только с фото';
}

// Path: personalAccount.purchases.myPriceOffers
class _StringsPersonalAccountPurchasesMyPriceOffersRu implements _StringsPersonalAccountPurchasesMyPriceOffersEn {
	_StringsPersonalAccountPurchasesMyPriceOffersRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Мои предложения цены';
	@override String otherOffer({required Object from, required Object to}) => 'Другие пользователи предложили от ${from} до ${to}';
	@override String get youOfferTitle => 'Ваше предложение';
	@override String get youOfferPrice => 'Вы предложили купить этот товар за';
	@override String get youOfferTime => 'Предложение действует';
	@override String get acceptOffer => 'Продавец принял ваше предложение';
	@override String get rejectOffer => 'Продавец отказался от предложения';
	@override String get uploadButton => 'Обновить';
	@override String get buy => 'Оформить покупку';
	@override String get reject => 'Отказаться';
}

// Path: personalAccount.purchases.myReviews
class _StringsPersonalAccountPurchasesMyReviewsRu implements _StringsPersonalAccountPurchasesMyReviewsEn {
	_StringsPersonalAccountPurchasesMyReviewsRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Мои отзывы и оценки';
	@override String get disadvants => 'Недостатки';
	@override String get advants => 'Преимущества';
	@override String get comment => 'Комментарий';
	@override String get photo => 'Фото';
}

// Path: personalAccount.sales.myGoods
class _StringsPersonalAccountSalesMyGoodsRu implements _StringsPersonalAccountSalesMyGoodsEn {
	_StringsPersonalAccountSalesMyGoodsRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Мои объявления';
	@override String get views => 'просмотров';
	@override String expires({required Object days}) => 'Истекает через ${days} дней';
	@override String get messages => 'сообщений';
	@override String get addSale => 'Добавить объявление';
}

// Path: personalAccount.sales.addItem
class _StringsPersonalAccountSalesAddItemRu implements _StringsPersonalAccountSalesAddItemEn {
	_StringsPersonalAccountSalesAddItemRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Добавление объявления';
	@override late final _StringsPersonalAccountSalesAddItemGoodStateRu goodState = _StringsPersonalAccountSalesAddItemGoodStateRu._(_root);
	@override String get name => 'Название товара';
	@override String get nameInfo => 'Из названия должно быть понятно, что конкретно вы хотите купить.';
	@override String get category => 'Категория';
	@override String get categoryHint => 'Выберите категорию';
	@override String get categoryInfo => 'Выберите раздел каталога, в котором будет размещаться ваше объявление. Если не нашли подходящей категории, сообщите нам об этом.';
	@override String get categoryPopup => 'Выберите раздел каталога, в котором будет размещаться ваше объявление. Если не нашли подходящей категории, сообщите нам об этом.';
	@override String get categorySearch => 'Поиск по категориям';
	@override String get characteristics => 'Характеристики';
	@override String get brand => 'Бренд';
	@override String get imei => 'IMEI';
	@override String get imeiInfo => 'IMEI указан на обратной стороне устройства или на коробке';
	@override String get parametersTitle => 'Параметры и описание';
	@override String get state => 'Состояние';
	@override String get stateInfo => 'Новым может считаться товар только в упаковке и ни разу не использованный.';
	@override String get descriptionTitle => 'Описание объявления';
	@override String get descriptionInfo => 'Не указывайте в описании телефон и e-mail — для этого есть отдельные поля.';
	@override String get usedCondition => 'Состояние б/у';
	@override String get price => 'Цена';
	@override String get sale => 'Продажа';
	@override String get offersBelowPrice => 'Не принимать предложения ниже указанной стоимости';
	@override String get severalPieces => 'Несколько штук в наличии';
	@override String get severalPiecesInfo => 'Покупатели увидят, что вы продаёте несколько штук, упаковок или других единиц товара — и смогут купить больше одной.';
	@override String get offerTime => 'Срок объявления';
	@override String get renew => 'Продлевать автоматически';
	@override String get photo => 'Фото и видео';
	@override String get itemPhoto => 'Фотографии товара';
	@override String get video => 'Видео с YouTube или Rutube';
	@override String get place => 'Место сделки';
	@override String get placeAddress => 'Точное место сделки';
	@override String get deliveryAddressInfo => 'Объявление смогут найти покупатели, которые ищут товары в конкретном радиусе или районе.\nТочный адрес не помешает вашему предложению появиться в результатах поиска по городу, региону или всей России.';
	@override String get contact => 'Контакты';
	@override String get yourPhone => 'Ваш телефон';
	@override String get contactType => 'Способ связи с вами';
	@override String get post => 'Опубликовать объявление';
	@override String get saveDraft => 'Сохранить черновик';
	@override String get postInfo => 'Вы публикуете объявление и данные в нём, чтобы их мог посмотреть кто угодно в интернете.\nВы также соглашаетесь с правилами Short Chain.';
}

// Path: personalAccount.requests.myRequests
class _StringsPersonalAccountRequestsMyRequestsRu implements _StringsPersonalAccountRequestsMyRequestsEn {
	_StringsPersonalAccountRequestsMyRequestsRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Мои запросы';
	@override String get views => 'просмотров';
	@override String expires({required Object days}) => 'Истекает через ${days} дней';
	@override String get messages => 'сообщений';
	@override String get addRequest => 'Новый запрос';
	@override String get upTo => 'до';
}

// Path: personalAccount.requests.addRequest
class _StringsPersonalAccountRequestsAddRequestRu implements _StringsPersonalAccountRequestsAddRequestEn {
	_StringsPersonalAccountRequestsAddRequestRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override late final _StringsPersonalAccountRequestsAddRequestGoodStateRu goodState = _StringsPersonalAccountRequestsAddRequestGoodStateRu._(_root);
	@override String get addTitle => 'Добавление запроса на покупку';
	@override String get nameGood => 'Название товара';
	@override String get nameInfo => 'Из названия должно быть понятно, что конкретно вы хотите купить.';
	@override String get parametersTitle => 'Параметры и описание';
	@override String get state => 'Состояние';
	@override String get stateInfo => 'Новым может считаться товар только в упаковке и ни разу не использованный.';
	@override String get descriptionTitle => 'Описание запроса';
	@override String get descriptionInfo => 'Не указывайте в описании телефон и e-mail — для этого есть отдельные поля.';
	@override String get usedCondition => 'Состояние б/у';
	@override String get maxPrice => 'Максимальная цена';
	@override String get severalPieces => 'Требуется несколько штук';
	@override String get numberPieces => 'Продавцы смогут предложить вам несколько единиц товара.';
	@override String get requestTime => 'Срок запроса';
	@override String get renew => 'Продлевать автоматически';
	@override String get place => 'Место сделки';
	@override String get delivery => 'Тип доставки';
	@override String get deliveryAddressTitle => 'Адрес доставки';
	@override String get deliveryAddressInfo => 'Объявление смогут найти покупатели, которые ищут товары в конкретном радиусе или районе.\nТочный адрес не помешает вашему предложению появиться в результатах поиска по городу, региону или всей России.';
	@override String get contact => 'Контакты';
	@override String get yourPhone => 'Ваш телефон';
	@override String get contactType => 'Способ связи с вами';
	@override String get post => 'Опубликовать объявление';
	@override String get saveDraft => 'Сохранить черновик';
	@override String get postInfo => 'Вы публикуете объявление и данные в нём, чтобы их мог посмотреть кто угодно в интернете.\nВы также соглашаетесь с правилами Short Chain.';
}

// Path: personalAccount.sales.addItem.goodState
class _StringsPersonalAccountSalesAddItemGoodStateRu implements _StringsPersonalAccountSalesAddItemGoodStateEn {
	_StringsPersonalAccountSalesAddItemGoodStateRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get newState => 'Новое';
	@override String get usedState => 'Б/у';
}

// Path: personalAccount.requests.addRequest.goodState
class _StringsPersonalAccountRequestsAddRequestGoodStateRu implements _StringsPersonalAccountRequestsAddRequestGoodStateEn {
	_StringsPersonalAccountRequestsAddRequestGoodStateRu._(this._root);

	@override final _StringsRu _root; // ignore: unused_field

	// Translations
	@override String get newState => 'Только новое';
	@override String get usedState => 'Можно б/у';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'app.name': return 'Short chain';
			case 'auth.header.welcome': return 'Добро пожаловать';
			case 'auth.header.info': return 'Введите адрес электронной почты и пароль';
			case 'auth.header.appBar.signIn': return 'Авторизация';
			case 'auth.header.appBar.signUp': return 'Регистрация';
			case 'auth.header.appBar.personalData': return 'Личные данные';
			case 'auth.footer.noAccount': return 'У вас нет учетной записи?';
			case 'auth.button.logIn': return 'Авторизоваться';
			case 'auth.button.logUp': return 'Зарегистрироваться';
			case 'profile.data.typeProfile.text': return 'Частные лица могут продавать новые или б/у товары, приобретенные в розничных магазинах для собственного использования.';
			case 'profile.data.typeProfile.label': return 'Тип профиля';
			case 'profile.data.person.text': return 'Эта информация являются публичной. Она видна другим пользователям сети Интернет.\nРазмещая свои персональные данные в данном разделе, вы раскрываете их неопределенному кругу лиц.';
			case 'profile.data.private.text': return 'Данные ниже видны только вам. Мы надежно храним эти данные и не показываем их другим пользователям.';
			case 'profile.button': return 'Сохранить изменения';
			case 'profile.salesman.documentsVerified': return 'Документы проверены';
			case 'user.person.name': return 'Имя';
			case 'user.person.lastName': return 'Фамилия';
			case 'user.person.middleName': return 'Отчество';
			case 'user.person.birth': return 'Дата рождения';
			case 'user.person.gender': return 'Пол';
			case 'user.email': return 'Email';
			case 'user.phone': return 'Телефон';
			case 'user.password': return 'Пароль';
			case 'enums.gender.label': return 'Пол';
			case 'enums.gender.male': return 'Мужской';
			case 'enums.gender.female': return 'Женский';
			case 'enums.sortType.popular': return 'Популярные';
			case 'enums.sortType.cheap': return 'Сначала дешевые';
			case 'enums.sortType.expensive': return 'Сначала дорогие';
			case 'enums.sortType.highRating': return 'Высокий рейтинг';
			case 'enums.typeProfile.private': return 'Частное лицо';
			case 'enums.typeProfile.legal': return 'Юридическое лицо';
			case 'enums.typeProfile.any': return 'Любое';
			case 'enums.deliveryType.self': return 'Самовывоз';
			case 'enums.deliveryType.delivery': return 'Доставка';
			case 'enums.deliveryType.any': return 'Самовывоз или доставка';
			case 'enums.paymentType.label': return 'Оплата';
			case 'enums.paymentType.card': return 'Картой';
			case 'enums.paymentType.cash': return 'Наличными';
			case 'enums.paymentType.online': return 'Онлайн';
			case 'enums.paymentType.any': return 'Любая';
			case 'enums.usedCondition.likeNew': return 'Как новый';
			case 'enums.usedCondition.great': return 'Отличный';
			case 'enums.usedCondition.good': return 'Хороший';
			case 'enums.usedCondition.any': return 'Не имеет значения';
			case 'enums.contactMethod.label': return 'Способ связи с вами';
			case 'enums.contactMethod.message': return 'Только сообщения';
			case 'enums.contactMethod.phone': return 'Только звонки';
			case 'enums.contactMethod.any': return 'Звонки и сообщения';
			case 'enums.reviewSortType.positive': return 'Сначала положительные';
			case 'enums.reviewSortType.negative': return 'Сначала отрицательные';
			case 'enums.reviewSortType.popular': return 'Популярные';
			case 'enums.offerType.common': return 'Обычная';
			case 'enums.offerType.possibleSwap': return 'Возможен обмен';
			case 'enums.offerType.onlySwap': return 'Только обмен';
			case 'enums.offerType.free': return 'Отдам бесплатно';
			case 'enums.paymentService.sbp': return 'Система быстрых платежей';
			case 'enums.paymentService.sberpay': return 'SberPay';
			case 'enums.paymentService.ym': return 'ЮMoney';
			case 'enums.paymentService.card': return 'Картой онлайн';
			case 'catalog.search.hint': return 'Искать товары и услуги';
			case 'catalog.item.auction': return 'Аукцион';
			case 'catalog.item.requests': return 'запросов';
			case 'catalog.item.offers': return 'предложений';
			case 'catalog.item.remains': return 'Осталось';
			case 'catalog.item.requestButton': return 'Предложить цену';
			case 'catalog.item.cartButton': return 'В корзину';
			case 'catalog.item.description': return 'Описание';
			case 'catalog.item.availability.label': return 'Наличие';
			case 'catalog.item.availability.some': return 'несколько';
			case 'catalog.item.contact.write': return 'Написать';
			case 'catalog.item.contact.call': return 'Позвонить';
			case 'catalog.item.info.added': return 'Добавлено';
			case 'catalog.item.info.views': return 'просмотров';
			case 'catalog.item.info.complain': return 'Пожаловаться на описание';
			case 'catalog.item.offerPrice.offerHeader': return 'Предложение цены';
			case 'catalog.item.offerPrice.offerText': return 'Укажите вашу цену и срок действия вашего предложения. Если продавец примет ваши условия, мы пришлем уведомление об этом.';
			case 'catalog.item.offerPrice.button': return 'Отправить предложение';
			case 'catalog.item.offerPrice.priceLabel': return 'Сумма';
			case 'catalog.item.offerPrice.timeLabel': return 'Срок предложения';
			case 'catalog.item.offerPrice.days': return 'дней';
			case 'catalog.item.reviews.reviewsLabel': return 'отзывов';
			case 'catalog.item.reviews.onlyPhotoFilter': return 'Только с фото';
			case 'catalog.filter.header': return 'Фильтр';
			case 'catalog.filter.onlyNew': return 'Только новые товары';
			case 'catalog.filter.onlyDelivery': return 'Только с доставкой';
			case 'catalog.characteristic.label': return 'Характеристики';
			case 'catalog.review.label': return 'Отзывы о товаре';
			case 'personalAccount.purchases.label': return 'Покупки';
			case 'personalAccount.purchases.myPriceOffers.title': return 'Мои предложения цены';
			case 'personalAccount.purchases.myPriceOffers.otherOffer': return ({required Object from, required Object to}) => 'Другие пользователи предложили от ${from} до ${to}';
			case 'personalAccount.purchases.myPriceOffers.youOfferTitle': return 'Ваше предложение';
			case 'personalAccount.purchases.myPriceOffers.youOfferPrice': return 'Вы предложили купить этот товар за';
			case 'personalAccount.purchases.myPriceOffers.youOfferTime': return 'Предложение действует';
			case 'personalAccount.purchases.myPriceOffers.acceptOffer': return 'Продавец принял ваше предложение';
			case 'personalAccount.purchases.myPriceOffers.rejectOffer': return 'Продавец отказался от предложения';
			case 'personalAccount.purchases.myPriceOffers.uploadButton': return 'Обновить';
			case 'personalAccount.purchases.myPriceOffers.buy': return 'Оформить покупку';
			case 'personalAccount.purchases.myPriceOffers.reject': return 'Отказаться';
			case 'personalAccount.purchases.offers': return 'Заказы';
			case 'personalAccount.purchases.purchasedItems': return 'Купленные товары';
			case 'personalAccount.purchases.favorites': return 'Избранное';
			case 'personalAccount.purchases.myReviews.title': return 'Мои отзывы и оценки';
			case 'personalAccount.purchases.myReviews.disadvants': return 'Недостатки';
			case 'personalAccount.purchases.myReviews.advants': return 'Преимущества';
			case 'personalAccount.purchases.myReviews.comment': return 'Комментарий';
			case 'personalAccount.purchases.myReviews.photo': return 'Фото';
			case 'personalAccount.sales.label': return 'Продажи';
			case 'personalAccount.sales.myGoods.title': return 'Мои объявления';
			case 'personalAccount.sales.myGoods.views': return 'просмотров';
			case 'personalAccount.sales.myGoods.expires': return ({required Object days}) => 'Истекает через ${days} дней';
			case 'personalAccount.sales.myGoods.messages': return 'сообщений';
			case 'personalAccount.sales.myGoods.addSale': return 'Добавить объявление';
			case 'personalAccount.sales.addItem.title': return 'Добавление объявления';
			case 'personalAccount.sales.addItem.goodState.newState': return 'Новое';
			case 'personalAccount.sales.addItem.goodState.usedState': return 'Б/у';
			case 'personalAccount.sales.addItem.name': return 'Название товара';
			case 'personalAccount.sales.addItem.nameInfo': return 'Из названия должно быть понятно, что конкретно вы хотите купить.';
			case 'personalAccount.sales.addItem.category': return 'Категория';
			case 'personalAccount.sales.addItem.categoryHint': return 'Выберите категорию';
			case 'personalAccount.sales.addItem.categoryInfo': return 'Выберите раздел каталога, в котором будет размещаться ваше объявление. Если не нашли подходящей категории, сообщите нам об этом.';
			case 'personalAccount.sales.addItem.categoryPopup': return 'Выберите раздел каталога, в котором будет размещаться ваше объявление. Если не нашли подходящей категории, сообщите нам об этом.';
			case 'personalAccount.sales.addItem.categorySearch': return 'Поиск по категориям';
			case 'personalAccount.sales.addItem.characteristics': return 'Характеристики';
			case 'personalAccount.sales.addItem.brand': return 'Бренд';
			case 'personalAccount.sales.addItem.imei': return 'IMEI';
			case 'personalAccount.sales.addItem.imeiInfo': return 'IMEI указан на обратной стороне устройства или на коробке';
			case 'personalAccount.sales.addItem.parametersTitle': return 'Параметры и описание';
			case 'personalAccount.sales.addItem.state': return 'Состояние';
			case 'personalAccount.sales.addItem.stateInfo': return 'Новым может считаться товар только в упаковке и ни разу не использованный.';
			case 'personalAccount.sales.addItem.descriptionTitle': return 'Описание объявления';
			case 'personalAccount.sales.addItem.descriptionInfo': return 'Не указывайте в описании телефон и e-mail — для этого есть отдельные поля.';
			case 'personalAccount.sales.addItem.usedCondition': return 'Состояние б/у';
			case 'personalAccount.sales.addItem.price': return 'Цена';
			case 'personalAccount.sales.addItem.sale': return 'Продажа';
			case 'personalAccount.sales.addItem.offersBelowPrice': return 'Не принимать предложения ниже указанной стоимости';
			case 'personalAccount.sales.addItem.severalPieces': return 'Несколько штук в наличии';
			case 'personalAccount.sales.addItem.severalPiecesInfo': return 'Покупатели увидят, что вы продаёте несколько штук, упаковок или других единиц товара — и смогут купить больше одной.';
			case 'personalAccount.sales.addItem.offerTime': return 'Срок объявления';
			case 'personalAccount.sales.addItem.renew': return 'Продлевать автоматически';
			case 'personalAccount.sales.addItem.photo': return 'Фото и видео';
			case 'personalAccount.sales.addItem.itemPhoto': return 'Фотографии товара';
			case 'personalAccount.sales.addItem.video': return 'Видео с YouTube или Rutube';
			case 'personalAccount.sales.addItem.place': return 'Место сделки';
			case 'personalAccount.sales.addItem.placeAddress': return 'Точное место сделки';
			case 'personalAccount.sales.addItem.deliveryAddressInfo': return 'Объявление смогут найти покупатели, которые ищут товары в конкретном радиусе или районе.\nТочный адрес не помешает вашему предложению появиться в результатах поиска по городу, региону или всей России.';
			case 'personalAccount.sales.addItem.contact': return 'Контакты';
			case 'personalAccount.sales.addItem.yourPhone': return 'Ваш телефон';
			case 'personalAccount.sales.addItem.contactType': return 'Способ связи с вами';
			case 'personalAccount.sales.addItem.post': return 'Опубликовать объявление';
			case 'personalAccount.sales.addItem.saveDraft': return 'Сохранить черновик';
			case 'personalAccount.sales.addItem.postInfo': return 'Вы публикуете объявление и данные в нём, чтобы их мог посмотреть кто угодно в интернете.\nВы также соглашаетесь с правилами Short Chain.';
			case 'personalAccount.sales.offersFromBuyers': return 'Предложения от покупателей';
			case 'personalAccount.sales.comments': return 'Комментарии';
			case 'personalAccount.sales.mySales': return 'Мои продажи';
			case 'personalAccount.sales.reviewsAboutMe': return 'Отзывы обо мне';
			case 'personalAccount.requests.label': return 'Запросы';
			case 'personalAccount.requests.myRequests.title': return 'Мои запросы';
			case 'personalAccount.requests.myRequests.views': return 'просмотров';
			case 'personalAccount.requests.myRequests.expires': return ({required Object days}) => 'Истекает через ${days} дней';
			case 'personalAccount.requests.myRequests.messages': return 'сообщений';
			case 'personalAccount.requests.myRequests.addRequest': return 'Новый запрос';
			case 'personalAccount.requests.myRequests.upTo': return 'до';
			case 'personalAccount.requests.addRequest.goodState.newState': return 'Только новое';
			case 'personalAccount.requests.addRequest.goodState.usedState': return 'Можно б/у';
			case 'personalAccount.requests.addRequest.addTitle': return 'Добавление запроса на покупку';
			case 'personalAccount.requests.addRequest.nameGood': return 'Название товара';
			case 'personalAccount.requests.addRequest.nameInfo': return 'Из названия должно быть понятно, что конкретно вы хотите купить.';
			case 'personalAccount.requests.addRequest.parametersTitle': return 'Параметры и описание';
			case 'personalAccount.requests.addRequest.state': return 'Состояние';
			case 'personalAccount.requests.addRequest.stateInfo': return 'Новым может считаться товар только в упаковке и ни разу не использованный.';
			case 'personalAccount.requests.addRequest.descriptionTitle': return 'Описание запроса';
			case 'personalAccount.requests.addRequest.descriptionInfo': return 'Не указывайте в описании телефон и e-mail — для этого есть отдельные поля.';
			case 'personalAccount.requests.addRequest.usedCondition': return 'Состояние б/у';
			case 'personalAccount.requests.addRequest.maxPrice': return 'Максимальная цена';
			case 'personalAccount.requests.addRequest.severalPieces': return 'Требуется несколько штук';
			case 'personalAccount.requests.addRequest.numberPieces': return 'Продавцы смогут предложить вам несколько единиц товара.';
			case 'personalAccount.requests.addRequest.requestTime': return 'Срок запроса';
			case 'personalAccount.requests.addRequest.renew': return 'Продлевать автоматически';
			case 'personalAccount.requests.addRequest.place': return 'Место сделки';
			case 'personalAccount.requests.addRequest.delivery': return 'Тип доставки';
			case 'personalAccount.requests.addRequest.deliveryAddressTitle': return 'Адрес доставки';
			case 'personalAccount.requests.addRequest.deliveryAddressInfo': return 'Объявление смогут найти покупатели, которые ищут товары в конкретном радиусе или районе.\nТочный адрес не помешает вашему предложению появиться в результатах поиска по городу, региону или всей России.';
			case 'personalAccount.requests.addRequest.contact': return 'Контакты';
			case 'personalAccount.requests.addRequest.yourPhone': return 'Ваш телефон';
			case 'personalAccount.requests.addRequest.contactType': return 'Способ связи с вами';
			case 'personalAccount.requests.addRequest.post': return 'Опубликовать объявление';
			case 'personalAccount.requests.addRequest.saveDraft': return 'Сохранить черновик';
			case 'personalAccount.requests.addRequest.postInfo': return 'Вы публикуете объявление и данные в нём, чтобы их мог посмотреть кто угодно в интернете.\nВы также соглашаетесь с правилами Short Chain.';
			case 'personalAccount.requests.answersForRequest': return 'Ответы на мои запросы';
			case 'personalAccount.requests.myAnswers': return 'Мои ответы';
			case 'personalAccount.requests.featuredQueries': return 'Избранные запросы';
			case 'personalAccount.account.label': return 'Аккаунт';
			case 'personalAccount.account.personalData': return 'Личные данные';
			case 'personalAccount.account.messages': return 'Сообщения';
			case 'personalAccount.account.myAddresses': return 'Мои адреса';
			case 'personalAccount.account.supportRequests': return 'Обращения в поддержку';
			case 'personalAccount.account.notificationSettings': return 'Настройки уведомлений';
			case 'personalAccount.account.logout': return 'Выйти из аккаунта';
			case 'cart.header': return 'Корзина';
			case 'cart.footerButton': return 'Перейти к оформлению';
			case 'cart.selectAll': return 'Выбрать все';
			case 'cart.deleteSelected': return 'Удалить выбранное';
			case 'cart.selectItems': return 'Выберете товары, которые хотите купить';
			case 'makingPurchase.title': return 'Оформление заказа';
			case 'makingPurchase.receiver': return 'Получатель';
			case 'makingPurchase.makePurchase': return 'Оформить покупку';
			case 'makingPurchase.makePurchaseInfo': return 'При оформлении покупки вы сможете указать способ оплаты и доставки товара.';
			case 'alert.unavailable.title': return 'Недоступен';
			case 'alert.unavailable.content': return 'Выбранный функционал пока недоступен.';
			case 'validation.IsValidEmail': return 'Неверный формат адреса электронной почты';
			case 'validation.IsValidPhone': return 'Неверный формат адреса номера телефона';
			case 'validation.NotBlank': return 'Должно быть не пустое значение';
			case 'validation.IsValidCardCvv': return 'Неверный формат CVV карты.';
			case 'validation.IsValidDateFormat': return 'Неверный формат даты';
			case 'validation.IsValidCardExpiry': return 'Срок действия карты истек';
			case 'validation.IsValidCardNumber': return 'Неверный формат номера карты';
			case 'utils.ok': return 'ОК';
			case 'utils.no': return 'Нет';
			case 'utils.address': return 'Адрес';
			case 'utils.openMap': return 'Открыть карту';
			case 'utils.active': return 'Активные';
			case 'utils.archive': return 'Архив';
			case 'utils.days': return 'дней';
			case 'utils.imageUploadInfo': return 'Вы можете загрузить 10 файлов с разрешением: jpg, jpeg, png, tiff и размером не более 10Мб каждый.';
			case 'utils.imageLoading': return 'Подождите пока загрузятся все изображения';
			case 'utils.items': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
				one: 'товар',
				few: 'товара',
				other: 'товаров',
			);
			case 'utils.discount': return 'Скидка';
			case 'utils.total': return 'Итого';
			case 'utils.failAuth': return 'Неверный логин или пароль';
			case 'currency.RUB': return '₽';
			case 'measureUnit.short.piece': return 'шт.';
			default: return null;
		}
	}
}

extension on _StringsRu {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'app.name': return 'Short chain';
			case 'auth.header.welcome': return 'Добро пожаловать';
			case 'auth.header.info': return 'Введите адрес электронной почты и пароль';
			case 'auth.header.appBar.signIn': return 'Авторизация';
			case 'auth.header.appBar.signUp': return 'Регистрация';
			case 'auth.header.appBar.personalData': return 'Личные данные';
			case 'auth.footer.noAccount': return 'У вас нет учетной записи?';
			case 'auth.button.logIn': return 'Авторизоваться';
			case 'auth.button.logUp': return 'Зарегистрироваться';
			case 'profile.data.typeProfile.text': return 'Частные лица могут продавать новые или б/у товары, приобретенные в розничных магазинах для собственного использования.';
			case 'profile.data.typeProfile.label': return 'Тип профиля';
			case 'profile.data.person.text': return 'Эта информация являются публичной. Она видна другим пользователям сети Интернет.\nРазмещая свои персональные данные в данном разделе, вы раскрываете их неопределенному кругу лиц.';
			case 'profile.data.private.text': return 'Данные ниже видны только вам. Мы надежно храним эти данные и не показываем их другим пользователям.';
			case 'profile.button': return 'Сохранить изменения';
			case 'profile.salesman.documentsVerified': return 'Документы проверены';
			case 'user.person.name': return 'Имя';
			case 'user.person.lastName': return 'Фамилия';
			case 'user.person.middleName': return 'Отчество';
			case 'user.person.birth': return 'Дата рождения';
			case 'user.person.gender': return 'Пол';
			case 'user.email': return 'Email';
			case 'user.phone': return 'Телефон';
			case 'user.password': return 'Пароль';
			case 'enums.gender.label': return 'Пол';
			case 'enums.gender.male': return 'Мужской';
			case 'enums.gender.female': return 'Женский';
			case 'enums.sortType.popular': return 'Популярные';
			case 'enums.sortType.cheap': return 'Сначала дешевые';
			case 'enums.sortType.expensive': return 'Сначала дорогие';
			case 'enums.sortType.highRating': return 'Высокий рейтинг';
			case 'enums.typeProfile.private': return 'Частное лицо';
			case 'enums.typeProfile.legal': return 'Юридическое лицо';
			case 'enums.typeProfile.any': return 'Любое';
			case 'enums.deliveryType.self': return 'Самовывоз';
			case 'enums.deliveryType.delivery': return 'Доставка';
			case 'enums.deliveryType.any': return 'Самовывоз или доставка';
			case 'enums.paymentType.label': return 'Оплата';
			case 'enums.paymentType.card': return 'Картой';
			case 'enums.paymentType.cash': return 'Наличными';
			case 'enums.paymentType.online': return 'Онлайн';
			case 'enums.paymentType.any': return 'Любая';
			case 'enums.usedCondition.likeNew': return 'Как новый';
			case 'enums.usedCondition.great': return 'Отличный';
			case 'enums.usedCondition.good': return 'Хороший';
			case 'enums.usedCondition.any': return 'Не имеет значения';
			case 'enums.contactMethod.label': return 'Способ связи с вами';
			case 'enums.contactMethod.message': return 'Только сообщения';
			case 'enums.contactMethod.phone': return 'Только звонки';
			case 'enums.contactMethod.any': return 'Звонки и сообщения';
			case 'enums.reviewSortType.positive': return 'Сначала положительные';
			case 'enums.reviewSortType.negative': return 'Сначала отрицательные';
			case 'enums.reviewSortType.popular': return 'Популярные';
			case 'enums.offerType.common': return 'Обычная';
			case 'enums.offerType.possibleSwap': return 'Возможен обмен';
			case 'enums.offerType.onlySwap': return 'Только обмен';
			case 'enums.offerType.free': return 'Отдам бесплатно';
			case 'enums.paymentService.sbp': return 'Система быстрых платежей';
			case 'enums.paymentService.sberpay': return 'SberPay';
			case 'enums.paymentService.ym': return 'ЮMoney';
			case 'enums.paymentService.card': return 'Картой онлайн';
			case 'catalog.search.hint': return 'Искать товары и услуги';
			case 'catalog.item.auction': return 'Аукцион';
			case 'catalog.item.requests': return 'запросов';
			case 'catalog.item.offers': return 'предложений';
			case 'catalog.item.remains': return 'Осталось';
			case 'catalog.item.requestButton': return 'Предложить цену';
			case 'catalog.item.cartButton': return 'В корзину';
			case 'catalog.item.description': return 'Описание';
			case 'catalog.item.availability.label': return 'Наличие';
			case 'catalog.item.availability.some': return 'несколько';
			case 'catalog.item.contact.write': return 'Написать';
			case 'catalog.item.contact.call': return 'Позвонить';
			case 'catalog.item.info.added': return 'Добавлено';
			case 'catalog.item.info.views': return 'просмотров';
			case 'catalog.item.info.complain': return 'Пожаловаться на описание';
			case 'catalog.item.offerPrice.offerHeader': return 'Предложение цены';
			case 'catalog.item.offerPrice.offerText': return 'Укажите вашу цену и срок действия вашего предложения. Если продавец примет ваши условия, мы пришлем уведомление об этом.';
			case 'catalog.item.offerPrice.button': return 'Отправить предложение';
			case 'catalog.item.offerPrice.priceLabel': return 'Сумма';
			case 'catalog.item.offerPrice.timeLabel': return 'Срок предложения';
			case 'catalog.item.offerPrice.days': return 'дней';
			case 'catalog.item.reviews.reviewsLabel': return 'отзывов';
			case 'catalog.item.reviews.onlyPhotoFilter': return 'Только с фото';
			case 'catalog.filter.header': return 'Фильтр';
			case 'catalog.filter.onlyNew': return 'Только новые товары';
			case 'catalog.filter.onlyDelivery': return 'Только с доставкой';
			case 'catalog.characteristic.label': return 'Характеристики';
			case 'catalog.review.label': return 'Отзывы о товаре';
			case 'personalAccount.purchases.label': return 'Покупки';
			case 'personalAccount.purchases.myPriceOffers.title': return 'Мои предложения цены';
			case 'personalAccount.purchases.myPriceOffers.otherOffer': return ({required Object from, required Object to}) => 'Другие пользователи предложили от ${from} до ${to}';
			case 'personalAccount.purchases.myPriceOffers.youOfferTitle': return 'Ваше предложение';
			case 'personalAccount.purchases.myPriceOffers.youOfferPrice': return 'Вы предложили купить этот товар за';
			case 'personalAccount.purchases.myPriceOffers.youOfferTime': return 'Предложение действует';
			case 'personalAccount.purchases.myPriceOffers.acceptOffer': return 'Продавец принял ваше предложение';
			case 'personalAccount.purchases.myPriceOffers.rejectOffer': return 'Продавец отказался от предложения';
			case 'personalAccount.purchases.myPriceOffers.uploadButton': return 'Обновить';
			case 'personalAccount.purchases.myPriceOffers.buy': return 'Оформить покупку';
			case 'personalAccount.purchases.myPriceOffers.reject': return 'Отказаться';
			case 'personalAccount.purchases.offers': return 'Заказы';
			case 'personalAccount.purchases.purchasedItems': return 'Купленные товары';
			case 'personalAccount.purchases.favorites': return 'Избранное';
			case 'personalAccount.purchases.myReviews.title': return 'Мои отзывы и оценки';
			case 'personalAccount.purchases.myReviews.disadvants': return 'Недостатки';
			case 'personalAccount.purchases.myReviews.advants': return 'Преимущества';
			case 'personalAccount.purchases.myReviews.comment': return 'Комментарий';
			case 'personalAccount.purchases.myReviews.photo': return 'Фото';
			case 'personalAccount.sales.label': return 'Продажи';
			case 'personalAccount.sales.myGoods.title': return 'Мои объявления';
			case 'personalAccount.sales.myGoods.views': return 'просмотров';
			case 'personalAccount.sales.myGoods.expires': return ({required Object days}) => 'Истекает через ${days} дней';
			case 'personalAccount.sales.myGoods.messages': return 'сообщений';
			case 'personalAccount.sales.myGoods.addSale': return 'Добавить объявление';
			case 'personalAccount.sales.addItem.title': return 'Добавление объявления';
			case 'personalAccount.sales.addItem.goodState.newState': return 'Новое';
			case 'personalAccount.sales.addItem.goodState.usedState': return 'Б/у';
			case 'personalAccount.sales.addItem.name': return 'Название товара';
			case 'personalAccount.sales.addItem.nameInfo': return 'Из названия должно быть понятно, что конкретно вы хотите купить.';
			case 'personalAccount.sales.addItem.category': return 'Категория';
			case 'personalAccount.sales.addItem.categoryHint': return 'Выберите категорию';
			case 'personalAccount.sales.addItem.categoryInfo': return 'Выберите раздел каталога, в котором будет размещаться ваше объявление. Если не нашли подходящей категории, сообщите нам об этом.';
			case 'personalAccount.sales.addItem.categoryPopup': return 'Выберите раздел каталога, в котором будет размещаться ваше объявление. Если не нашли подходящей категории, сообщите нам об этом.';
			case 'personalAccount.sales.addItem.categorySearch': return 'Поиск по категориям';
			case 'personalAccount.sales.addItem.characteristics': return 'Характеристики';
			case 'personalAccount.sales.addItem.brand': return 'Бренд';
			case 'personalAccount.sales.addItem.imei': return 'IMEI';
			case 'personalAccount.sales.addItem.imeiInfo': return 'IMEI указан на обратной стороне устройства или на коробке';
			case 'personalAccount.sales.addItem.parametersTitle': return 'Параметры и описание';
			case 'personalAccount.sales.addItem.state': return 'Состояние';
			case 'personalAccount.sales.addItem.stateInfo': return 'Новым может считаться товар только в упаковке и ни разу не использованный.';
			case 'personalAccount.sales.addItem.descriptionTitle': return 'Описание объявления';
			case 'personalAccount.sales.addItem.descriptionInfo': return 'Не указывайте в описании телефон и e-mail — для этого есть отдельные поля.';
			case 'personalAccount.sales.addItem.usedCondition': return 'Состояние б/у';
			case 'personalAccount.sales.addItem.price': return 'Цена';
			case 'personalAccount.sales.addItem.sale': return 'Продажа';
			case 'personalAccount.sales.addItem.offersBelowPrice': return 'Не принимать предложения ниже указанной стоимости';
			case 'personalAccount.sales.addItem.severalPieces': return 'Несколько штук в наличии';
			case 'personalAccount.sales.addItem.severalPiecesInfo': return 'Покупатели увидят, что вы продаёте несколько штук, упаковок или других единиц товара — и смогут купить больше одной.';
			case 'personalAccount.sales.addItem.offerTime': return 'Срок объявления';
			case 'personalAccount.sales.addItem.renew': return 'Продлевать автоматически';
			case 'personalAccount.sales.addItem.photo': return 'Фото и видео';
			case 'personalAccount.sales.addItem.itemPhoto': return 'Фотографии товара';
			case 'personalAccount.sales.addItem.video': return 'Видео с YouTube или Rutube';
			case 'personalAccount.sales.addItem.place': return 'Место сделки';
			case 'personalAccount.sales.addItem.placeAddress': return 'Точное место сделки';
			case 'personalAccount.sales.addItem.deliveryAddressInfo': return 'Объявление смогут найти покупатели, которые ищут товары в конкретном радиусе или районе.\nТочный адрес не помешает вашему предложению появиться в результатах поиска по городу, региону или всей России.';
			case 'personalAccount.sales.addItem.contact': return 'Контакты';
			case 'personalAccount.sales.addItem.yourPhone': return 'Ваш телефон';
			case 'personalAccount.sales.addItem.contactType': return 'Способ связи с вами';
			case 'personalAccount.sales.addItem.post': return 'Опубликовать объявление';
			case 'personalAccount.sales.addItem.saveDraft': return 'Сохранить черновик';
			case 'personalAccount.sales.addItem.postInfo': return 'Вы публикуете объявление и данные в нём, чтобы их мог посмотреть кто угодно в интернете.\nВы также соглашаетесь с правилами Short Chain.';
			case 'personalAccount.sales.offersFromBuyers': return 'Предложения от покупателей';
			case 'personalAccount.sales.comments': return 'Комментарии';
			case 'personalAccount.sales.mySales': return 'Мои продажи';
			case 'personalAccount.sales.reviewsAboutMe': return 'Отзывы обо мне';
			case 'personalAccount.requests.label': return 'Запросы';
			case 'personalAccount.requests.myRequests.title': return 'Мои запросы';
			case 'personalAccount.requests.myRequests.views': return 'просмотров';
			case 'personalAccount.requests.myRequests.expires': return ({required Object days}) => 'Истекает через ${days} дней';
			case 'personalAccount.requests.myRequests.messages': return 'сообщений';
			case 'personalAccount.requests.myRequests.addRequest': return 'Новый запрос';
			case 'personalAccount.requests.myRequests.upTo': return 'до';
			case 'personalAccount.requests.addRequest.goodState.newState': return 'Только новое';
			case 'personalAccount.requests.addRequest.goodState.usedState': return 'Можно б/у';
			case 'personalAccount.requests.addRequest.addTitle': return 'Добавление запроса на покупку';
			case 'personalAccount.requests.addRequest.nameGood': return 'Название товара';
			case 'personalAccount.requests.addRequest.nameInfo': return 'Из названия должно быть понятно, что конкретно вы хотите купить.';
			case 'personalAccount.requests.addRequest.parametersTitle': return 'Параметры и описание';
			case 'personalAccount.requests.addRequest.state': return 'Состояние';
			case 'personalAccount.requests.addRequest.stateInfo': return 'Новым может считаться товар только в упаковке и ни разу не использованный.';
			case 'personalAccount.requests.addRequest.descriptionTitle': return 'Описание запроса';
			case 'personalAccount.requests.addRequest.descriptionInfo': return 'Не указывайте в описании телефон и e-mail — для этого есть отдельные поля.';
			case 'personalAccount.requests.addRequest.usedCondition': return 'Состояние б/у';
			case 'personalAccount.requests.addRequest.maxPrice': return 'Максимальная цена';
			case 'personalAccount.requests.addRequest.severalPieces': return 'Требуется несколько штук';
			case 'personalAccount.requests.addRequest.numberPieces': return 'Продавцы смогут предложить вам несколько единиц товара.';
			case 'personalAccount.requests.addRequest.requestTime': return 'Срок запроса';
			case 'personalAccount.requests.addRequest.renew': return 'Продлевать автоматически';
			case 'personalAccount.requests.addRequest.place': return 'Место сделки';
			case 'personalAccount.requests.addRequest.delivery': return 'Тип доставки';
			case 'personalAccount.requests.addRequest.deliveryAddressTitle': return 'Адрес доставки';
			case 'personalAccount.requests.addRequest.deliveryAddressInfo': return 'Объявление смогут найти покупатели, которые ищут товары в конкретном радиусе или районе.\nТочный адрес не помешает вашему предложению появиться в результатах поиска по городу, региону или всей России.';
			case 'personalAccount.requests.addRequest.contact': return 'Контакты';
			case 'personalAccount.requests.addRequest.yourPhone': return 'Ваш телефон';
			case 'personalAccount.requests.addRequest.contactType': return 'Способ связи с вами';
			case 'personalAccount.requests.addRequest.post': return 'Опубликовать объявление';
			case 'personalAccount.requests.addRequest.saveDraft': return 'Сохранить черновик';
			case 'personalAccount.requests.addRequest.postInfo': return 'Вы публикуете объявление и данные в нём, чтобы их мог посмотреть кто угодно в интернете.\nВы также соглашаетесь с правилами Short Chain.';
			case 'personalAccount.requests.answersForRequest': return 'Ответы на мои запросы';
			case 'personalAccount.requests.myAnswers': return 'Мои ответы';
			case 'personalAccount.requests.featuredQueries': return 'Избранные запросы';
			case 'personalAccount.account.label': return 'Аккаунт';
			case 'personalAccount.account.personalData': return 'Личные данные';
			case 'personalAccount.account.messages': return 'Сообщения';
			case 'personalAccount.account.myAddresses': return 'Мои адреса';
			case 'personalAccount.account.supportRequests': return 'Обращения в поддержку';
			case 'personalAccount.account.notificationSettings': return 'Настройки уведомлений';
			case 'personalAccount.account.logout': return 'Выйти из аккаунта';
			case 'cart.header': return 'Корзина';
			case 'cart.footerButton': return 'Перейти к оформлению';
			case 'cart.selectAll': return 'Выбрать все';
			case 'cart.deleteSelected': return 'Удалить выбранное';
			case 'cart.selectItems': return 'Выберете товары, которые хотите купить';
			case 'makingPurchase.title': return 'Оформление заказа';
			case 'makingPurchase.receiver': return 'Получатель';
			case 'makingPurchase.makePurchase': return 'Оформить покупку';
			case 'makingPurchase.makePurchaseInfo': return 'При оформлении покупки вы сможете указать способ оплаты и доставки товара.';
			case 'alert.unavailable.title': return 'Недоступен';
			case 'alert.unavailable.content': return 'Выбранный функционал пока недоступен.';
			case 'validation.IsValidEmail': return 'Неверный формат адреса электронной почты';
			case 'validation.IsValidPhone': return 'Неверный формат адреса номера телефона';
			case 'validation.NotBlank': return 'Должно быть не пустое значение';
			case 'validation.IsValidCardCvv': return 'Неверный формат CVV карты.';
			case 'validation.IsValidDateFormat': return 'Неверный формат даты';
			case 'validation.IsValidCardExpiry': return 'Срок действия карты истек';
			case 'validation.IsValidCardNumber': return 'Неверный формат номера карты';
			case 'utils.ok': return 'ОК';
			case 'utils.no': return 'Нет';
			case 'utils.address': return 'Адрес';
			case 'utils.openMap': return 'Открыть карту';
			case 'utils.active': return 'Активные';
			case 'utils.archive': return 'Архив';
			case 'utils.days': return 'дней';
			case 'utils.imageUploadInfo': return 'Вы можете загрузить 10 файлов с разрешением: jpg, jpeg, png, tiff и размером не более 10Мб каждый.';
			case 'utils.imageLoading': return 'Подождите пока загрузятся все изображения';
			case 'utils.items': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
				one: 'товар',
				few: 'товара',
				other: 'товаров',
			);
			case 'utils.discount': return 'Скидка';
			case 'utils.total': return 'Итого';
			case 'utils.failAuth': return 'Неверный логин или пароль';
			case 'currency.RUB': return '₽';
			case 'measureUnit.short.piece': return 'шт.';
			default: return null;
		}
	}
}
