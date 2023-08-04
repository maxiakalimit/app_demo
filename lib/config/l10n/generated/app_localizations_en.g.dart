import 'package:intl/intl.dart' as intl;

import 'app_localizations.g.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get scaffoldClearBtn => 'Clear';

  @override
  String get baseCancelBtnTitle => 'Cancel';

  @override
  String get splashTitle => '';

  @override
  String get onboardingFinalBtn => 'Log in or register';

  @override
  String get onboardingSkipBtn => 'Not now';

  @override
  String get loginTitle => 'Sign in\nor register';

  @override
  String get loginDesc => 'We will send an SMS with\na confirmation code to your number';

  @override
  String get loginBtnCta => 'Send code';

  @override
  String get loginLegalDesc1 => 'When you log in, you accept the ';

  @override
  String get loginLegalDesc2 => 'User agreement';

  @override
  String get loginLegalDesc3 => '\nand the ';

  @override
  String get loginLegalDesc4 => 'Terms of the offer';

  @override
  String get verifyTitle => 'Enter the code\nsent to your number';

  @override
  String verifyDescPhone(String phone) {
    return 'We sent an SMS\nto $phone';
  }

  @override
  String verifyDescEmail(String email) {
    return 'We sent an email with a code\nto $email';
  }

  @override
  String verifyTimer(String timer) {
    return 'You can send the code again\nin $timer';
  }

  @override
  String get verifyBtnResendCode => 'Send the code again';

  @override
  String get supportContainerTitle => 'Support';

  @override
  String get supportDesc => 'Choose a convenient way to communicate';

  @override
  String get supportWhatsapp => 'WhatsApp';

  @override
  String get supportBtn => 'Contact Support';

  @override
  String get homeCheckAll => 'Check All';

  @override
  String get profileEditBtn => 'Edit profile';

  @override
  String get profileLoginContainerTitle => 'My profile';

  @override
  String get profileLoginContainerDesc => 'We will send an SMS to your number with a confirmation code';

  @override
  String get profileLoginContainerBtnLogin => 'Sign in or register';

  @override
  String get profileLogoutBtn => 'Sign Out';

  @override
  String get profileLogoutRequestTitle => 'Confirmation';

  @override
  String get profileLogoutRequestDesc => 'Are you sure want to sign out?';

  @override
  String get profileLogoutRequestCloseBtn => 'Cancel';

  @override
  String get profileLogoutRequestConfirmBtn => 'Sign out';

  @override
  String get profileDeleteProfileBtn => 'Delete profile';

  @override
  String get profileDeleteProfileFirstStageTitle => 'Delete your profile?';

  @override
  String get profileDeleteProfileFirstStageDesc => 'The card will be removed from your profile. For new orders, you will need to link the card again or add another one';

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
  String get profileFaqTitle => 'Help';

  @override
  String get profileActionCallTitle => 'Call';

  @override
  String get profileActionChatTitle => 'Write to chat';

  @override
  String get profileEditScreenTitle => 'My profile';

  @override
  String get profileEditScreenNameInputLabel => 'Name';

  @override
  String get profileEditScreenEmailInputLabel => 'Email';

  @override
  String get profileEditScreenPhoneInputLabel => 'Phone';

  @override
  String get profileEditScreenModalSupportDesc => 'Contact support to update profile information';

  @override
  String get favouriteTitle => 'Favorites';

  @override
  String get favouriteEmptyTitle => 'Your Favorites\nis empty...';

  @override
  String get favouriteEmptyDesc => 'Click on the heart icon and add your favorite items here';

  @override
  String get favouriteEmptyCatalogTitle => 'New';

  @override
  String get favouriteEmptyBtn => 'Go to the catalog';

  @override
  String get firstScoringOfferTitle => 'Verify your profile';

  @override
  String get firstScoringOfferDesc => 'An ID photo and a selfie will be required. Verification will take 3-5 minutes and is completely safe. We do not publish your data, and we do not pass on the information we receive to third parties.';

  @override
  String get firstScoringOfferBtnCta => 'Verify now';

  @override
  String get firstScoringOfferBtnSkip => 'Do it later';

  @override
  String get scoringNotificationSuccessTitle => 'Your profile is verified';

  @override
  String get scoringNotificationSuccessDesc => 'Now you can rent items from catalog';

  @override
  String get scoringNotificationRejectedTitle => 'Verification failed';

  @override
  String get scoringNotificationRejectedDesc => 'Try to submit your documents again';

  @override
  String get bonusesTitle => 'Bonus points';

  @override
  String bonusesDiscount(String percent) {
    return '$percent% cashback';
  }

  @override
  String bonusesNextLevel(String total, String word) {
    return '$total $word to the next level';
  }

  @override
  String get bonusesMore => 'More';

  @override
  String get bonusesFaq => 'How points are accumulated?';

  @override
  String bonusesCashback(String percent) {
    return '+$percent% cashback';
  }

  @override
  String get bonusesEmptyTitle => 'You don\'t have any\npoints yet...';

  @override
  String get bonusesEmptyDescription => 'You can pay with points up to 50% of the order amount. Points cannot be used together with discounts and promotions. 1 point = AED 1';

  @override
  String get catalogSearchHint => 'Find in catalog';

  @override
  String get catalogSearchPageTitle => 'Search results';

  @override
  String get catalogSearchResultHintTitle => 'Popular brands';

  @override
  String get catalogSearchClearHistoryBtn => 'Clear history';

  @override
  String get catalogSearchPopularBrandsTitle => 'Popular designers';

  @override
  String get catalogMenuBrandItem => 'Designers';

  @override
  String get filtersTypeTitle => 'Rent or buy out';

  @override
  String get filtersTypeItemAll => 'All';

  @override
  String get filtersTypeItemRent => 'Rent only';

  @override
  String get filtersTypeItemBuy => 'Buy only';

  @override
  String get brandTitle => 'Designers';

  @override
  String get brandSearchHint => 'Find designer';

  @override
  String get brandEmptyTitle => 'Nothing found';

  @override
  String get deliveryAddressTitle => 'My addresses';

  @override
  String get deliveryAddressEmptyDesc => 'You have not added addresses yet';

  @override
  String get deliveryAddressBtnAdd => 'New address';

  @override
  String get deliveryAddressEditFormTitle => 'Edit address';

  @override
  String get deliveryAddressAddFormTitle => 'New address';

  @override
  String get paymentMethodsTitle => 'My cards';

  @override
  String get paymentMethodsEmptyDesc => 'You can add a new card here or at checkout - it\'s fast and secure. Without adding a card, you won\'t be able to rent or buy things';

  @override
  String get paymentMethodsBtnAdd => 'Add card';

  @override
  String get paymentMethodsAddDesc => 'Your card data and payments comes trough our partner Stripe. Stripe is a certified PCI Service Provider Level 1 which means the most stringent level of security.';

  @override
  String get paymentMethodsAddSecureAlert => 'To check your card, we will debit and immediately refund. To check your card, we will';

  @override
  String get paymentMethodsAddBtnSave => 'Add card';

  @override
  String get paymentMethodsAddBtnDone => 'Ready';

  @override
  String get paymentMethodsAddBtnDelete => 'DELETE CARD';

  @override
  String get paymentMethodsAddMakeDefaultBtn => 'MAKE DEFAULT';

  @override
  String get paymentMethodsAddCancelBtn => 'CANCEL';

  @override
  String get paymentMethodsAddTitle => 'Card for payment';

  @override
  String get paymentMethodsActiveCard => 'Main';

  @override
  String get paymentMethodsHistoryTitle => 'Operations history';

  @override
  String get paymentMethodsFormNumber => 'Card number';

  @override
  String get paymentMethodsFormExpiryDate => 'MM/YY';

  @override
  String get paymentMethodsFormCvv => 'CVV';

  @override
  String get paymentMethodsFormNameOnCard => 'Name on card';

  @override
  String get paymentMethodsFormEmail => 'Email';

  @override
  String get paymentMethodsDeleteAlertTitle => 'Delete card?';

  @override
  String get paymentMethodsDeleteAlertDesc => 'The card will be removed from your profile. For new orders, you will need to link the card again or add another one';

  @override
  String get paymentMethodsDeleteAlertCloseBtn => 'Cancel';

  @override
  String get paymentMethodsDeleteAlertDeleteBtn => 'Delete';

  @override
  String get cardDeleteDialogTitle => 'Delete the card?';

  @override
  String get cardDeleteDialogDesc => 'The card will be removed from your profile. For new orders, you will need to link the card again or add another one';

  @override
  String get cardDeleteDialogCloseBtn => 'Cancel';

  @override
  String get cardDeleteDialogCtaBtn => 'Confirm';

  @override
  String get permissionRequestTitle => 'Interests and Alerts';

  @override
  String get permissionRequestDesc => 'To make it convenient for you to use the application, grant it the following permissions:';

  @override
  String get permissionRequestTrackingTitle => 'Interest Tracking';

  @override
  String get permissionRequestTrackingDesc => 'We analyze your actions in the application to show what you are interested in';

  @override
  String get permissionRequestNotificationTitle => 'Alerts';

  @override
  String get permissionRequestNotificationDesc => 'We will tell you about our promotions and warn you about the status of orders and rentals';

  @override
  String get permissionRequestNotificationActionAllow => 'Allow';

  @override
  String get permissionRequestNotificationActionSkip => 'Remind me later';

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
  String get cartLoadingTitle => 'Bag';

  @override
  String get cartEmptyTitle => 'Your bag is empty...';

  @override
  String get cartEmptyDesc => 'Check out for new arrivals or use the search bar if you\'re looking for something specific';

  @override
  String get cartEmptyBtnCta => 'Go to the catalog';

  @override
  String cartProductItemTariffArenda(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days days',
      many: '$days days',
      few: '$days days',
      one: '$days day',
    );
    return 'Rent for $_temp0';
  }

  @override
  String get cartProductItemTariffBuy => 'Purchase';

  @override
  String get cartSuccessBtn => 'Proceed to checkout';

  @override
  String get cartSuccessScoringProgressBtn => 'We check your data';

  @override
  String get cartSuccessScoringProgressDesc => 'It usually takes about five minutes to check.\nYou can come back here later';

  @override
  String cartGuardTitle(String price) {
    return 'Add Protection [+$price]';
  }

  @override
  String get cartGuardDesc => 'Protection against theft, serious damage and serious contamination. Applies to rentals only';

  @override
  String cartBonusTitle(String bonuses) {
    return 'Spend $bonuses points';
  }

  @override
  String get cartBonusDesc => 'and pay up to 50% of the order';

  @override
  String get cartTotalTitle => 'Total cost';

  @override
  String get cartProductEdit => 'Edit';

  @override
  String get checkoutTitle => 'Placing an order';

  @override
  String get checkoutSetDateTitle => 'Choose a day';

  @override
  String get checkoutSetTimeTitle => 'Choose a time';

  @override
  String get checkoutSetTimeBtn => 'Confirm';

  @override
  String checkoutSuccessTitle(String orderNumber) {
    return 'The order № $orderNumber has been placed';
  }

  @override
  String checkoutSuccessFullPrice(String price) {
    return 'To be paid $price';
  }

  @override
  String checkoutSuccessCardInfo(String number) {
    return '$number';
  }

  @override
  String get checkoutSuccessDeliveryTitle => 'Delivery';

  @override
  String get checkoutSuccessBtn => 'Place an order';

  @override
  String get checkoutSuccessPaymentModalTitle => 'Try on first and pay later';

  @override
  String get checkoutSuccessPaymentModalDesc => 'Payment for the order is made after delivery and try-on are complete. After successful payment you will get a receipt with order information. Try-on is free of charge. The courier will wait for up to 20 minutes. You can reject items that don\'t fit and pay only for the ones you like.';

  @override
  String get checkoutSuccessPaymentModalBtn => 'Okay';

  @override
  String get checkoutCompleteBtn => 'Go to order';

  @override
  String get ordersTitle => 'My orders';

  @override
  String get ordersEmptyTitle => 'You don’t have any orders yet...';

  @override
  String get ordersEmptyDesc => 'You don\'t have any orders yet. Once you rent or buy an item, it will appear here';

  @override
  String ordersDetailsTitle(String orderId) {
    return 'Order $orderId';
  }

  @override
  String get ordersHideCompleted => 'Hide completed';

  @override
  String orderDate(String date) {
    return 'from $date';
  }

  @override
  String orderNumber(String orderNumber) {
    return 'Order $orderNumber';
  }

  @override
  String get orderDetailDeliveryContainerTitle => 'Delivery';

  @override
  String get orderDetailPaymentContainerTitle => 'Payment';

  @override
  String get orderCancelBtn => 'Cancel';

  @override
  String get orderRefundBtn => 'Issue a refund';

  @override
  String get orderExtendRentalBtn => 'Extend rental';

  @override
  String get orderGoToOrderBtn => 'Go to order';

  @override
  String get ordersTabAll => 'All';

  @override
  String get ordersTabActive => 'Active';

  @override
  String get ordersTabCompleted => 'Completed';

  @override
  String get ordersLabelStatusInProcess => 'In process';

  @override
  String ordersLabelStatusHandedOut(String days) {
    return '$days days';
  }

  @override
  String get ordersLabelStatusRenewal => 'Renewal';

  @override
  String get ordersLabelStatusSoldOut => 'Completed';

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
  String get menuProfileOrder => 'My orders';

  @override
  String get menuProfileAddress => 'My addresses';

  @override
  String get menuProfileCards => 'My cards';

  @override
  String get menuProfileBonuses => 'Bonus points';

  @override
  String get menuProfileFavourite => 'Favourites';

  @override
  String get faqProfileHowToRent => 'How rent works';

  @override
  String get faqProfileShippingAndPayment => 'Payment and delivery';

  @override
  String get faqProfileLoyaltyProgram => 'Bonus program';

  @override
  String get faqProfileEarnOnYourStuff => 'List your wardrobe';

  @override
  String get faqProfileAboutUs => 'About Us';

  @override
  String get faqProfileFaq => 'FAQ';

  @override
  String get faqProfileDocuments => 'Legal';

  @override
  String get faqProfileContacts => 'Contact us';

  @override
  String get faqProfileAboutApp => 'About the app';

  @override
  String get scoringWidgetEmptyTitle => 'Verify your profile';

  @override
  String get scoringWidgetEmptyDesc => 'Rent things without collateral and with reliable protection';

  @override
  String get scoringWidgetRejectedTitle => 'Rent is not available';

  @override
  String get scoringWidgetRejectedDesc => 'Found a fake passport, rental of things is not available for you';

  @override
  String get scoringWidgetProcessingTitle => '';

  @override
  String get scoringWidgetProcessingDesc => 'Checking your profile. It takes about five minutes';

  @override
  String get sortTitle => 'Sort';

  @override
  String get sortDefault => 'Our picks';

  @override
  String get sortCreatedAtDesc => 'Newest';

  @override
  String get sortPriceDesc => 'Price, low to high';

  @override
  String get sortPriceAsc => 'Price, high to low';

  @override
  String productCardRentPrice(Object price) {
    return 'Rent from $price';
  }

  @override
  String productBuyPrice(String price) {
    return 'Buy for $price';
  }

  @override
  String get productSizeTitle => 'Size';

  @override
  String get productSizeGridTitle => 'Size guide';

  @override
  String get productRentalPeriodTitle => 'Rental period';

  @override
  String get productRentalPeriodInputTitle => 'Rental dates';

  @override
  String productRentalPeriodRange(String start, String finish) {
    return 'from $start to $finish';
  }

  @override
  String get productRentBtn => 'Add to Bag';

  @override
  String get productBuyBtn => 'Buy out';

  @override
  String get productColorTitle => 'Color';

  @override
  String get productQuestionsTitle => 'See also';

  @override
  String get productQuestions1 => 'How to buy items';

  @override
  String get productQuestions2 => 'Delivery, payment and returns';

  @override
  String get productDetailsTitle => 'Details';

  @override
  String get productDetailsSubtitle => 'Content';

  @override
  String get productCollectionTitle => 'In sets';

  @override
  String get productRecommendationTitle => 'Complete the look';

  @override
  String get productCalendarCompleteBtn => 'Confirm';

  @override
  String get productIsNotAvailable => 'The product is not available';

  @override
  String get productFaqHowRentingWorksTitle => 'How renting works';

  @override
  String get productFaqHowRentingWorksDesc => 'Try on first and pay later. Step-by-step guide to rental and buy-out of clothing and accessories - with your online cloud wardrobe';

  @override
  String get calendarRangeTextTitleStart => 'Start of rent';

  @override
  String get calendarRangeTextTitleEnd => 'End of rental';

  @override
  String get modalCardsAddCardTitle => 'Card for payment';

  @override
  String get modalCardsAddCardDesc => 'You can add a new card here or at checkout — it\'s fast and safe. Without adding a card, you will not be able to rent or buy things';

  @override
  String get modalCardsAddCardBtn => 'Add card';

  @override
  String get modalDeliveryTitle => 'My addresses';

  @override
  String get modalDeliveryAddAddressDesc => 'You can add a new card here or at checkout — it\'s fast and safe. Without adding a card, you will not be able to rent or buy things';

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
