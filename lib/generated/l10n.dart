// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `skip`
  String get skip {
    return Intl.message(
      'skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Discover a unique shopping experience with FruitHUB! Explore our wide selection of premium fresh fruits and enjoy the best deals and top-quality products.`
  String get subtitleOnborder1 {
    return Intl.message(
      'Discover a unique shopping experience with FruitHUB! Explore our wide selection of premium fresh fruits and enjoy the best deals and top-quality products.',
      name: 'subtitleOnborder1',
      desc: '',
      args: [],
    );
  }

  /// `ًWelocme to`
  String get titleOnborder1 {
    return Intl.message(
      'ًWelocme to',
      name: 'titleOnborder1',
      desc: '',
      args: [],
    );
  }

  /// `We offer you the finest carefully selected fruits. Check out details, images, and reviews to make sure you choose the perfect fruit.`
  String get subtitleOnborder2 {
    return Intl.message(
      'We offer you the finest carefully selected fruits. Check out details, images, and reviews to make sure you choose the perfect fruit.',
      name: 'subtitleOnborder2',
      desc: '',
      args: [],
    );
  }

  /// `Search and Shop`
  String get titleOnborder2 {
    return Intl.message(
      'Search and Shop',
      name: 'titleOnborder2',
      desc: '',
      args: [],
    );
  }

  /// `ٍStart now`
  String get textButtonOnBorder2 {
    return Intl.message(
      'ٍStart now',
      name: 'textButtonOnBorder2',
      desc: '',
      args: [],
    );
  }

  /// `login`
  String get login {
    return Intl.message(
      'login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Email address`
  String get emailAddress {
    return Intl.message(
      'Email address',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get password {
    return Intl.message(
      'password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `forget Password ?`
  String get forgetPassword {
    return Intl.message(
      'forget Password ?',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `don't have an account?`
  String get dontHaveAccount {
    return Intl.message(
      'don\'t have an account?',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `create account`
  String get createAccount {
    return Intl.message(
      'create account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get or {
    return Intl.message(
      'or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `login with Google`
  String get loginWithGoogle {
    return Intl.message(
      'login with Google',
      name: 'loginWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `login with Facebook`
  String get loginWithFacebook {
    return Intl.message(
      'login with Facebook',
      name: 'loginWithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `login with Apple`
  String get loginWithApple {
    return Intl.message(
      'login with Apple',
      name: 'loginWithApple',
      desc: '',
      args: [],
    );
  }

  /// `new account`
  String get newAccount {
    return Intl.message(
      'new account',
      name: 'newAccount',
      desc: '',
      args: [],
    );
  }

  /// `Full name`
  String get fullName {
    return Intl.message(
      'Full name',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `By creating an account, you agree to `
  String get agreeAccount {
    return Intl.message(
      'By creating an account, you agree to ',
      name: 'agreeAccount',
      desc: '',
      args: [],
    );
  }

  /// `our Terms and Conditions.`
  String get ourTermsAndConditions {
    return Intl.message(
      'our Terms and Conditions.',
      name: 'ourTermsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `create new account`
  String get createNewAccountant {
    return Intl.message(
      'create new account',
      name: 'createNewAccountant',
      desc: '',
      args: [],
    );
  }

  /// `you already have an account?`
  String get youAlreadyHaveAnAccount {
    return Intl.message(
      'you already have an account?',
      name: 'youAlreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `this field is required`
  String get theFieldIsRequired {
    return Intl.message(
      'this field is required',
      name: 'theFieldIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `You have already registered, please log in`
  String get emailAlreadyExists {
    return Intl.message(
      'You have already registered, please log in',
      name: 'emailAlreadyExists',
      desc: '',
      args: [],
    );
  }

  /// `The password provided is too weak.`
  String get weakPassword {
    return Intl.message(
      'The password provided is too weak.',
      name: 'weakPassword',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred.please try again later`
  String get tryAgainLater {
    return Intl.message(
      'An error occurred.please try again later',
      name: 'tryAgainLater',
      desc: '',
      args: [],
    );
  }

  /// `You must agree to the terms and conditions.`
  String get doYouHaveAcceptForConditionAndterms {
    return Intl.message(
      'You must agree to the terms and conditions.',
      name: 'doYouHaveAcceptForConditionAndterms',
      desc: '',
      args: [],
    );
  }

  /// `Email or password is incorrect`
  String get userNotFound {
    return Intl.message(
      'Email or password is incorrect',
      name: 'userNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Email or password is incorrect`
  String get wrongPassword {
    return Intl.message(
      'Email or password is incorrect',
      name: 'wrongPassword',
      desc: '',
      args: [],
    );
  }

  /// `Email not found`
  String get emailNotFound {
    return Intl.message(
      'Email not found',
      name: 'emailNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Email is not verified`
  String get emailIsNotVerified {
    return Intl.message(
      'Email is not verified',
      name: 'emailIsNotVerified',
      desc: '',
      args: [],
    );
  }

  /// `Email is not valid`
  String get invalidEmail {
    return Intl.message(
      'Email is not valid',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Search about`
  String get searchAbout {
    return Intl.message(
      'Search about',
      name: 'searchAbout',
      desc: '',
      args: [],
    );
  }

  /// `more`
  String get more {
    return Intl.message(
      'more',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Best Seller`
  String get bestSeler {
    return Intl.message(
      'Best Seller',
      name: 'bestSeler',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
