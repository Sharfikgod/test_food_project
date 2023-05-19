import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'localizations_en.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/localizations.dart';
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

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
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
    Locale('en')
  ];

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get started'**
  String get getStarted;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign-up'**
  String get signUp;

  /// No description provided for @signUpAuth.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get signUpAuth;

  /// No description provided for @emailAddress.
  ///
  /// In en, this message translates to:
  /// **'Email address'**
  String get emailAddress;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get forgotPassword;

  /// No description provided for @repeatPassword.
  ///
  /// In en, this message translates to:
  /// **'Repeat password'**
  String get repeatPassword;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @orders.
  ///
  /// In en, this message translates to:
  /// **'orders'**
  String get orders;

  /// No description provided for @offerAndPromo.
  ///
  /// In en, this message translates to:
  /// **'offer and promo'**
  String get offerAndPromo;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get privacyPolicy;

  /// No description provided for @security.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get security;

  /// No description provided for @signOut.
  ///
  /// In en, this message translates to:
  /// **'Sign-out'**
  String get signOut;

  /// No description provided for @delicious.
  ///
  /// In en, this message translates to:
  /// **'Delicious \nfood for you'**
  String get delicious;

  /// No description provided for @deliciousSmall.
  ///
  /// In en, this message translates to:
  /// **'Delicious food for you'**
  String get deliciousSmall;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @foods.
  ///
  /// In en, this message translates to:
  /// **'Foods'**
  String get foods;

  /// No description provided for @drinks.
  ///
  /// In en, this message translates to:
  /// **'Drinks'**
  String get drinks;

  /// No description provided for @sauce.
  ///
  /// In en, this message translates to:
  /// **'Sauces'**
  String get sauce;

  /// No description provided for @soupAndAvebe.
  ///
  /// In en, this message translates to:
  /// **'Soup and avebe'**
  String get soupAndAvebe;

  /// No description provided for @meatAndFish.
  ///
  /// In en, this message translates to:
  /// **'Meat and fish'**
  String get meatAndFish;

  /// No description provided for @pizza.
  ///
  /// In en, this message translates to:
  /// **'Pizza'**
  String get pizza;

  /// No description provided for @avebe.
  ///
  /// In en, this message translates to:
  /// **'Avebe'**
  String get avebe;

  /// No description provided for @snacks.
  ///
  /// In en, this message translates to:
  /// **'Snacks'**
  String get snacks;

  /// No description provided for @greekChicken.
  ///
  /// In en, this message translates to:
  /// **'Greek chicken'**
  String get greekChicken;

  /// No description provided for @salads.
  ///
  /// In en, this message translates to:
  /// **'Salads'**
  String get salads;

  /// No description provided for @choppedFastCheap.
  ///
  /// In en, this message translates to:
  /// **'Chopped fast & cheap'**
  String get choppedFastCheap;

  /// No description provided for @simpleGreek.
  ///
  /// In en, this message translates to:
  /// **'Simple greek'**
  String get simpleGreek;

  /// No description provided for @veggieTomatoMix.
  ///
  /// In en, this message translates to:
  /// **'Veggie\ntomato mix'**
  String get veggieTomatoMix;

  /// No description provided for @doorDelivery.
  ///
  /// In en, this message translates to:
  /// **'Door delivery'**
  String get doorDelivery;

  /// No description provided for @itemNotFound.
  ///
  /// In en, this message translates to:
  /// **'Item not found'**
  String get itemNotFound;

  /// No description provided for @trySearchingTheItemWith.
  ///
  /// In en, this message translates to:
  /// **'Try searching the item with a different keyword.'**
  String get trySearchingTheItemWith;

  /// No description provided for @deliveryInfo.
  ///
  /// In en, this message translates to:
  /// **'Delivery info'**
  String get deliveryInfo;

  /// No description provided for @addToCart.
  ///
  /// In en, this message translates to:
  /// **'Add to cart'**
  String get addToCart;

  /// No description provided for @returnPolicy.
  ///
  /// In en, this message translates to:
  /// **'Return policy'**
  String get returnPolicy;

  /// No description provided for @allOurFoodsAreDoubleChecked.
  ///
  /// In en, this message translates to:
  /// **'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.'**
  String get allOurFoodsAreDoubleChecked;

  /// No description provided for @deliveredBetweenMonday.
  ///
  /// In en, this message translates to:
  /// **'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm'**
  String get deliveredBetweenMonday;

  /// No description provided for @cart.
  ///
  /// In en, this message translates to:
  /// **'Cart'**
  String get cart;

  /// No description provided for @cartIsEmpty.
  ///
  /// In en, this message translates to:
  /// **'Cart is empty'**
  String get cartIsEmpty;

  /// No description provided for @addNewItemsToCart.
  ///
  /// In en, this message translates to:
  /// **'Add new items to cart'**
  String get addNewItemsToCart;

  /// No description provided for @checkout.
  ///
  /// In en, this message translates to:
  /// **'Checkout'**
  String get checkout;

  /// No description provided for @swipeOnAnItemToDelete.
  ///
  /// In en, this message translates to:
  /// **'swipe on an item to delete'**
  String get swipeOnAnItemToDelete;

  /// No description provided for @delivery.
  ///
  /// In en, this message translates to:
  /// **'Delivery'**
  String get delivery;

  /// No description provided for @addressDetails.
  ///
  /// In en, this message translates to:
  /// **'Address details'**
  String get addressDetails;

  /// No description provided for @change.
  ///
  /// In en, this message translates to:
  /// **'change'**
  String get change;

  /// No description provided for @deliveryMethod.
  ///
  /// In en, this message translates to:
  /// **'Delivery method.'**
  String get deliveryMethod;

  /// No description provided for @pickUp.
  ///
  /// In en, this message translates to:
  /// **'Pick up'**
  String get pickUp;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @proceedToPayment.
  ///
  /// In en, this message translates to:
  /// **'Proceed to payment'**
  String get proceedToPayment;

  /// No description provided for @payment.
  ///
  /// In en, this message translates to:
  /// **'Payment'**
  String get payment;

  /// No description provided for @paymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Payment method'**
  String get paymentMethod;

  /// No description provided for @card.
  ///
  /// In en, this message translates to:
  /// **'Card'**
  String get card;

  /// No description provided for @pleaseNote.
  ///
  /// In en, this message translates to:
  /// **'Please note'**
  String get pleaseNote;

  /// No description provided for @deliveryToMainland.
  ///
  /// In en, this message translates to:
  /// **'Delivery to Mainland'**
  String get deliveryToMainland;

  /// No description provided for @deliveryToIsland.
  ///
  /// In en, this message translates to:
  /// **'Delivery to island'**
  String get deliveryToIsland;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @proceed.
  ///
  /// In en, this message translates to:
  /// **'Proceed'**
  String get proceed;

  /// No description provided for @favorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favorites;

  /// No description provided for @information.
  ///
  /// In en, this message translates to:
  /// **'Information'**
  String get information;

  /// No description provided for @paypal.
  ///
  /// In en, this message translates to:
  /// **'Paypal'**
  String get paypal;

  /// No description provided for @bankAccount.
  ///
  /// In en, this message translates to:
  /// **'Bank account'**
  String get bankAccount;

  /// No description provided for @history.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get history;

  /// No description provided for @noHistoryYet.
  ///
  /// In en, this message translates to:
  /// **'No history yet'**
  String get noHistoryYet;

  /// No description provided for @hitTheOrangeButtonDown.
  ///
  /// In en, this message translates to:
  /// **'Hit the orange button down below to Create an order'**
  String get hitTheOrangeButtonDown;

  /// No description provided for @orderDetails.
  ///
  /// In en, this message translates to:
  /// **'Order Details'**
  String get orderDetails;

  /// No description provided for @reorder.
  ///
  /// In en, this message translates to:
  /// **'Reorder'**
  String get reorder;

  /// No description provided for @noInternetConnection.
  ///
  /// In en, this message translates to:
  /// **'No internet Connection'**
  String get noInternetConnection;

  /// No description provided for @yourInternetConnection.
  ///
  /// In en, this message translates to:
  /// **'Your internet connection is currently not available please check or try again.'**
  String get yourInternetConnection;

  /// No description provided for @tryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get tryAgain;

  /// No description provided for @order.
  ///
  /// In en, this message translates to:
  /// **'Order'**
  String get order;

  /// No description provided for @foodForEveryone.
  ///
  /// In en, this message translates to:
  /// **'Food for\nEveryone'**
  String get foodForEveryone;

  /// No description provided for @uiScreen.
  ///
  /// In en, this message translates to:
  /// **'UI Screen'**
  String get uiScreen;

  /// No description provided for @clickMe.
  ///
  /// In en, this message translates to:
  /// **'Click me'**
  String get clickMe;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @enterTheName.
  ///
  /// In en, this message translates to:
  /// **'Enter the username'**
  String get enterTheName;

  /// No description provided for @errorRegistration.
  ///
  /// In en, this message translates to:
  /// **'The user is already registered'**
  String get errorRegistration;

  /// No description provided for @usernameIsNotWritten.
  ///
  /// In en, this message translates to:
  /// **'Username is not written'**
  String get usernameIsNotWritten;

  /// No description provided for @passwordIsNotWritten.
  ///
  /// In en, this message translates to:
  /// **'Password is not written'**
  String get passwordIsNotWritten;

  /// No description provided for @enterAValidEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email address'**
  String get enterAValidEmail;

  /// No description provided for @enterAValidPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid password'**
  String get enterAValidPassword;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @favorite.
  ///
  /// In en, this message translates to:
  /// **'Favorite'**
  String get favorite;

  /// No description provided for @person.
  ///
  /// In en, this message translates to:
  /// **'Person'**
  String get person;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
