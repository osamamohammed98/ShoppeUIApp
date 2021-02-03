
import 'package:auto_route/auto_route_annotations.dart';
import 'package:shoppe_app/view/shoppe_add_new_adds.dart';
import 'package:shoppe_app/view/intro_view.dart';
import 'package:shoppe_app/view/shoppe_aboute_use.dart';
import 'package:shoppe_app/view/shoppe_chat_page.dart';
import 'package:shoppe_app/view/shoppe_clinte.dart';
import 'package:shoppe_app/view/shoppe_condetion.dart';
import 'package:shoppe_app/view/shoppe_contact_us.dart';
import 'package:shoppe_app/view/shoppe_home_page.dart';
import 'package:shoppe_app/view/shoppe_mesaage_page.dart';
import 'package:shoppe_app/view/shoppe_product_page.dart';
import 'package:shoppe_app/view/shoppe_profile_edit_page.dart';
import 'package:shoppe_app/view/shoppe_prouduct_details.dart';
import 'package:shoppe_app/view/shoppe_sigin_page.dart';
import 'package:shoppe_app/view/shoppe_store_page.dart';
import 'package:shoppe_app/view/shoppe_user_registration.dart';
import 'package:shoppe_app/view/store_registration_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: IntroPage, initial: true),
    MaterialRoute(page: ShoppeClintPage,),
    MaterialRoute(page: ShoppeStoreRegister,),
    MaterialRoute(page: ShoppeUserRegistration,),
    MaterialRoute(page: ShoppeHomePage,),
    MaterialRoute(page: ShoppeProfileEdit,),
    MaterialRoute(page: ShoppeContactUs,),
    MaterialRoute(page: ShoppeAboutUs,),
    MaterialRoute(page: ShoppeTermsConditions,),
    MaterialRoute(page: ShoppeMessagePage,),
    MaterialRoute(page: ShoppeStorePage,),
    MaterialRoute(page: ShoppeProductPage,),
    MaterialRoute(page: ShoppeProductDetails,),
    MaterialRoute(page: ShoppeChatPage,),
    MaterialRoute(page: ShoppeAddNewAdds,),
    MaterialRoute(page: ShoppeLogInPage,),
  ],
)
class $CustomRouter{}