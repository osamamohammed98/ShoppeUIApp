import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:shoppe_app/component/drawer_list_item.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/custom_router.gr.dart';
import 'package:shoppe_app/util/style.dart';


class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Drawer(
      child: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(gradient: linearGradient),
        child: ListView(
        physics: NeverScrollableScrollPhysics(),children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: colorGreen,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      translator.translate("key59"),//key59
                      style: textMid.copyWith(color: colorWhite, fontSize: 16),
                    ),
                    Text(
                      translator.translate("key60"),//key60
                      style: textMid.copyWith(fontSize: 14),
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: colorTrans,
                  backgroundImage: AssetImage("assets/img/Oval Copy.png"),
                  radius: 40,
                ),
              ],
            ),
          ),
          Container(
            width: size.width,
            height: size.height,
            child: Column(
              children: [
                DrawerItemList(
                  orangText: "EN",
                  title: translator.translate("key61"),//key61
                  icon: "assets/svg/language.svg",
                  onClick: () {
                    translator.setNewLanguage(
                      context,
                      newLanguage: translator.currentLanguage == 'ar' ? 'en' : 'ar',
                      remember: true,
                      restart: true,
                    );
                    ExtendedNavigator.root.pop();
                  },
                  isLeading: true,
                ),
                Divider(
                  thickness: 1,
                  color: colorBlack,
                ),
                DrawerItemList(
                  title: translator.translate("key19"),//key19
                  icon: "assets/svg/folder.svg",
                  onClick: () {
                    ExtendedNavigator.root.push(Routes.shoppeMessagePage);
                    ExtendedNavigator.root.pop();
                  },
                ),
                Divider(
                  thickness: 1,
                  color: colorBlack,
                ),
                DrawerItemList(
                  title: translator.translate("key62"),//key62
                  icon: "assets/svg/box.svg",
                  onClick: () {
                    ExtendedNavigator.of(context).push(Routes.shoppeProfileEdit);
                    ExtendedNavigator.root.pop();
                  },
                ),
                Divider(
                  thickness: 1,
                  color: colorBlack,
                ),
                DrawerItemList(
                  orangText: "20",
                  title: translator.translate("key63"),//key63
                  icon: "assets/svg/box.svg",
                  onClick: () {
                    ExtendedNavigator.root.push(Routes.shoppeProductPage);
                    ExtendedNavigator.root.pop();
                  },
                  isLeading: true,
                ),
                Divider(
                  thickness: 1,
                  color: colorBlack,
                ),
                DrawerItemList(
                  title: translator.translate("key24"),//key24
                  icon: "assets/svg/phone-call.svg",
                  onClick: () {
                    ExtendedNavigator.root.push(Routes.shoppeContactUs);
                    ExtendedNavigator.root.pop();
                  },
                ),
                Divider(
                  thickness: 1,
                  color: colorBlack,
                ),
                SizedBox(
                  height: size.height / 8.5,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical:size.height * 0.055,horizontal:size.width * 0.030),
                  width: size.width,
                  height: size.height * 0.35,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img/wave.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: (){
                          ExtendedNavigator.root.pop();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              translator.translate("key64"),//key64
                              textAlign: TextAlign.end,
                              style: textMid.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: size.width * 0.015,),
                            Icon(Icons.logout ,color: colorBlack,),

                          ],
                        ),
                      ),
                      Text(""),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap:(){
                                ExtendedNavigator.root.push(Routes.shoppeTermsConditions);
                                ExtendedNavigator.root.pop();
                              },
                              child: Text(
                                translator.translate("key23"),//key23
                                textAlign: TextAlign.end,
                                style: textMid.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: (){
                                ExtendedNavigator.root.push(Routes.shoppeAboutUs);
                                ExtendedNavigator.root.pop();
                              },
                              child: Text(
                                translator.translate("key3"),//key3
                                textAlign: TextAlign.end,
                                style: textMid.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(""),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

