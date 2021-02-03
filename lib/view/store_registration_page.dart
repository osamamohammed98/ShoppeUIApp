import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:logger/logger.dart';
import 'package:shoppe_app/backend/server.dart';
import 'package:shoppe_app/component/btn_widget.dart';
import 'package:shoppe_app/component/text_field_widget.dart';
import 'package:shoppe_app/data/user.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/custom_router.gr.dart';
import 'package:shoppe_app/util/globale_data.dart';
import 'package:shoppe_app/util/style.dart';

class ShoppeStoreRegister extends StatefulWidget {
  @override
  _ShoppeStoreRegisterState createState() => _ShoppeStoreRegisterState();
}

class _ShoppeStoreRegisterState extends State<ShoppeStoreRegister> {
  final formKey = GlobalKey<FormState>();
  TextEditingController controllerCompanyName,
      controllerUserName,
      controllerPassword,
      controllerEmail,
      controllerPhone,
      controllerCompanyActivity;
  File logo;

  saveLogo(File file) {
    this.logo = file;
  }

  @override
  initState() {
    super.initState();
    controllerCompanyName = TextEditingController();
    controllerUserName = TextEditingController();
    controllerPassword = TextEditingController();
    controllerEmail = TextEditingController();
    controllerPhone = TextEditingController();
    controllerCompanyActivity = TextEditingController();
  }

  ///TODO make this method in global data file and  pass it {GlobalKey && Routes.Name}
  validateForm() {
    bool isValid = formKey.currentState.validate();
    if (isValid) {
      formKey.currentState.save();
      //ExtendedNavigator.root.push(Routes.shoppeHomePage);
      mershentUser();
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
        backgroundColor: colorGreen,
        centerTitle: true,
        title: Text(
          "${translator.translate("key54")}", //key54
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
                        "${translator.translate("key54")}", //key54
                        style: textMid,
                      ),
                      SizedBox(
                        width: size.width * 0.004,
                      ),
                      SvgPicture.asset("assets/svg/shop.svg"),
                    ],
                  ),
                  Text(
                    "${translator.translate("key55")}", //key55
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
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFieldWidget(
                        hint: "${translator.translate("key34")}", //key34
                        type: TextInputType.text,
                        controller: controllerCompanyName,
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
                        hint: "${translator.translate("key37")}", //key37
                        type: TextInputType.emailAddress,
                        customValid: emailValid,
                        controller: controllerEmail,
                      ),
                      SizedBox(
                        height: size.height * 0.008,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "${translator.translate("key38")}", //key38
                            style: textMid,
                          ),
                          SizedBox(
                            width: size.width * 0.008,
                          ),
                          SvgPicture.asset(
                              "assets/svg/location-pointer (3).svg"),
                          SizedBox(
                            width: size.width * 0.024,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.016,
                      ),
                      TextFieldWidget(
                        hint: "${translator.translate("key39")}", //key39
                        type: TextInputType.phone,
                        controller: controllerPhone,
                      ),
                      TextFieldWidget(
                        hint: "${translator.translate("key40")}", //key40
                        type: TextInputType.text,
                        icon: "assets/svg/upload.svg",
                        fun: () async {
                          PickedFile pickedFile = await ImagePicker()
                              .getImage(source: ImageSource.gallery);
                          saveLogo(File(pickedFile?.path));
                          logo = File(pickedFile?.path);
                          Logger().e(pickedFile?.path);
                        },
                      ),
                      TextFieldWidget(
                        hint: "${translator.translate("key41")}", //key41
                        type: TextInputType.text,
                        controller: controllerCompanyActivity,
                      ),
                      SizedBox(
                        height: size.height * 0.042,
                      ),
                      BtnWidget(
                        width: 1.00,
                        color: colorGreen,
                        text: "${translator.translate("key20")}" /*key20*/,
                        fun: () {
                          validateForm();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void mershentUser() {
    AppUser appUser = AppUser.mershantUser({
      'companyActivity': controllerCompanyActivity.text,
      'userName': controllerUserName.text,
      'email': controllerEmail.text,
      'password': controllerPassword.text,
      'mobileNumber': controllerPhone.text,
      'companyName': controllerCompanyName.text,
      'logo': this.logo,
    });

    Logger().e(appUser.toJson().toString());
    saveUserInFirebase(appUser);
  }
}
