import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:shoppe_app/backend/server.dart';
import 'package:shoppe_app/component/btn_widget.dart';
import 'package:shoppe_app/component/text_field_widget.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/globale_data.dart';
import 'package:shoppe_app/util/style.dart';

class ShoppeLogInPage extends StatefulWidget {
  @override
  _ShoppeLogInPageState createState() => _ShoppeLogInPageState();
}

class _ShoppeLogInPageState extends State<ShoppeLogInPage> {
  final formKey = GlobalKey<FormState>();
  TextEditingController controllerPassword, controllerEmail;

  @override
  initState() {
    super.initState();
    controllerPassword = TextEditingController();
    controllerEmail = TextEditingController();
  }

  ///TODO make this method in global data file and  pass it {GlobalKey && Routes.Name}
  validateForm() {
    bool isValid = formKey.currentState.validate();
    if (isValid) {
      formKey.currentState.save();
      login();
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
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: size.width,
            height: size.height / 3,
            child: Image.asset("assets/img/logo.png"),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  TextFieldWidget(
                    hint: "${translator.translate("key37")}", //key37
                    type: TextInputType.emailAddress,
                    customValid: emailValid,
                    controller: controllerEmail,
                  ),
                  TextFieldWidget(
                    hint: "${translator.translate("key36")}", //key36
                    type: TextInputType.visiblePassword,
                    isObscureText: true,
                    customValid: passwordValid,
                    controller: controllerPassword,
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
        ],
      ),
    );
  }

  void login() async{
    await signWithEmailAndPassword(email:controllerEmail.text , password:controllerPassword.text);
  }
}
