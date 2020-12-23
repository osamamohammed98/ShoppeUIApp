import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:shoppe_app/component/btn_widget.dart';
import 'package:shoppe_app/component/text_field_widget.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/custom_router.gr.dart';
import 'package:shoppe_app/util/globale_data.dart';
import 'package:shoppe_app/util/style.dart';

class ShoppeContactUs extends StatefulWidget {
  @override
  _ShoppeContactUsState createState() => _ShoppeContactUsState();
}

class _ShoppeContactUsState extends State<ShoppeContactUs> {
  final formKey = GlobalKey<FormState>();
  ///TODO make this method in global data file and  pass it {GlobalKey && Routes.Name}
  validateForm() {
    bool isValid = formKey.currentState.validate();
    if (isValid) {
      formKey.currentState.save();
      ExtendedNavigator.root.push(Routes.shoppeHomePage);
    } else {
      return;
    }
  }

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
          "${translator.translate("key24")}",//key24
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
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextFieldWidget(
                      hint: "${translator.translate("key25")}",//key25
                      type: TextInputType.emailAddress,
                      customValid: emailValid,
                    ),
                    TextFieldWidget(
                      hint: "${translator.translate("key26")}",//key26
                      type: TextInputType.phone,
                    ),
                    TextFieldWidget(
                      hint: "${translator.translate("key27")}",//key27
                      type: TextInputType.text,
                    ),
                    SizedBox(
                      height: size.height * 0.021,
                    ),
                    Text(
                      "${translator.translate("key28")}" + "\t\t\t",//key28
                      style: textMid,
                    ),
                    SizedBox(
                      height: size.height * 0.011,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value == "") {
                          return "${translator.translate("key11")}";//key11
                        } else {
                          return null;
                        }
                      },
                      textAlign: TextAlign.end,
                      keyboardType: TextInputType.multiline,
                      maxLines: 8,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(19),
                          borderSide: BorderSide(color: colorBlack, width: 1),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.110,
                    ),
                    BtnWidget(
                      color: colorGreen,
                      width: 1.00,
                      fun: () {
                        validateForm();
                      },
                      text: "${translator.translate("key29")}",//key29
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
}
