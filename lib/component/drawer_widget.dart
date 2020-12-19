import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                      "مشتل نايف الزراعي ",
                      style: textMid.copyWith(color: colorWhite, fontSize: 16),
                    ),
                    Text(
                      "مشتل",
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
                  title: "اللغه",
                  icon: "assets/svg/language.svg",
                  onClick: () {
                    ExtendedNavigator.root.pop();
                  },
                  isLeading: true,
                ),
                Divider(
                  thickness: 1,
                  color: colorBlack,
                ),
                DrawerItemList(
                  title: "الرسائل",
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
                  title: "لوحة الاداره ",
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
                  title: "المنتجات",
                  icon: "assets/svg/box.svg",
                  onClick: () {
                    ExtendedNavigator.root.pop();
                  },
                  isLeading: true,
                ),
                Divider(
                  thickness: 1,
                  color: colorBlack,
                ),
                DrawerItemList(
                  title: "اتصل بنا ",
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
                              "خروج",
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
                          InkWell(
                            onTap:(){
                              ExtendedNavigator.root.push(Routes.shoppeTermsConditions);
                              ExtendedNavigator.root.pop();
                            },
                            child: Text(
                              "الشروط والاحكام",
                              textAlign: TextAlign.end,
                              style: textMid.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              ExtendedNavigator.root.push(Routes.shoppeAboutUs);
                              ExtendedNavigator.root.pop();
                            },
                            child: Text(
                              "عن التطبيق",
                              textAlign: TextAlign.end,
                              style: textMid.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
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

