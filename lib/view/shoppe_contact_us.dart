import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shoppe_app/component/btn_widget.dart';
import 'package:shoppe_app/component/text_field_widget.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/custom_router.gr.dart';
import 'package:shoppe_app/util/style.dart';

class ShoppeContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    safeAreaGreen;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: colorGreen,
        title: Text(
          "اتصل بنا",
          style: textAppBar,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: size.width * 0.064,
                  vertical: size.height * 0.051),
              width: size.width,
              height: size.height,
              alignment: Alignment.topCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextFieldWidget(hint: "البريد الالكتروني", type: TextInputType.emailAddress,),
                  TextFieldWidget(hint: "رقم الهاتف", type: TextInputType.phone,),
                  TextFieldWidget(hint: " عنوان الشكوى", type: TextInputType.text,),
                  SizedBox(
                    height: size.height * 0.021,
                  ),
                  Text(
                    "تسجيل العملاء"+"\t\t\t",
                    style: textMid,
                  ),
                  SizedBox(
                    height: size.height * 0.011,
                  ),
                  TextField(
                    textAlign: TextAlign.end,
                    keyboardType: TextInputType.multiline,
                    maxLines: 8,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(19),
                        borderSide: BorderSide(color: colorBlack , width: 1),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.110,
                  ),

                  BtnWidget(color: colorGreen , width: 1.00, fun: (){
                    ExtendedNavigator.root.push(Routes.shoppeHomePage);
                  }, text: "ارسل ",),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
