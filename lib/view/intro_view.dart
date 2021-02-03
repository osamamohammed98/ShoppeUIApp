import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:shoppe_app/backend/server.dart';
import 'package:shoppe_app/util/custom_router.gr.dart';
import 'package:shoppe_app/util/style.dart';


class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {

  @override
  void initState() {
    super.initState();
    if(getUserId() != null){
      ExtendedNavigator.root.popAndPush(Routes.shoppeHomePage);
    }
  }

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
                      "${translator.translate("key1")}",//key1
                      style: textBtn,
                    ),),
                FlatButton(
                    onPressed: () {
                      ExtendedNavigator.root.push(Routes.shoppeClintPage);
                    },
                    child: Text(
                      "${translator.translate("key2")}",//key2
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
