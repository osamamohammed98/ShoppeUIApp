import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shoppe_app/util/custom_router.gr.dart';
import 'package:shoppe_app/util/style.dart';


class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    safeAreaLight;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: size.width,
            height: size.height / 1.2,
            child: Image.asset("assets/img/logo.png"),
          ),
          Container(
            alignment: Alignment.center,
            width: size.width,
            height: size.height / 11,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FlatButton(
                    onPressed: () {
                      ExtendedNavigator.root.push(Routes.shoppeHomePage);
                    },
                    child: Text(
                      "تخطي",
                      style: textBtn,
                    ),),
                FlatButton(
                    onPressed: () {
                      ExtendedNavigator.root.push(Routes.shoppeClintPage);
                    },
                    child: Text(
                      "تسجيل",
                      style: textBtn,
                    ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
