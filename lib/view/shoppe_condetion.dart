import 'package:flutter/material.dart';
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
          "الشروط والاحكام",
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
              "الشروط والاحكام",
              style: textMid.copyWith(color: colorGreen, fontSize: 17),
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
