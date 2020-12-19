// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../view/intro_view.dart';
import '../view/shoppe_aboute_use.dart';
import '../view/shoppe_clinte.dart';
import '../view/shoppe_condetion.dart';
import '../view/shoppe_contact_us.dart';
import '../view/shoppe_home_page.dart';
import '../view/shoppe_mesaage_page.dart';
import '../view/shoppe_product_page.dart';
import '../view/shoppe_profile_edit_page.dart';
import '../view/shoppe_store_page.dart';
import '../view/shoppe_user_registration.dart';
import '../view/store_registration_page.dart';

class Routes {
  static const String introPage = '/';
  static const String shoppeClintPage = '/shoppe-clint-page';
  static const String shoppeStoreRegister = '/shoppe-store-register';
  static const String shoppeUserRegistration = '/shoppe-user-registration';
  static const String shoppeHomePage = '/shoppe-home-page';
  static const String shoppeProfileEdit = '/shoppe-profile-edit';
  static const String shoppeContactUs = '/shoppe-contact-us';
  static const String shoppeAboutUs = '/shoppe-about-us';
  static const String shoppeTermsConditions = '/shoppe-terms-conditions';
  static const String shoppeMessagePage = '/shoppe-message-page';
  static const String shoppeStorePage = '/shoppe-store-page';
  static const String shoppeProductPage = '/shoppe-product-page';
  static const all = <String>{
    introPage,
    shoppeClintPage,
    shoppeStoreRegister,
    shoppeUserRegistration,
    shoppeHomePage,
    shoppeProfileEdit,
    shoppeContactUs,
    shoppeAboutUs,
    shoppeTermsConditions,
    shoppeMessagePage,
    shoppeStorePage,
    shoppeProductPage,
  };
}

class CustomRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.introPage, page: IntroPage),
    RouteDef(Routes.shoppeClintPage, page: ShoppeClintPage),
    RouteDef(Routes.shoppeStoreRegister, page: ShoppeStoreRegister),
    RouteDef(Routes.shoppeUserRegistration, page: ShoppeUserRegistration),
    RouteDef(Routes.shoppeHomePage, page: ShoppeHomePage),
    RouteDef(Routes.shoppeProfileEdit, page: ShoppeProfileEdit),
    RouteDef(Routes.shoppeContactUs, page: ShoppeContactUs),
    RouteDef(Routes.shoppeAboutUs, page: ShoppeAboutUs),
    RouteDef(Routes.shoppeTermsConditions, page: ShoppeTermsConditions),
    RouteDef(Routes.shoppeMessagePage, page: ShoppeMessagePage),
    RouteDef(Routes.shoppeStorePage, page: ShoppeStorePage),
    RouteDef(Routes.shoppeProductPage, page: ShoppeProductPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    IntroPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => IntroPage(),
        settings: data,
      );
    },
    ShoppeClintPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ShoppeClintPage(),
        settings: data,
      );
    },
    ShoppeStoreRegister: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ShoppeStoreRegister(),
        settings: data,
      );
    },
    ShoppeUserRegistration: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ShoppeUserRegistration(),
        settings: data,
      );
    },
    ShoppeHomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ShoppeHomePage(),
        settings: data,
      );
    },
    ShoppeProfileEdit: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ShoppeProfileEdit(),
        settings: data,
      );
    },
    ShoppeContactUs: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ShoppeContactUs(),
        settings: data,
      );
    },
    ShoppeAboutUs: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ShoppeAboutUs(),
        settings: data,
      );
    },
    ShoppeTermsConditions: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ShoppeTermsConditions(),
        settings: data,
      );
    },
    ShoppeMessagePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ShoppeMessagePage(),
        settings: data,
      );
    },
    ShoppeStorePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ShoppeStorePage(),
        settings: data,
      );
    },
    ShoppeProductPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ShoppeProductPage(),
        settings: data,
      );
    },
  };
}
