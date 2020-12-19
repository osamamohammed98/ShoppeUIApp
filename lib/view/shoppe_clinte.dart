import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppe_app/component/circel_register_btn.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/custom_router.gr.dart';
import 'package:shoppe_app/util/style.dart';

class ShoppeClintPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    safeAreaGreen;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: colorWhite,
      appBar: AppBar(
        backgroundColor: colorGreen,
        centerTitle: true,
        title: Text(
          "التسجيل",
          style: textAppBar,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.symmetric(
                  horizontal: size.width * 0.068, vertical: size.height * 0.053),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    " مستخدم جديد",
                    style: textMid,
                  ),
                  Text(
                    "يمكنك تسجيل عضوية مجاناً",
                    style: textNormal,
                  ),
                ],
              ),
            ),
            Container(
              width: size.width,
              height: size.height / 1.4,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircalRegisterBtn(
                    image: "assets/img/shoppe.png",
                    fun: () {
                      ExtendedNavigator.root.push(Routes.shoppeStoreRegister);
                    },
                  ),
                  CircalRegisterBtn(
                    image: "assets/img/users.png",
                    fun: () {
                      ExtendedNavigator.of(context).push(Routes.shoppeUserRegistration);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

