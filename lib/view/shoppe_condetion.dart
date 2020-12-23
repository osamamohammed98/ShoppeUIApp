import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/style.dart';

class ShoppeTermsConditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    safeAreaGreen;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: colorGreen,
        centerTitle: true,
        title: Text(
          "${translator.translate("key23")}",//key23
          style: textAppBar,
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(right: size.width * 0.064 ,left:size.width * 0.064  ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: Image.asset("assets/img/logo.png"),
            ),
            Text(
              "${translator.translate("key23")}",//key23
              style: textMid.copyWith(color: colorGreen, fontSize: 17),
            ),
            SizedBox(
              height: size.height * 0.018,
            ),
            Text(/*key 5*/
              "${translator.translate("key5")}",
              overflow: TextOverflow.clip,
              textAlign: TextAlign.end,
              style: textNormal.copyWith(color: colorBlack, fontSize: 12),
            ),

          ],
        ),
      ),
    );
  }

  CircleAvatar buildCircleAvatar({IconData icon}) {
    return CircleAvatar(
      backgroundColor: colorGreen,
      child: Icon(
        icon,
        color: colorWhite,
      ),
    );
  }
}
