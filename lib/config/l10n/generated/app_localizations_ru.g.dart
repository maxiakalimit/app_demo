import 'package:intl/intl.dart' as intl;

import 'app_localizations.g.dart';

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get scaffoldClearBtn => 'Очистить';

  @override
  String get baseCancelBtnTitle => 'Отменить';

  @override
  String get splashTitle => '';

  @override
  String get onboardingFinalBtn => 'Войти или зарегистрироваться';

  @override
  String get onboardingSkipBtn => 'Не сейчас';

  @override
  String get loginTitle => 'Войти или зарегистрироваться';

  @override
  String get loginDesc => 'Мы отправим на ваш номер СМС с кодом подтверждения';

  @override
  String get loginBtnCta => 'Получить код';

  @override
  String get loginLegalDesc1 => 'When you log in, you accept the ';

  @override
  String get loginLegalDesc2 => 'User agreement';

  @override
  String get loginLegalDesc3 => 'and the ';

  @override
  String get loginLegalDesc4 => 'Terms of the offer';

  @override
  String get verifyTitle => 'Код подтверждения';

  @override
  String verifyDescPhone(String phone) {
    return 'Отправили СМС на $phone';
  }

  @override
  String verifyDescEmail(String email) {
    return 'Отправили письмо на $email';
  }

  @override
  String verifyTimer(String timer) {
    return 'Отправить код повторно\nможно через $timer';
  }

  @override
  String get verifyBtnResendCode => 'Отправить повторно';

  @override
  String get supportContainerTitle => 'Support';

  @override
  String get supportDesc => 'Choose a convenient way to communicate';

  @override
  String get supportWhatsapp => 'WhatsApp';

  @override
  String get supportBtn => 'Написать в поддержку';

  @override
  String get homeCheckAll => 'Смотреть все';

  @override
  String get profileEditBtn => 'Профиль';

  @override
  String get profileLoginContainerTitle => 'Войдите или\nзарегистрируйтесь';

  @override
  String get profileLoginContainerDesc => 'Чтобы арендовать вещи, отслеживать заказы и копить бонусные баллы';

  @override
  String get profileLoginContainerBtnLogin => 'Войти';

  @override
  String get profileLogoutBtn => 'Выйти';

  @override
  String get profileLogoutRequestTitle => 'Confirmation';

  @override
  String get profileLogoutRequestDesc => 'Are you sure want to sign out?';

  @override
  String get profileLogoutRequestCloseBtn => 'Cancel';

  @override
  String get profileLogoutRequestConfirmBtn => 'Sign Out';

  @override
  String get profileDeleteProfileBtn => 'Удалить профиль';

  @override
  String get profileDeleteProfileFirstStageTitle => 'Delete the account?';

  @override
  String get profileDeleteProfileFirstStageDesc => 'You can request account deletion. By doing so you will no longer be able to access your account.';

  @override
  String get profileDeleteProfileFirstStageCloseBtn => 'Cancel';

  @override
  String get profileDeleteProfileFirstStageCtaBtn => 'Confirm';

  @override
  String get profileDeleteProfileFinalStageTitle => 'Are you sure?';

  @override
  String get profileDeleteProfileFinalStageDesc => 'This cannot be undone';

  @override
  String get profileDeleteProfileFinalStageCloseBtn => 'Cancel';

  @override
  String get profileDeleteProfileFinalStageCtaBtn => 'Delete account';

  @override
  String get profileFaqTitle => 'Помощь';

  @override
  String get profileActionCallTitle => 'Позвонить';

  @override
  String get profileActionChatTitle => 'Написать в чат';

  @override
  String get profileEditScreenTitle => 'Профиль';

  @override
  String get profileEditScreenNameInputLabel => 'Имя';

  @override
  String get profileEditScreenEmailInputLabel => 'Email';

  @override
  String get profileEditScreenPhoneInputLabel => 'Телефон';

  @override
  String get profileEditScreenModalSupportDesc => 'Обратитесь в службу поддержки для обновления данных';

  @override
  String get favouriteTitle => 'Избранное';

  @override
  String get favouriteEmptyTitle => 'В избранном\nпока ничего нет...';

  @override
  String get favouriteEmptyDesc => 'Добавляйте сюда понравившиеся вещи. Авторизуйтесь, чтобы ничего не потерять';

  @override
  String get favouriteEmptyCatalogTitle => 'Новинки';

  @override
  String get favouriteEmptyBtn => 'Перейти в каталог';

  @override
  String get firstScoringOfferTitle => 'Подтвердить профиль';

  @override
  String get firstScoringOfferDesc => 'Потребуются паспорт и селфи.\nЗаймет 5-7 минут и это безопасно.\nМы не храним и не публикуем фото паспортов и селфи.\n\nИнформация обрабатывается сервисом Cyberity в соответствии с ФЗ РФ N152 «О персональных данных»';

  @override
  String get firstScoringOfferBtnCta => 'Пройти проверку';

  @override
  String get firstScoringOfferBtnSkip => 'Не сейчас';

  @override
  String get scoringNotificationSuccessTitle => 'Ваш профиль проверен';

  @override
  String get scoringNotificationSuccessDesc => 'Теперь вы можете арендовать предметы из каталога';

  @override
  String get scoringNotificationRejectedTitle => 'Проверка не удалась';

  @override
  String get scoringNotificationRejectedDesc => 'Попробуйте отправить документы еще раз';

  @override
  String get bonusesTitle => 'Бонусные баллы';

  @override
  String bonusesDiscount(String percent) {
    return '$percent% кэшбек';
  }

  @override
  String bonusesNextLevel(String total, String word) {
    return '$total $word до следующего уровня';
  }

  @override
  String get bonusesMore => 'Подробнее';

  @override
  String get bonusesFaq => 'Как копятся баллы';

  @override
  String bonusesCashback(String percent) {
    return '$percent% cashback';
  }

  @override
  String get bonusesEmptyTitle => 'У вас пока\nнет баллов...';

  @override
  String get bonusesEmptyDescription => 'Вы можете оплатить баллами\nдо 50% от суммы заказа. Баллы нельзя  использовать вместе со скидками\nи акциями. 1 балл = 1 ₽';

  @override
  String get catalogSearchHint => 'Найти в каталоге';

  @override
  String get catalogSearchPageTitle => 'Результаты поиска';

  @override
  String get catalogSearchResultHintTitle => 'Популярные бренды';

  @override
  String get catalogSearchClearHistoryBtn => 'Очистить историю';

  @override
  String get catalogSearchPopularBrandsTitle => 'Популярные бренды';

  @override
  String get catalogMenuBrandItem => 'Бренды';

  @override
  String get filtersTypeTitle => 'Rent or buy out';

  @override
  String get filtersTypeItemAll => 'All';

  @override
  String get filtersTypeItemRent => 'Rent only';

  @override
  String get filtersTypeItemBuy => 'Buy only';

  @override
  String get brandTitle => 'Бренды';

  @override
  String get brandSearchHint => 'Найти бренд';

  @override
  String get brandEmptyTitle => 'Ничего не найдено';

  @override
  String get deliveryAddressTitle => 'Мои адреса';

  @override
  String get deliveryAddressEmptyDesc => 'Вы пока не добавляли адресов';

  @override
  String get deliveryAddressBtnAdd => 'Новый адрес';

  @override
  String get deliveryAddressEditFormTitle => 'Редактировать адрес';

  @override
  String get deliveryAddressAddFormTitle => 'Добавить адрес';

  @override
  String get paymentMethodsTitle => 'Мои карты';

  @override
  String get paymentMethodsEmptyDesc => 'Вы можете добавить новую карту здесь или при оформлении заказа — это быстро и безопасно. Без добавления карты не получится арендовать или купить вещи';

  @override
  String get paymentMethodsBtnAdd => 'Новая карта';

  @override
  String get paymentMethodsAddDesc => 'Чтобы проверить вашу карту,\nмы спишем и сразу вернем 1 ₽';

  @override
  String get paymentMethodsAddSecureAlert => 'Безопасность платежей подтверждена';

  @override
  String get paymentMethodsAddBtnSave => 'Добавить';

  @override
  String get paymentMethodsAddBtnDone => 'Готово';

  @override
  String get paymentMethodsAddBtnDelete => 'Удалить карту';

  @override
  String get paymentMethodsAddMakeDefaultBtn => 'Make Default';

  @override
  String get paymentMethodsAddCancelBtn => 'CANCEL';

  @override
  String get paymentMethodsAddTitle => 'Новая карта';

  @override
  String get paymentMethodsActiveCard => 'Главная';

  @override
  String get paymentMethodsHistoryTitle => 'История операций';

  @override
  String get paymentMethodsFormNumber => 'Номер карты';

  @override
  String get paymentMethodsFormExpiryDate => 'Дейтсвует до (мм/гг)';

  @override
  String get paymentMethodsFormCvv => 'CVС/CVV';

  @override
  String get paymentMethodsFormNameOnCard => 'Имя на карте';

  @override
  String get paymentMethodsFormEmail => 'Email';

  @override
  String get paymentMethodsDeleteAlertTitle => 'Delete the card?';

  @override
  String get paymentMethodsDeleteAlertDesc => 'The card will be removed from your profile. For new orders, you will need to link the card again or add another one';

  @override
  String get paymentMethodsDeleteAlertCloseBtn => 'Close';

  @override
  String get paymentMethodsDeleteAlertDeleteBtn => 'Delete';

  @override
  String get cardDeleteDialogTitle => 'Отвязать карту?';

  @override
  String get cardDeleteDialogDesc => 'Карта будет удалена из вашего профиля. Для новых заказов потребуется привязать карту заново или добавить другую';

  @override
  String get cardDeleteDialogCloseBtn => 'Отменить';

  @override
  String get cardDeleteDialogCtaBtn => 'Подтвердить';

  @override
  String get permissionRequestTitle => 'Интересы и оповещения';

  @override
  String get permissionRequestDesc => 'Чтобы вам было удобно пользоваться приложением, предоставьте ему следующие разрешения:';

  @override
  String get permissionRequestTrackingTitle => 'Отслеживание интересов';

  @override
  String get permissionRequestTrackingDesc => 'Анализируем ваши действия в приложении, чтобы показывать то, что вам интересно';

  @override
  String get permissionRequestNotificationTitle => 'Оповещения';

  @override
  String get permissionRequestNotificationDesc => 'Расскажем о наших акциях и предупредим о статусе заказов и аренды';

  @override
  String get permissionRequestNotificationActionAllow => 'Разрешить';

  @override
  String get permissionRequestNotificationActionSkip => 'Напомнить позже';

  @override
  String get cartTitle => 'Bag';

  @override
  String cartTitlePrefix(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items',
      many: '$count items',
      few: '$count items',
      one: '$count item',
    );
    return '[$_temp0]';
  }

  @override
  String get cartLoadingTitle => 'Корзина';

  @override
  String get cartEmptyTitle => 'В корзине\nпока ничего нет...';

  @override
  String get cartEmptyDesc => 'Тут будут добавленные вами вещи, в аренду или на покупку';

  @override
  String get cartEmptyBtnCta => 'Перейти в каталог';

  @override
  String cartProductItemTariffArenda(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days дня',
      many: '$days дней',
      few: '$days дня',
      one: '$days день',
    );
    return 'Аренда на $_temp0';
  }

  @override
  String get cartProductItemTariffBuy => 'Покупка';

  @override
  String get cartSuccessBtn => 'Перейти к оформлению';

  @override
  String get cartSuccessScoringProgressBtn => 'Проверяем ваши данные';

  @override
  String get cartSuccessScoringProgressDesc => 'Обычно проверка занимает около пяти минут.\nМожете вернуться сюда позже';

  @override
  String cartGuardTitle(String price) {
    return 'Страховка +$price';
  }

  @override
  String get cartGuardDesc => 'только для вещей в аренду';

  @override
  String cartBonusTitle(String bonuses) {
    return 'Deduct $bonuses points';
  }

  @override
  String get cartBonusDesc => 'and pay up to 50% of the order';

  @override
  String get cartTotalTitle => 'Итого';

  @override
  String get cartProductEdit => 'Изменить';

  @override
  String get checkoutTitle => 'Оформление заказа';

  @override
  String get checkoutSetDateTitle => 'Выберите день';

  @override
  String get checkoutSetTimeTitle => 'Выберите время';

  @override
  String get checkoutSetTimeBtn => 'Готово';

  @override
  String checkoutSuccessTitle(String orderNumber) {
    return 'The order $orderNumber has been placed';
  }

  @override
  String checkoutSuccessFullPrice(String price) {
    return 'TTo be paid $price';
  }

  @override
  String checkoutSuccessCardInfo(String number) {
    return 'Card $number';
  }

  @override
  String get checkoutSuccessDeliveryTitle => 'Delivery';

  @override
  String get checkoutSuccessBtn => 'Go to Order';

  @override
  String get checkoutSuccessPaymentModalTitle => 'Payment';

  @override
  String get checkoutSuccessPaymentModalDesc => 'We will charge the amount of the order after its confirmation. If the items do not fit, they can be returned to the courier. The funds will be returned to your card. If you refuse all items, the delivery amount will be deducted from you';

  @override
  String get checkoutSuccessPaymentModalBtn => 'Okay';

  @override
  String get checkoutCompleteBtn => 'Go to order';

  @override
  String get ordersTitle => 'Мои заказы';

  @override
  String get ordersEmptyTitle => 'Мои заказы';

  @override
  String get ordersEmptyDesc => 'У вас пока нет заказов. Как только вы арендуете или купите вещь, она появится здесь';

  @override
  String ordersDetailsTitle(String orderId) {
    return 'Заказ $orderId';
  }

  @override
  String get ordersHideCompleted => 'Скрывать завершенные';

  @override
  String orderDate(String date) {
    return 'от $date';
  }

  @override
  String orderNumber(String orderNumber) {
    return 'Заказ $orderNumber';
  }

  @override
  String get orderDetailDeliveryContainerTitle => 'Доставка';

  @override
  String get orderDetailPaymentContainerTitle => 'Оплата';

  @override
  String get orderCancelBtn => 'Отменить';

  @override
  String get orderRefundBtn => 'Оформить возврат';

  @override
  String get orderExtendRentalBtn => 'Продлить аренду';

  @override
  String get orderGoToOrderBtn => 'Перейти к заказу';

  @override
  String get ordersTabAll => 'Все';

  @override
  String get ordersTabActive => 'Активные';

  @override
  String get ordersTabCompleted => 'Выполненые';

  @override
  String get ordersLabelStatusInProcess => 'In process';

  @override
  String ordersLabelStatusHandedOut(String days) {
    return '$days days';
  }

  @override
  String get ordersLabelStatusRenewal => 'Renewal';

  @override
  String get ordersLabelStatusSoldOut => '';

  @override
  String get ordersLabelStatusReturn => 'Return';

  @override
  String ordersLabelStatusPaymentImpossible(String price) {
    return '$price';
  }

  @override
  String get ordersLabelStatusCompleted => 'Completed';

  @override
  String get ordersLabelStatusRepair => 'Repair';

  @override
  String get ordersLabelStatusCanceled => 'Canceled';

  @override
  String get orderRefundScaffoldTitle => 'Making a refund';

  @override
  String get menuProfileOrder => 'Мои заказы';

  @override
  String get menuProfileAddress => 'Мои адреса';

  @override
  String get menuProfileCards => 'Мои карты';

  @override
  String get menuProfileBonuses => 'Бонусные баллы';

  @override
  String get menuProfileFavourite => 'Избранное';

  @override
  String get faqProfileHowToRent => 'Как арендовать';

  @override
  String get faqProfileShippingAndPayment => 'Доставка и оплата';

  @override
  String get faqProfileLoyaltyProgram => 'Программа лояльности';

  @override
  String get faqProfileEarnOnYourStuff => 'Зарабатывайте на своих вещах';

  @override
  String get faqProfileAboutUs => 'О нас';

  @override
  String get faqProfileFaq => 'FAQ';

  @override
  String get faqProfileDocuments => 'Документы';

  @override
  String get faqProfileContacts => 'Контакты';

  @override
  String get faqProfileAboutApp => 'О приложении';

  @override
  String get scoringWidgetEmptyTitle => 'Verify your profile';

  @override
  String get scoringWidgetEmptyDesc => 'Rent things without collateral and with reliable protection';

  @override
  String get scoringWidgetRejectedTitle => 'Check failed';

  @override
  String get scoringWidgetRejectedDesc => 'Your data has been rejected, please contact us for clarification';

  @override
  String get scoringWidgetProcessingTitle => 'Complete the check';

  @override
  String get scoringWidgetProcessingDesc => 'An error occurred while checking, please try again';

  @override
  String get sortTitle => 'Сортировать';

  @override
  String get sortDefault => 'По умолчанию';

  @override
  String get sortCreatedAtDesc => 'По новизне';

  @override
  String get sortPriceDesc => 'По цене, сначала дороже';

  @override
  String get sortPriceAsc => 'По цене, сначала дешевле';

  @override
  String productCardRentPrice(Object price) {
    return 'Аренда от $price';
  }

  @override
  String productBuyPrice(String price) {
    return 'Купить за $price';
  }

  @override
  String get productSizeTitle => 'Размеры';

  @override
  String get productSizeGridTitle => 'Таблица размеров';

  @override
  String get productRentalPeriodTitle => 'Период аренды';

  @override
  String get productRentalPeriodInputTitle => 'Даты аренды';

  @override
  String productRentalPeriodRange(String start, String finish) {
    return 'c $start по $finish';
  }

  @override
  String get productRentBtn => 'В корзину';

  @override
  String get productBuyBtn => 'Купить сейчас';

  @override
  String get productColorTitle => 'Другие цвета';

  @override
  String get productQuestionsTitle => 'Вопросы';

  @override
  String get productQuestions1 => 'Как арендовать?';

  @override
  String get productQuestions2 => 'Доставка и оплата';

  @override
  String get productDetailsTitle => 'О вещи';

  @override
  String get productDetailsSubtitle => 'В деталях';

  @override
  String get productCollectionTitle => 'В подборках';

  @override
  String get productRecommendationTitle => 'Рекомендуем';

  @override
  String get productCalendarCompleteBtn => 'Готово';

  @override
  String get productIsNotAvailable => 'Товара не доступен';

  @override
  String get productFaqHowRentingWorksTitle => 'How renting works';

  @override
  String get productFaqHowRentingWorksDesc => 'Try on first and pay later. Step-by-step guide to rental of clothing and accessories';

  @override
  String get calendarRangeTextTitleStart => 'Начало';

  @override
  String get calendarRangeTextTitleEnd => 'Конец';

  @override
  String get modalCardsAddCardTitle => 'Card for payment';

  @override
  String get modalCardsAddCardDesc => 'You can add a new card here or at checkout — it\'s fast and safe. Without adding a card, you will not be able to rent or buy things';

  @override
  String get modalCardsAddCardBtn => 'Add card';

  @override
  String get modalDeliveryTitle => 'My addresses';

  @override
  String get modalDeliveryAddAddressDesc => 'Add a shipping address';

  @override
  String get modalDeliveryAddAddressBtn => 'Add address';

  @override
  String get errorRetryBtn => 'Retry';

  @override
  String get defaultErrorTitle => 'An error has occurred';

  @override
  String get defaultErrorMessage => 'Please try again';

  @override
  String get errorSocketExceptionTitle => 'No connection';

  @override
  String get errorSocketExceptionMessage => 'Check your internet connection and try again';
}
