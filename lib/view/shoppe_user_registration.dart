import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoppe_app/component/btn_widget.dart';
import 'package:shoppe_app/component/text_field_widget.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/custom_router.gr.dart';
import 'package:shoppe_app/util/style.dart';
class ShoppeUserRegistration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    safeAreaGreen;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: colorGreen,
        title: Text("تسجيل العملاء" , style: textAppBar,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.symmetric(
                horizontal: size.width * 0.068,
                vertical: size.height * 0.017,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "تسجيل العملاء",
                        style: textMid,
                      ),
                      SizedBox(
                        width: size.width * 0.004,
                      ),
                      SvgPicture.asset("assets/svg/user (14).svg"),
                    ],
                  ),
                  Text(
                    "مثال لنص يمكن أن يستبدلا",
                    style: textNormal,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: size.width * 0.068,
                  vertical: size.height * 0.030),
              alignment: Alignment.center,
              height: size.height / 1,
              width: size.width,
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.137,),
                  TextFieldWidget(hint: "اسم المستخدم", type: TextInputType.text,),
                  TextFieldWidget(hint: "كلمة المرور", type: TextInputType.visiblePassword, isObscureText: true,),
                  TextFieldWidget(hint: "الايميل", type: TextInputType.emailAddress,),
                  TextFieldWidget(hint: "رقم الهاتف", type: TextInputType.phone,),
                  SizedBox(height: size.height * 0.074,),
                  BtnWidget(width: 1.00, color: colorGreen , text: "تسجيل", fun: (){
                    ExtendedNavigator.of(context).push(Routes.shoppeHomePage);
                  },),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
