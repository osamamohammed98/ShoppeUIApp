import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:shoppe_app/backend/server.dart';
import 'package:shoppe_app/component/btn_widget.dart';
import 'package:shoppe_app/component/text_field_widget.dart';
import 'package:shoppe_app/data/user.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/custom_router.gr.dart';
import 'package:shoppe_app/util/globale_data.dart';
import 'package:shoppe_app/util/style.dart';

class ShoppeUserRegistration extends StatefulWidget {
  @override
  _ShoppeUserRegistrationState createState() => _ShoppeUserRegistrationState();
}

class _ShoppeUserRegistrationState extends State<ShoppeUserRegistration> {
  final formKey = GlobalKey<FormState>();
  TextEditingController controllerUserName,
      controllerPassword,
      controllerEmail,
      controllerPhone;

  @override
  initState() {
    super.initState();
    controllerUserName = TextEditingController();
    controllerPassword = TextEditingController();
    controllerEmail = TextEditingController();
    controllerPhone = TextEditingController();
  }

  ///TODO make this method in global data file and  pass it {GlobalKey && Routes.Name}
  validateForm() {
    bool isValid = formKey.currentState.validate();
    if (isValid) {
      formKey.currentState.save();
      saveUserData();
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    safeAreaGreen;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: colorGreen,
        title: Text(
          "${translator.translate("key51")}", //key51
          style: textAppBar,
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.login),
              onPressed: () {
                ExtendedNavigator.root.push(Routes.shoppeLogInPage);
              }),
        ],
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
                        "${translator.translate("key51")}", //key51
                        style: textMid,
                      ),
                      SizedBox(
                        width: size.width * 0.004,
                      ),
                      SvgPicture.asset("assets/svg/user (14).svg"),
                    ],
                  ),
                  Text(
                    "${translator.translate("key52")}", //key52
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
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.137,
                    ),
                    TextFieldWidget(
                      hint: "${translator.translate("key35")}", //key35
                      type: TextInputType.text,
                      controller: controllerUserName,
                    ),
                    TextFieldWidget(
                      hint: "${translator.translate("key36")}",
                      //key36
                      type: TextInputType.visiblePassword,
                      isObscureText: true,
                      customValid: passwordValid,
                      controller: controllerPassword,
                    ),
                    TextFieldWidget(
                      hint: "${translator.translate("key53")}", //key53
                      type: TextInputType.emailAddress,
                      customValid: emailValid,
                      controller: controllerEmail,
                    ),
                    TextFieldWidget(
                      hint: "${translator.translate("key26")}", //key26
                      type: TextInputType.phone,
                      controller: controllerPhone,
                    ),
                    SizedBox(
                      height: size.height * 0.074,
                    ),
                    BtnWidget(
                      width: 1.00,
                      color: colorGreen,
                      text: "${translator.translate("key20")}", //key20
                      fun: () {
                        validateForm();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void saveUserData() async {
    AppUser appUser = AppUser.customerUser({
      'userName': controllerUserName.text,
      'email': controllerEmail.text,
      'password': controllerPassword.text,
      'mobileNumber': controllerPhone.text,
    });

    await saveUserInFirebase(appUser);
  }
}
