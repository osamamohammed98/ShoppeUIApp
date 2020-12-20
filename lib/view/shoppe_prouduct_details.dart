import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/style.dart';

class ShoppeProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    safeAreaGreen;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        systemNavigationBarColor: colorWhite,
        systemNavigationBarIconBrightness: Brightness.dark));
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: colorGreen,
        title: Text(
          "تفاصيل المنتج ",
          style: textAppBar,
        ),
      ),
      body: Container(
        color: colorGreenTrans,
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            Image.asset(
              "assets/img/pro_big.png",
              width: size.width,
              height: size.height * 0.34,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: RaisedButton(
                onPressed: () {},
                color: colorGreen,
                child: Text(
                  "د.ك" + " 5 ",
                  style: textMid.copyWith(color: colorWhite),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.036),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "زهرة اللوتس ",
                    style: textMid.copyWith(color: colorBlack, fontSize: 17),
                  ),
                  SizedBox(
                    height: size.height * 0.018,
                  ),
                  Text(
                    "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص, الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق",
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.end,
                    style: textNormal.copyWith(color: colorBlack, fontSize: 12),
                  ),
                  SizedBox(
                    height: size.height * 0.058,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        " مشتل نايف ",
                        style:
                            textMid.copyWith(color: colorBlack, fontSize: 15),
                      ),
                      SizedBox(
                        width: size.width * 0.038,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/img/Oval Copy.png"),
                        radius: size.width * 0.050,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/svg/close-envelope (1).svg"),
              label: ""),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/svg/phone-receiver (2).svg"),
              label: ""),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/svg/exclamation-mark.svg"),
              label: ""),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/svg/share (7).svg"), label: ""),
        ],
      ),
    );
  }
}
