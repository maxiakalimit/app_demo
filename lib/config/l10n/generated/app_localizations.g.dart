import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.g.dart';
import 'app_localizations_ru.g.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.g.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru')
  ];

  /// No description provided for @scaffoldClearBtn.
  ///
  /// In ru, this message translates to:
  /// **'Очистить'**
  String get scaffoldClearBtn;

  /// No description provided for @baseCancelBtnTitle.
  ///
  /// In ru, this message translates to:
  /// **'Отменить'**
  String get baseCancelBtnTitle;

  /// No description provided for @splashTitle.
  ///
  /// In ru, this message translates to:
  /// **''**
  String get splashTitle;

  /// No description provided for @onboardingFinalBtn.
  ///
  /// In ru, this message translates to:
  /// **'Войти или зарегистрироваться'**
  String get onboardingFinalBtn;

  /// No description provided for @onboardingSkipBtn.
  ///
  /// In ru, this message translates to:
  /// **'Не сейчас'**
  String get onboardingSkipBtn;

  /// No description provided for @loginTitle.
  ///
  /// In ru, this message translates to:
  /// **'Войти или зарегистрироваться'**
  String get loginTitle;

  /// No description provided for @loginDesc.
  ///
  /// In ru, this message translates to:
  /// **'Мы отправим на ваш номер СМС с кодом подтверждения'**
  String get loginDesc;

  /// No description provided for @loginBtnCta.
  ///
  /// In ru, this message translates to:
  /// **'Получить код'**
  String get loginBtnCta;

  /// No description provided for @loginLegalDesc1.
  ///
  /// In ru, this message translates to:
  /// **'When you log in, you accept the '**
  String get loginLegalDesc1;

  /// No description provided for @loginLegalDesc2.
  ///
  /// In ru, this message translates to:
  /// **'User agreement'**
  String get loginLegalDesc2;

  /// No description provided for @loginLegalDesc3.
  ///
  /// In ru, this message translates to:
  /// **'and the '**
  String get loginLegalDesc3;

  /// No description provided for @loginLegalDesc4.
  ///
  /// In ru, this message translates to:
  /// **'Terms of the offer'**
  String get loginLegalDesc4;

  /// No description provided for @verifyTitle.
  ///
  /// In ru, this message translates to:
  /// **'Код подтверждения'**
  String get verifyTitle;

  /// No description provided for @verifyDescPhone.
  ///
  /// In ru, this message translates to:
  /// **'Отправили СМС на {phone}'**
  String verifyDescPhone(String phone);

  /// No description provided for @verifyDescEmail.
  ///
  /// In ru, this message translates to:
  /// **'Отправили письмо на {email}'**
  String verifyDescEmail(String email);

  /// No description provided for @verifyTimer.
  ///
  /// In ru, this message translates to:
  /// **'Отправить код повторно\nможно через {timer}'**
  String verifyTimer(String timer);

  /// No description provided for @verifyBtnResendCode.
  ///
  /// In ru, this message translates to:
  /// **'Отправить повторно'**
  String get verifyBtnResendCode;

  /// No description provided for @supportContainerTitle.
  ///
  /// In ru, this message translates to:
  /// **'Support'**
  String get supportContainerTitle;

  /// No description provided for @supportDesc.
  ///
  /// In ru, this message translates to:
  /// **'Choose a convenient way to communicate'**
  String get supportDesc;

  /// No description provided for @supportWhatsapp.
  ///
  /// In ru, this message translates to:
  /// **'WhatsApp'**
  String get supportWhatsapp;

  /// No description provided for @supportBtn.
  ///
  /// In ru, this message translates to:
  /// **'Написать в поддержку'**
  String get supportBtn;

  /// No description provided for @homeCheckAll.
  ///
  /// In ru, this message translates to:
  /// **'Смотреть все'**
  String get homeCheckAll;

  /// No description provided for @profileEditBtn.
  ///
  /// In ru, this message translates to:
  /// **'Профиль'**
  String get profileEditBtn;

  /// No description provided for @profileLoginContainerTitle.
  ///
  /// In ru, this message translates to:
  /// **'Войдите или\nзарегистрируйтесь'**
  String get profileLoginContainerTitle;

  /// No description provided for @profileLoginContainerDesc.
  ///
  /// In ru, this message translates to:
  /// **'Чтобы арендовать вещи, отслеживать заказы и копить бонусные баллы'**
  String get profileLoginContainerDesc;

  /// No description provided for @profileLoginContainerBtnLogin.
  ///
  /// In ru, this message translates to:
  /// **'Войти'**
  String get profileLoginContainerBtnLogin;

  /// No description provided for @profileLogoutBtn.
  ///
  /// In ru, this message translates to:
  /// **'Выйти'**
  String get profileLogoutBtn;

  /// No description provided for @profileLogoutRequestTitle.
  ///
  /// In ru, this message translates to:
  /// **'Confirmation'**
  String get profileLogoutRequestTitle;

  /// No description provided for @profileLogoutRequestDesc.
  ///
  /// In ru, this message translates to:
  /// **'Are you sure want to sign out?'**
  String get profileLogoutRequestDesc;

  /// No description provided for @profileLogoutRequestCloseBtn.
  ///
  /// In ru, this message translates to:
  /// **'Cancel'**
  String get profileLogoutRequestCloseBtn;

  /// No description provided for @profileLogoutRequestConfirmBtn.
  ///
  /// In ru, this message translates to:
  /// **'Sign Out'**
  String get profileLogoutRequestConfirmBtn;

  /// No description provided for @profileDeleteProfileBtn.
  ///
  /// In ru, this message translates to:
  /// **'Удалить профиль'**
  String get profileDeleteProfileBtn;

  /// No description provided for @profileDeleteProfileFirstStageTitle.
  ///
  /// In ru, this message translates to:
  /// **'Delete the account?'**
  String get profileDeleteProfileFirstStageTitle;

  /// No description provided for @profileDeleteProfileFirstStageDesc.
  ///
  /// In ru, this message translates to:
  /// **'You can request account deletion. By doing so you will no longer be able to access your account.'**
  String get profileDeleteProfileFirstStageDesc;

  /// No description provided for @profileDeleteProfileFirstStageCloseBtn.
  ///
  /// In ru, this message translates to:
  /// **'Cancel'**
  String get profileDeleteProfileFirstStageCloseBtn;

  /// No description provided for @profileDeleteProfileFirstStageCtaBtn.
  ///
  /// In ru, this message translates to:
  /// **'Confirm'**
  String get profileDeleteProfileFirstStageCtaBtn;

  /// No description provided for @profileDeleteProfileFinalStageTitle.
  ///
  /// In ru, this message translates to:
  /// **'Are you sure?'**
  String get profileDeleteProfileFinalStageTitle;

  /// No description provided for @profileDeleteProfileFinalStageDesc.
  ///
  /// In ru, this message translates to:
  /// **'This cannot be undone'**
  String get profileDeleteProfileFinalStageDesc;

  /// No description provided for @profileDeleteProfileFinalStageCloseBtn.
  ///
  /// In ru, this message translates to:
  /// **'Cancel'**
  String get profileDeleteProfileFinalStageCloseBtn;

  /// No description provided for @profileDeleteProfileFinalStageCtaBtn.
  ///
  /// In ru, this message translates to:
  /// **'Delete account'**
  String get profileDeleteProfileFinalStageCtaBtn;

  /// No description provided for @profileFaqTitle.
  ///
  /// In ru, this message translates to:
  /// **'Помощь'**
  String get profileFaqTitle;

  /// No description provided for @profileActionCallTitle.
  ///
  /// In ru, this message translates to:
  /// **'Позвонить'**
  String get profileActionCallTitle;

  /// No description provided for @profileActionChatTitle.
  ///
  /// In ru, this message translates to:
  /// **'Написать в чат'**
  String get profileActionChatTitle;

  /// No description provided for @profileEditScreenTitle.
  ///
  /// In ru, this message translates to:
  /// **'Профиль'**
  String get profileEditScreenTitle;

  /// No description provided for @profileEditScreenNameInputLabel.
  ///
  /// In ru, this message translates to:
  /// **'Имя'**
  String get profileEditScreenNameInputLabel;

  /// No description provided for @profileEditScreenEmailInputLabel.
  ///
  /// In ru, this message translates to:
  /// **'Email'**
  String get profileEditScreenEmailInputLabel;

  /// No description provided for @profileEditScreenPhoneInputLabel.
  ///
  /// In ru, this message translates to:
  /// **'Телефон'**
  String get profileEditScreenPhoneInputLabel;

  /// No description provided for @profileEditScreenModalSupportDesc.
  ///
  /// In ru, this message translates to:
  /// **'Обратитесь в службу поддержки для обновления данных'**
  String get profileEditScreenModalSupportDesc;

  /// No description provided for @favouriteTitle.
  ///
  /// In ru, this message translates to:
  /// **'Избранное'**
  String get favouriteTitle;

  /// No description provided for @favouriteEmptyTitle.
  ///
  /// In ru, this message translates to:
  /// **'В избранном\nпока ничего нет...'**
  String get favouriteEmptyTitle;

  /// No description provided for @favouriteEmptyDesc.
  ///
  /// In ru, this message translates to:
  /// **'Добавляйте сюда понравившиеся вещи. Авторизуйтесь, чтобы ничего не потерять'**
  String get favouriteEmptyDesc;

  /// No description provided for @favouriteEmptyCatalogTitle.
  ///
  /// In ru, this message translates to:
  /// **'Новинки'**
  String get favouriteEmptyCatalogTitle;

  /// No description provided for @favouriteEmptyBtn.
  ///
  /// In ru, this message translates to:
  /// **'Перейти в каталог'**
  String get favouriteEmptyBtn;

  /// No description provided for @firstScoringOfferTitle.
  ///
  /// In ru, this message translates to:
  /// **'Подтвердить профиль'**
  String get firstScoringOfferTitle;

  /// No description provided for @firstScoringOfferDesc.
  ///
  /// In ru, this message translates to:
  /// **'Потребуются паспорт и селфи.\nЗаймет 5-7 минут и это безопасно.\nМы не храним и не публикуем фото паспортов и селфи.\n\nИнформация обрабатывается сервисом Cyberity в соответствии с ФЗ РФ N152 «О персональных данных»'**
  String get firstScoringOfferDesc;

  /// No description provided for @firstScoringOfferBtnCta.
  ///
  /// In ru, this message translates to:
  /// **'Пройти проверку'**
  String get firstScoringOfferBtnCta;

  /// No description provided for @firstScoringOfferBtnSkip.
  ///
  /// In ru, this message translates to:
  /// **'Не сейчас'**
  String get firstScoringOfferBtnSkip;

  /// No description provided for @scoringNotificationSuccessTitle.
  ///
  /// In ru, this message translates to:
  /// **'Ваш профиль проверен'**
  String get scoringNotificationSuccessTitle;

  /// No description provided for @scoringNotificationSuccessDesc.
  ///
  /// In ru, this message translates to:
  /// **'Теперь вы можете арендовать предметы из каталога'**
  String get scoringNotificationSuccessDesc;

  /// No description provided for @scoringNotificationRejectedTitle.
  ///
  /// In ru, this message translates to:
  /// **'Проверка не удалась'**
  String get scoringNotificationRejectedTitle;

  /// No description provided for @scoringNotificationRejectedDesc.
  ///
  /// In ru, this message translates to:
  /// **'Попробуйте отправить документы еще раз'**
  String get scoringNotificationRejectedDesc;

  /// No description provided for @bonusesTitle.
  ///
  /// In ru, this message translates to:
  /// **'Бонусные баллы'**
  String get bonusesTitle;

  /// No description provided for @bonusesDiscount.
  ///
  /// In ru, this message translates to:
  /// **'{percent}% кэшбек'**
  String bonusesDiscount(String percent);

  /// No description provided for @bonusesNextLevel.
  ///
  /// In ru, this message translates to:
  /// **'{total} {word} до следующего уровня'**
  String bonusesNextLevel(String total, String word);

  /// No description provided for @bonusesMore.
  ///
  /// In ru, this message translates to:
  /// **'Подробнее'**
  String get bonusesMore;

  /// No description provided for @bonusesFaq.
  ///
  /// In ru, this message translates to:
  /// **'Как копятся баллы'**
  String get bonusesFaq;

  /// No description provided for @bonusesCashback.
  ///
  /// In ru, this message translates to:
  /// **'{percent}% cashback'**
  String bonusesCashback(String percent);

  /// No description provided for @bonusesEmptyTitle.
  ///
  /// In ru, this message translates to:
  /// **'У вас пока\nнет баллов...'**
  String get bonusesEmptyTitle;

  /// No description provided for @bonusesEmptyDescription.
  ///
  /// In ru, this message translates to:
  /// **'Вы можете оплатить баллами\nдо 50% от суммы заказа. Баллы нельзя  использовать вместе со скидками\nи акциями. 1 балл = 1 ₽'**
  String get bonusesEmptyDescription;

  /// No description provided for @catalogSearchHint.
  ///
  /// In ru, this message translates to:
  /// **'Найти в каталоге'**
  String get catalogSearchHint;

  /// No description provided for @catalogSearchPageTitle.
  ///
  /// In ru, this message translates to:
  /// **'Результаты поиска'**
  String get catalogSearchPageTitle;

  /// No description provided for @catalogSearchResultHintTitle.
  ///
  /// In ru, this message translates to:
  /// **'Популярные бренды'**
  String get catalogSearchResultHintTitle;

  /// No description provided for @catalogSearchClearHistoryBtn.
  ///
  /// In ru, this message translates to:
  /// **'Очистить историю'**
  String get catalogSearchClearHistoryBtn;

  /// No description provided for @catalogSearchPopularBrandsTitle.
  ///
  /// In ru, this message translates to:
  /// **'Популярные бренды'**
  String get catalogSearchPopularBrandsTitle;

  /// No description provided for @catalogMenuBrandItem.
  ///
  /// In ru, this message translates to:
  /// **'Бренды'**
  String get catalogMenuBrandItem;

  /// No description provided for @filtersTypeTitle.
  ///
  /// In ru, this message translates to:
  /// **'Rent or buy out'**
  String get filtersTypeTitle;

  /// No description provided for @filtersTypeItemAll.
  ///
  /// In ru, this message translates to:
  /// **'All'**
  String get filtersTypeItemAll;

  /// No description provided for @filtersTypeItemRent.
  ///
  /// In ru, this message translates to:
  /// **'Rent only'**
  String get filtersTypeItemRent;

  /// No description provided for @filtersTypeItemBuy.
  ///
  /// In ru, this message translates to:
  /// **'Buy only'**
  String get filtersTypeItemBuy;

  /// No description provided for @brandTitle.
  ///
  /// In ru, this message translates to:
  /// **'Бренды'**
  String get brandTitle;

  /// No description provided for @brandSearchHint.
  ///
  /// In ru, this message translates to:
  /// **'Найти бренд'**
  String get brandSearchHint;

  /// No description provided for @brandEmptyTitle.
  ///
  /// In ru, this message translates to:
  /// **'Ничего не найдено'**
  String get brandEmptyTitle;

  /// No description provided for @deliveryAddressTitle.
  ///
  /// In ru, this message translates to:
  /// **'Мои адреса'**
  String get deliveryAddressTitle;

  /// No description provided for @deliveryAddressEmptyDesc.
  ///
  /// In ru, this message translates to:
  /// **'Вы пока не добавляли адресов'**
  String get deliveryAddressEmptyDesc;

  /// No description provided for @deliveryAddressBtnAdd.
  ///
  /// In ru, this message translates to:
  /// **'Новый адрес'**
  String get deliveryAddressBtnAdd;

  /// No description provided for @deliveryAddressEditFormTitle.
  ///
  /// In ru, this message translates to:
  /// **'Редактировать адрес'**
  String get deliveryAddressEditFormTitle;

  /// No description provided for @deliveryAddressAddFormTitle.
  ///
  /// In ru, this message translates to:
  /// **'Добавить адрес'**
  String get deliveryAddressAddFormTitle;

  /// No description provided for @paymentMethodsTitle.
  ///
  /// In ru, this message translates to:
  /// **'Мои карты'**
  String get paymentMethodsTitle;

  /// No description provided for @paymentMethodsEmptyDesc.
  ///
  /// In ru, this message translates to:
  /// **'Вы можете добавить новую карту здесь или при оформлении заказа — это быстро и безопасно. Без добавления карты не получится арендовать или купить вещи'**
  String get paymentMethodsEmptyDesc;

  /// No description provided for @paymentMethodsBtnAdd.
  ///
  /// In ru, this message translates to:
  /// **'Новая карта'**
  String get paymentMethodsBtnAdd;

  /// No description provided for @paymentMethodsAddDesc.
  ///
  /// In ru, this message translates to:
  /// **'Чтобы проверить вашу карту,\nмы спишем и сразу вернем 1 ₽'**
  String get paymentMethodsAddDesc;

  /// No description provided for @paymentMethodsAddSecureAlert.
  ///
  /// In ru, this message translates to:
  /// **'Безопасность платежей подтверждена'**
  String get paymentMethodsAddSecureAlert;

  /// No description provided for @paymentMethodsAddBtnSave.
  ///
  /// In ru, this message translates to:
  /// **'Добавить'**
  String get paymentMethodsAddBtnSave;

  /// No description provided for @paymentMethodsAddBtnDone.
  ///
  /// In ru, this message translates to:
  /// **'Готово'**
  String get paymentMethodsAddBtnDone;

  /// No description provided for @paymentMethodsAddBtnDelete.
  ///
  /// In ru, this message translates to:
  /// **'Удалить карту'**
  String get paymentMethodsAddBtnDelete;

  /// No description provided for @paymentMethodsAddMakeDefaultBtn.
  ///
  /// In ru, this message translates to:
  /// **'Make Default'**
  String get paymentMethodsAddMakeDefaultBtn;

  /// No description provided for @paymentMethodsAddCancelBtn.
  ///
  /// In ru, this message translates to:
  /// **'CANCEL'**
  String get paymentMethodsAddCancelBtn;

  /// No description provided for @paymentMethodsAddTitle.
  ///
  /// In ru, this message translates to:
  /// **'Новая карта'**
  String get paymentMethodsAddTitle;

  /// No description provided for @paymentMethodsActiveCard.
  ///
  /// In ru, this message translates to:
  /// **'Главная'**
  String get paymentMethodsActiveCard;

  /// No description provided for @paymentMethodsHistoryTitle.
  ///
  /// In ru, this message translates to:
  /// **'История операций'**
  String get paymentMethodsHistoryTitle;

  /// No description provided for @paymentMethodsFormNumber.
  ///
  /// In ru, this message translates to:
  /// **'Номер карты'**
  String get paymentMethodsFormNumber;

  /// No description provided for @paymentMethodsFormExpiryDate.
  ///
  /// In ru, this message translates to:
  /// **'Дейтсвует до (мм/гг)'**
  String get paymentMethodsFormExpiryDate;

  /// No description provided for @paymentMethodsFormCvv.
  ///
  /// In ru, this message translates to:
  /// **'CVС/CVV'**
  String get paymentMethodsFormCvv;

  /// No description provided for @paymentMethodsFormNameOnCard.
  ///
  /// In ru, this message translates to:
  /// **'Имя на карте'**
  String get paymentMethodsFormNameOnCard;

  /// No description provided for @paymentMethodsFormEmail.
  ///
  /// In ru, this message translates to:
  /// **'Email'**
  String get paymentMethodsFormEmail;

  /// No description provided for @paymentMethodsDeleteAlertTitle.
  ///
  /// In ru, this message translates to:
  /// **'Delete the card?'**
  String get paymentMethodsDeleteAlertTitle;

  /// No description provided for @paymentMethodsDeleteAlertDesc.
  ///
  /// In ru, this message translates to:
  /// **'The card will be removed from your profile. For new orders, you will need to link the card again or add another one'**
  String get paymentMethodsDeleteAlertDesc;

  /// No description provided for @paymentMethodsDeleteAlertCloseBtn.
  ///
  /// In ru, this message translates to:
  /// **'Close'**
  String get paymentMethodsDeleteAlertCloseBtn;

  /// No description provided for @paymentMethodsDeleteAlertDeleteBtn.
  ///
  /// In ru, this message translates to:
  /// **'Delete'**
  String get paymentMethodsDeleteAlertDeleteBtn;

  /// No description provided for @cardDeleteDialogTitle.
  ///
  /// In ru, this message translates to:
  /// **'Отвязать карту?'**
  String get cardDeleteDialogTitle;

  /// No description provided for @cardDeleteDialogDesc.
  ///
  /// In ru, this message translates to:
  /// **'Карта будет удалена из вашего профиля. Для новых заказов потребуется привязать карту заново или добавить другую'**
  String get cardDeleteDialogDesc;

  /// No description provided for @cardDeleteDialogCloseBtn.
  ///
  /// In ru, this message translates to:
  /// **'Отменить'**
  String get cardDeleteDialogCloseBtn;

  /// No description provided for @cardDeleteDialogCtaBtn.
  ///
  /// In ru, this message translates to:
  /// **'Подтвердить'**
  String get cardDeleteDialogCtaBtn;

  /// No description provided for @permissionRequestTitle.
  ///
  /// In ru, this message translates to:
  /// **'Интересы и оповещения'**
  String get permissionRequestTitle;

  /// No description provided for @permissionRequestDesc.
  ///
  /// In ru, this message translates to:
  /// **'Чтобы вам было удобно пользоваться приложением, предоставьте ему следующие разрешения:'**
  String get permissionRequestDesc;

  /// No description provided for @permissionRequestTrackingTitle.
  ///
  /// In ru, this message translates to:
  /// **'Отслеживание интересов'**
  String get permissionRequestTrackingTitle;

  /// No description provided for @permissionRequestTrackingDesc.
  ///
  /// In ru, this message translates to:
  /// **'Анализируем ваши действия в приложении, чтобы показывать то, что вам интересно'**
  String get permissionRequestTrackingDesc;

  /// No description provided for @permissionRequestNotificationTitle.
  ///
  /// In ru, this message translates to:
  /// **'Оповещения'**
  String get permissionRequestNotificationTitle;

  /// No description provided for @permissionRequestNotificationDesc.
  ///
  /// In ru, this message translates to:
  /// **'Расскажем о наших акциях и предупредим о статусе заказов и аренды'**
  String get permissionRequestNotificationDesc;

  /// No description provided for @permissionRequestNotificationActionAllow.
  ///
  /// In ru, this message translates to:
  /// **'Разрешить'**
  String get permissionRequestNotificationActionAllow;

  /// No description provided for @permissionRequestNotificationActionSkip.
  ///
  /// In ru, this message translates to:
  /// **'Напомнить позже'**
  String get permissionRequestNotificationActionSkip;

  /// No description provided for @cartTitle.
  ///
  /// In ru, this message translates to:
  /// **'Bag'**
  String get cartTitle;

  /// No description provided for @cartTitlePrefix.
  ///
  /// In ru, this message translates to:
  /// **'[{count, plural, one{{count} item} few{{count} items} many{{count} items} other{{count} items}}]'**
  String cartTitlePrefix(int count);

  /// No description provided for @cartLoadingTitle.
  ///
  /// In ru, this message translates to:
  /// **'Корзина'**
  String get cartLoadingTitle;

  /// No description provided for @cartEmptyTitle.
  ///
  /// In ru, this message translates to:
  /// **'В корзине\nпока ничего нет...'**
  String get cartEmptyTitle;

  /// No description provided for @cartEmptyDesc.
  ///
  /// In ru, this message translates to:
  /// **'Тут будут добавленные вами вещи, в аренду или на покупку'**
  String get cartEmptyDesc;

  /// No description provided for @cartEmptyBtnCta.
  ///
  /// In ru, this message translates to:
  /// **'Перейти в каталог'**
  String get cartEmptyBtnCta;

  /// No description provided for @cartProductItemTariffArenda.
  ///
  /// In ru, this message translates to:
  /// **'Аренда на {days, plural, one{{days} день} few{{days} дня} many{{days} дней} other{{days} дня}}'**
  String cartProductItemTariffArenda(int days);

  /// No description provided for @cartProductItemTariffBuy.
  ///
  /// In ru, this message translates to:
  /// **'Покупка'**
  String get cartProductItemTariffBuy;

  /// No description provided for @cartSuccessBtn.
  ///
  /// In ru, this message translates to:
  /// **'Перейти к оформлению'**
  String get cartSuccessBtn;

  /// No description provided for @cartSuccessScoringProgressBtn.
  ///
  /// In ru, this message translates to:
  /// **'Проверяем ваши данные'**
  String get cartSuccessScoringProgressBtn;

  /// No description provided for @cartSuccessScoringProgressDesc.
  ///
  /// In ru, this message translates to:
  /// **'Обычно проверка занимает около пяти минут.\nМожете вернуться сюда позже'**
  String get cartSuccessScoringProgressDesc;

  /// No description provided for @cartGuardTitle.
  ///
  /// In ru, this message translates to:
  /// **'Страховка +{price}'**
  String cartGuardTitle(String price);

  /// No description provided for @cartGuardDesc.
  ///
  /// In ru, this message translates to:
  /// **'только для вещей в аренду'**
  String get cartGuardDesc;

  /// No description provided for @cartBonusTitle.
  ///
  /// In ru, this message translates to:
  /// **'Deduct {bonuses} points'**
  String cartBonusTitle(String bonuses);

  /// No description provided for @cartBonusDesc.
  ///
  /// In ru, this message translates to:
  /// **'and pay up to 50% of the order'**
  String get cartBonusDesc;

  /// No description provided for @cartTotalTitle.
  ///
  /// In ru, this message translates to:
  /// **'Итого'**
  String get cartTotalTitle;

  /// No description provided for @cartProductEdit.
  ///
  /// In ru, this message translates to:
  /// **'Изменить'**
  String get cartProductEdit;

  /// No description provided for @checkoutTitle.
  ///
  /// In ru, this message translates to:
  /// **'Оформление заказа'**
  String get checkoutTitle;

  /// No description provided for @checkoutSetDateTitle.
  ///
  /// In ru, this message translates to:
  /// **'Выберите день'**
  String get checkoutSetDateTitle;

  /// No description provided for @checkoutSetTimeTitle.
  ///
  /// In ru, this message translates to:
  /// **'Выберите время'**
  String get checkoutSetTimeTitle;

  /// No description provided for @checkoutSetTimeBtn.
  ///
  /// In ru, this message translates to:
  /// **'Готово'**
  String get checkoutSetTimeBtn;

  /// No description provided for @checkoutSuccessTitle.
  ///
  /// In ru, this message translates to:
  /// **'The order {orderNumber} has been placed'**
  String checkoutSuccessTitle(String orderNumber);

  /// No description provided for @checkoutSuccessFullPrice.
  ///
  /// In ru, this message translates to:
  /// **'TTo be paid {price}'**
  String checkoutSuccessFullPrice(String price);

  /// No description provided for @checkoutSuccessCardInfo.
  ///
  /// In ru, this message translates to:
  /// **'Card {number}'**
  String checkoutSuccessCardInfo(String number);

  /// No description provided for @checkoutSuccessDeliveryTitle.
  ///
  /// In ru, this message translates to:
  /// **'Delivery'**
  String get checkoutSuccessDeliveryTitle;

  /// No description provided for @checkoutSuccessBtn.
  ///
  /// In ru, this message translates to:
  /// **'Go to Order'**
  String get checkoutSuccessBtn;

  /// No description provided for @checkoutSuccessPaymentModalTitle.
  ///
  /// In ru, this message translates to:
  /// **'Payment'**
  String get checkoutSuccessPaymentModalTitle;

  /// No description provided for @checkoutSuccessPaymentModalDesc.
  ///
  /// In ru, this message translates to:
  /// **'We will charge the amount of the order after its confirmation. If the items do not fit, they can be returned to the courier. The funds will be returned to your card. If you refuse all items, the delivery amount will be deducted from you'**
  String get checkoutSuccessPaymentModalDesc;

  /// No description provided for @checkoutSuccessPaymentModalBtn.
  ///
  /// In ru, this message translates to:
  /// **'Okay'**
  String get checkoutSuccessPaymentModalBtn;

  /// No description provided for @checkoutCompleteBtn.
  ///
  /// In ru, this message translates to:
  /// **'Go to order'**
  String get checkoutCompleteBtn;

  /// No description provided for @ordersTitle.
  ///
  /// In ru, this message translates to:
  /// **'Мои заказы'**
  String get ordersTitle;

  /// No description provided for @ordersEmptyTitle.
  ///
  /// In ru, this message translates to:
  /// **'Мои заказы'**
  String get ordersEmptyTitle;

  /// No description provided for @ordersEmptyDesc.
  ///
  /// In ru, this message translates to:
  /// **'У вас пока нет заказов. Как только вы арендуете или купите вещь, она появится здесь'**
  String get ordersEmptyDesc;

  /// No description provided for @ordersDetailsTitle.
  ///
  /// In ru, this message translates to:
  /// **'Заказ {orderId}'**
  String ordersDetailsTitle(String orderId);

  /// No description provided for @ordersHideCompleted.
  ///
  /// In ru, this message translates to:
  /// **'Скрывать завершенные'**
  String get ordersHideCompleted;

  /// No description provided for @orderDate.
  ///
  /// In ru, this message translates to:
  /// **'от {date}'**
  String orderDate(String date);

  /// No description provided for @orderNumber.
  ///
  /// In ru, this message translates to:
  /// **'Заказ {orderNumber}'**
  String orderNumber(String orderNumber);

  /// No description provided for @orderDetailDeliveryContainerTitle.
  ///
  /// In ru, this message translates to:
  /// **'Доставка'**
  String get orderDetailDeliveryContainerTitle;

  /// No description provided for @orderDetailPaymentContainerTitle.
  ///
  /// In ru, this message translates to:
  /// **'Оплата'**
  String get orderDetailPaymentContainerTitle;

  /// No description provided for @orderCancelBtn.
  ///
  /// In ru, this message translates to:
  /// **'Отменить'**
  String get orderCancelBtn;

  /// No description provided for @orderRefundBtn.
  ///
  /// In ru, this message translates to:
  /// **'Оформить возврат'**
  String get orderRefundBtn;

  /// No description provided for @orderExtendRentalBtn.
  ///
  /// In ru, this message translates to:
  /// **'Продлить аренду'**
  String get orderExtendRentalBtn;

  /// No description provided for @orderGoToOrderBtn.
  ///
  /// In ru, this message translates to:
  /// **'Перейти к заказу'**
  String get orderGoToOrderBtn;

  /// No description provided for @ordersTabAll.
  ///
  /// In ru, this message translates to:
  /// **'Все'**
  String get ordersTabAll;

  /// No description provided for @ordersTabActive.
  ///
  /// In ru, this message translates to:
  /// **'Активные'**
  String get ordersTabActive;

  /// No description provided for @ordersTabCompleted.
  ///
  /// In ru, this message translates to:
  /// **'Выполненые'**
  String get ordersTabCompleted;

  /// No description provided for @ordersLabelStatusInProcess.
  ///
  /// In ru, this message translates to:
  /// **'In process'**
  String get ordersLabelStatusInProcess;

  /// No description provided for @ordersLabelStatusHandedOut.
  ///
  /// In ru, this message translates to:
  /// **'{days} days'**
  String ordersLabelStatusHandedOut(String days);

  /// No description provided for @ordersLabelStatusRenewal.
  ///
  /// In ru, this message translates to:
  /// **'Renewal'**
  String get ordersLabelStatusRenewal;

  /// No description provided for @ordersLabelStatusSoldOut.
  ///
  /// In ru, this message translates to:
  /// **''**
  String get ordersLabelStatusSoldOut;

  /// No description provided for @ordersLabelStatusReturn.
  ///
  /// In ru, this message translates to:
  /// **'Return'**
  String get ordersLabelStatusReturn;

  /// No description provided for @ordersLabelStatusPaymentImpossible.
  ///
  /// In ru, this message translates to:
  /// **'{price}'**
  String ordersLabelStatusPaymentImpossible(String price);

  /// No description provided for @ordersLabelStatusCompleted.
  ///
  /// In ru, this message translates to:
  /// **'Completed'**
  String get ordersLabelStatusCompleted;

  /// No description provided for @ordersLabelStatusRepair.
  ///
  /// In ru, this message translates to:
  /// **'Repair'**
  String get ordersLabelStatusRepair;

  /// No description provided for @ordersLabelStatusCanceled.
  ///
  /// In ru, this message translates to:
  /// **'Canceled'**
  String get ordersLabelStatusCanceled;

  /// No description provided for @orderRefundScaffoldTitle.
  ///
  /// In ru, this message translates to:
  /// **'Making a refund'**
  String get orderRefundScaffoldTitle;

  /// No description provided for @menuProfileOrder.
  ///
  /// In ru, this message translates to:
  /// **'Мои заказы'**
  String get menuProfileOrder;

  /// No description provided for @menuProfileAddress.
  ///
  /// In ru, this message translates to:
  /// **'Мои адреса'**
  String get menuProfileAddress;

  /// No description provided for @menuProfileCards.
  ///
  /// In ru, this message translates to:
  /// **'Мои карты'**
  String get menuProfileCards;

  /// No description provided for @menuProfileBonuses.
  ///
  /// In ru, this message translates to:
  /// **'Бонусные баллы'**
  String get menuProfileBonuses;

  /// No description provided for @menuProfileFavourite.
  ///
  /// In ru, this message translates to:
  /// **'Избранное'**
  String get menuProfileFavourite;

  /// No description provided for @faqProfileHowToRent.
  ///
  /// In ru, this message translates to:
  /// **'Как арендовать'**
  String get faqProfileHowToRent;

  /// No description provided for @faqProfileShippingAndPayment.
  ///
  /// In ru, this message translates to:
  /// **'Доставка и оплата'**
  String get faqProfileShippingAndPayment;

  /// No description provided for @faqProfileLoyaltyProgram.
  ///
  /// In ru, this message translates to:
  /// **'Программа лояльности'**
  String get faqProfileLoyaltyProgram;

  /// No description provided for @faqProfileEarnOnYourStuff.
  ///
  /// In ru, this message translates to:
  /// **'Зарабатывайте на своих вещах'**
  String get faqProfileEarnOnYourStuff;

  /// No description provided for @faqProfileAboutUs.
  ///
  /// In ru, this message translates to:
  /// **'О нас'**
  String get faqProfileAboutUs;

  /// No description provided for @faqProfileFaq.
  ///
  /// In ru, this message translates to:
  /// **'FAQ'**
  String get faqProfileFaq;

  /// No description provided for @faqProfileDocuments.
  ///
  /// In ru, this message translates to:
  /// **'Документы'**
  String get faqProfileDocuments;

  /// No description provided for @faqProfileContacts.
  ///
  /// In ru, this message translates to:
  /// **'Контакты'**
  String get faqProfileContacts;

  /// No description provided for @faqProfileAboutApp.
  ///
  /// In ru, this message translates to:
  /// **'О приложении'**
  String get faqProfileAboutApp;

  /// No description provided for @scoringWidgetEmptyTitle.
  ///
  /// In ru, this message translates to:
  /// **'Verify your profile'**
  String get scoringWidgetEmptyTitle;

  /// No description provided for @scoringWidgetEmptyDesc.
  ///
  /// In ru, this message translates to:
  /// **'Rent things without collateral and with reliable protection'**
  String get scoringWidgetEmptyDesc;

  /// No description provided for @scoringWidgetRejectedTitle.
  ///
  /// In ru, this message translates to:
  /// **'Check failed'**
  String get scoringWidgetRejectedTitle;

  /// No description provided for @scoringWidgetRejectedDesc.
  ///
  /// In ru, this message translates to:
  /// **'Your data has been rejected, please contact us for clarification'**
  String get scoringWidgetRejectedDesc;

  /// No description provided for @scoringWidgetProcessingTitle.
  ///
  /// In ru, this message translates to:
  /// **'Complete the check'**
  String get scoringWidgetProcessingTitle;

  /// No description provided for @scoringWidgetProcessingDesc.
  ///
  /// In ru, this message translates to:
  /// **'An error occurred while checking, please try again'**
  String get scoringWidgetProcessingDesc;

  /// No description provided for @sortTitle.
  ///
  /// In ru, this message translates to:
  /// **'Сортировать'**
  String get sortTitle;

  /// No description provided for @sortDefault.
  ///
  /// In ru, this message translates to:
  /// **'По умолчанию'**
  String get sortDefault;

  /// No description provided for @sortCreatedAtDesc.
  ///
  /// In ru, this message translates to:
  /// **'По новизне'**
  String get sortCreatedAtDesc;

  /// No description provided for @sortPriceDesc.
  ///
  /// In ru, this message translates to:
  /// **'По цене, сначала дороже'**
  String get sortPriceDesc;

  /// No description provided for @sortPriceAsc.
  ///
  /// In ru, this message translates to:
  /// **'По цене, сначала дешевле'**
  String get sortPriceAsc;

  /// No description provided for @productCardRentPrice.
  ///
  /// In ru, this message translates to:
  /// **'Аренда от { price }'**
  String productCardRentPrice(Object price);

  /// No description provided for @productBuyPrice.
  ///
  /// In ru, this message translates to:
  /// **'Купить за { price }'**
  String productBuyPrice(String price);

  /// No description provided for @productSizeTitle.
  ///
  /// In ru, this message translates to:
  /// **'Размеры'**
  String get productSizeTitle;

  /// No description provided for @productSizeGridTitle.
  ///
  /// In ru, this message translates to:
  /// **'Таблица размеров'**
  String get productSizeGridTitle;

  /// No description provided for @productRentalPeriodTitle.
  ///
  /// In ru, this message translates to:
  /// **'Период аренды'**
  String get productRentalPeriodTitle;

  /// No description provided for @productRentalPeriodInputTitle.
  ///
  /// In ru, this message translates to:
  /// **'Даты аренды'**
  String get productRentalPeriodInputTitle;

  /// No description provided for @productRentalPeriodRange.
  ///
  /// In ru, this message translates to:
  /// **'c {start} по {finish}'**
  String productRentalPeriodRange(String start, String finish);

  /// No description provided for @productRentBtn.
  ///
  /// In ru, this message translates to:
  /// **'В корзину'**
  String get productRentBtn;

  /// No description provided for @productBuyBtn.
  ///
  /// In ru, this message translates to:
  /// **'Купить сейчас'**
  String get productBuyBtn;

  /// No description provided for @productColorTitle.
  ///
  /// In ru, this message translates to:
  /// **'Другие цвета'**
  String get productColorTitle;

  /// No description provided for @productQuestionsTitle.
  ///
  /// In ru, this message translates to:
  /// **'Вопросы'**
  String get productQuestionsTitle;

  /// No description provided for @productQuestions1.
  ///
  /// In ru, this message translates to:
  /// **'Как арендовать?'**
  String get productQuestions1;

  /// No description provided for @productQuestions2.
  ///
  /// In ru, this message translates to:
  /// **'Доставка и оплата'**
  String get productQuestions2;

  /// No description provided for @productDetailsTitle.
  ///
  /// In ru, this message translates to:
  /// **'О вещи'**
  String get productDetailsTitle;

  /// No description provided for @productDetailsSubtitle.
  ///
  /// In ru, this message translates to:
  /// **'В деталях'**
  String get productDetailsSubtitle;

  /// No description provided for @productCollectionTitle.
  ///
  /// In ru, this message translates to:
  /// **'В подборках'**
  String get productCollectionTitle;

  /// No description provided for @productRecommendationTitle.
  ///
  /// In ru, this message translates to:
  /// **'Рекомендуем'**
  String get productRecommendationTitle;

  /// No description provided for @productCalendarCompleteBtn.
  ///
  /// In ru, this message translates to:
  /// **'Готово'**
  String get productCalendarCompleteBtn;

  /// No description provided for @productIsNotAvailable.
  ///
  /// In ru, this message translates to:
  /// **'Товара не доступен'**
  String get productIsNotAvailable;

  /// No description provided for @productFaqHowRentingWorksTitle.
  ///
  /// In ru, this message translates to:
  /// **'How renting works'**
  String get productFaqHowRentingWorksTitle;

  /// No description provided for @productFaqHowRentingWorksDesc.
  ///
  /// In ru, this message translates to:
  /// **'Try on first and pay later. Step-by-step guide to rental of clothing and accessories'**
  String get productFaqHowRentingWorksDesc;

  /// No description provided for @calendarRangeTextTitleStart.
  ///
  /// In ru, this message translates to:
  /// **'Начало'**
  String get calendarRangeTextTitleStart;

  /// No description provided for @calendarRangeTextTitleEnd.
  ///
  /// In ru, this message translates to:
  /// **'Конец'**
  String get calendarRangeTextTitleEnd;

  /// No description provided for @modalCardsAddCardTitle.
  ///
  /// In ru, this message translates to:
  /// **'Card for payment'**
  String get modalCardsAddCardTitle;

  /// No description provided for @modalCardsAddCardDesc.
  ///
  /// In ru, this message translates to:
  /// **'You can add a new card here or at checkout — it\'s fast and safe. Without adding a card, you will not be able to rent or buy things'**
  String get modalCardsAddCardDesc;

  /// No description provided for @modalCardsAddCardBtn.
  ///
  /// In ru, this message translates to:
  /// **'Add card'**
  String get modalCardsAddCardBtn;

  /// No description provided for @modalDeliveryTitle.
  ///
  /// In ru, this message translates to:
  /// **'My addresses'**
  String get modalDeliveryTitle;

  /// No description provided for @modalDeliveryAddAddressDesc.
  ///
  /// In ru, this message translates to:
  /// **'Add a shipping address'**
  String get modalDeliveryAddAddressDesc;

  /// No description provided for @modalDeliveryAddAddressBtn.
  ///
  /// In ru, this message translates to:
  /// **'Add address'**
  String get modalDeliveryAddAddressBtn;

  /// No description provided for @errorRetryBtn.
  ///
  /// In ru, this message translates to:
  /// **'Retry'**
  String get errorRetryBtn;

  /// No description provided for @defaultErrorTitle.
  ///
  /// In ru, this message translates to:
  /// **'An error has occurred'**
  String get defaultErrorTitle;

  /// No description provided for @defaultErrorMessage.
  ///
  /// In ru, this message translates to:
  /// **'Please try again'**
  String get defaultErrorMessage;

  /// No description provided for @errorSocketExceptionTitle.
  ///
  /// In ru, this message translates to:
  /// **'No connection'**
  String get errorSocketExceptionTitle;

  /// No description provided for @errorSocketExceptionMessage.
  ///
  /// In ru, this message translates to:
  /// **'Check your internet connection and try again'**
  String get errorSocketExceptionMessage;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'ru': return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
