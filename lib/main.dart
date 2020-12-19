import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/custom_router.dart';
import 'package:shoppe_app/util/custom_router.gr.dart';
import 'package:shoppe_app/view/intro_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoppe App',
      theme: ThemeData(
        scaffoldBackgroundColor: colorWhite,
        primaryColor: colorGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
     /* home: IntroPage(),*/
      builder: ExtendedNavigator.builder<CustomRouter>(router: CustomRouter()),
    );
  }
}


