import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppe_app/component/btn_widget.dart';
import 'package:shoppe_app/component/text_field_widget.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/custom_router.gr.dart';
import 'package:shoppe_app/util/style.dart';

class ShoppeStoreRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    safeAreaGreen;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        backgroundColor: colorGreen,
        centerTitle: true,
        title: Text(
          "تسجيل المتاجر",
          style: textAppBar,
        ),
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
                        "تسجيل المتاجر",
                        style: textMid,
                      ),
                      SizedBox(
                        width: size.width * 0.004,
                      ),
                      SvgPicture.asset("assets/svg/shop.svg"),
                    ],
                  ),
                  Text(
                    "يمكنك تسجيل متجرك  هنا",
                    style: textNormal,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: size.width * 0.068,
                  vertical: size.height * 0.030),
              color: colorWhite,
              height: size.height / 1.2,
              width: size.width,
              child: Column(
                children: [
                  TextFieldWidget(
                    hint: "اسم الشركة",
                    type: TextInputType.text,
                  ),
                  TextFieldWidget(
                    hint: "اسم المستخدم",
                    type: TextInputType.text,
                  ),
                  TextFieldWidget(
                    hint: "كلمة المرور",
                    type: TextInputType.visiblePassword,
                    isObscureText: true,
                  ),
                  TextFieldWidget(
                    hint: "االبريد الالكتروني",
                    type: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: size.height * 0.008,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "حدد موقع متجرك",
                        style: textMid,
                      ),
                      SizedBox(
                        width: size.width * 0.008,
                      ),
                      SvgPicture.asset("assets/svg/location-pointer (3).svg"),
                      SizedBox(
                        width: size.width * 0.024,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.016,
                  ),
                  TextFieldWidget(
                    hint: "رقم الهاتف",
                    type: TextInputType.phone,
                  ),
                  TextFieldWidget(
                    hint: "شعار المتجر",
                    type: TextInputType.text,
                    icon: "assets/svg/upload.svg",
                  ),
                  TextFieldWidget(
                    hint: "نشاط الشركة",
                    type: TextInputType.text,
                  ),
                  SizedBox(height: size.height * 0.042,),
                  BtnWidget(width: 1.00,color: colorGreen,text: "تسجيل",fun: (){
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

