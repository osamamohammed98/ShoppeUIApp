import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'color.dart';

var hideStatsBar = SystemChrome.setEnabledSystemUIOverlays([
  SystemUiOverlay.bottom,
]);

var safeAreaLight =
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
  statusBarColor: colorWhite,
  statusBarBrightness: Brightness.dark,
  statusBarIconBrightness: Brightness.dark,
  systemNavigationBarIconBrightness: Brightness.dark,
  systemNavigationBarColor: colorWhite,
));

var safeAreaGreen = SystemChrome.setSystemUIOverlayStyle(
  SystemUiOverlayStyle.light.copyWith(
    statusBarColor: colorGreen,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: colorWhite,
  ),
);

var safeAreaGreenBottom = SystemChrome.setSystemUIOverlayStyle(
  SystemUiOverlayStyle.light.copyWith(
    statusBarColor: colorGreen,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: colorGreenTrans,
  ),
);
var textBtn = TextStyle(color: colorGreen, fontSize: 20);

var textBtnLight = TextStyle(color: colorWhite, fontSize: 20);

var textAppBar =
    TextStyle(fontSize: 30, color: colorWhite, fontWeight: FontWeight.w400);

var textMid =
    TextStyle(fontSize: 15, color: colorBlack, fontWeight: FontWeight.normal);

var textNormal =
    TextStyle(fontSize: 13, color: colorNormal, fontWeight: FontWeight.normal);

var textHint = TextStyle(
  color: colorNormal,
  fontSize: 12,
);

var shadow = BoxShadow(
  color: colorBlack.withOpacity(0.1),
  blurRadius: 30,
  offset: Offset(0, 8),
);

LinearGradient linearGradient = LinearGradient(
  colors: [
    Color(0xFF6A8524),
    Color(0xFF354312),
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);