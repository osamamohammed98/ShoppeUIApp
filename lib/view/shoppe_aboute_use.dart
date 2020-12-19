import 'package:flutter/material.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/style.dart';

class ShoppeAboutUs extends StatelessWidget {
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
          "عن التطبيق",
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
              "عن التطبيق",
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
            SizedBox(
              height: size.height * 0.028,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                buildCircleAvatar(icon: Icons.share),
                SizedBox(
                  width: size.height * 0.006,
                ),
                buildCircleAvatar(icon: Icons.phone),
              ],
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
