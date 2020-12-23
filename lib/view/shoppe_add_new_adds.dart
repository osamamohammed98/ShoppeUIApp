import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:shoppe_app/component/btn_widget.dart';
import 'package:shoppe_app/component/custom_check_box.dart';
import 'package:shoppe_app/component/text_field_widget.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/style.dart';

class ShoppeAddNewAdds extends StatefulWidget {
  @override
  _ShoppeAddNewAddsState createState() => _ShoppeAddNewAddsState();
}

class _ShoppeAddNewAddsState extends State<ShoppeAddNewAdds> {
  final formKey = GlobalKey<FormState>();

  ///TODO make this method in global data file and  pass it {GlobalKey && Routes.Name}
  validateForm() {
    bool isValid = formKey.currentState.validate();
    if (isValid) {
      formKey.currentState.save();
    } else {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    safeAreaGreen;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: colorGreen,
        title: Text(
          "${translator.translate("key6")}",//key6
          style: textAppBar,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.046),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: size.height * 0.060,
                ),
                TextFieldWidget(
                  hint: "${translator.translate("key7")}",//key7
                ),
                TextFieldWidget(
                  hint: "${translator.translate("key8")}",//key8
                  icon: "assets/svg/camera.svg",
                ),
                Text(
                  "${translator.translate("key9")}",//key9
                  style: textNormal.copyWith(color: colorBlack),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                TextFieldWidget(
                  hint: "${translator.translate("key10")}",//key10
                ),
                SizedBox(
                  height: size.height * 0.011,
                ),
                TextFormField(
                  textAlign: TextAlign.end,
                  keyboardType: TextInputType.multiline,
                  maxLines: 8,
                  validator: (value) {
                    if (value == null || value == "") {
                      return "${translator.translate("key11")}";//key11
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    hintText: "${translator.translate("key12")}",//key12
                    hintStyle: textHint,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(19),
                      borderSide: BorderSide(color: colorBlack, width: 1),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.033,
                ),
                Text(
                  "${translator.translate("key13")}" + "      ",//key13
                  style: textMid.copyWith(fontSize: 15),
                ),
                CustomCheekBox(title: "${translator.translate("key14")}",),//key14
                CustomCheekBox(title: "${translator.translate("key15")}",),
                CustomCheekBox(title: "${translator.translate("key16")}",),
                CustomCheekBox(title: "${translator.translate("key17")}",),//key17
                SizedBox(
                  height: size.height * 0.033,
                ),
                BtnWidget(width: 1.00 ,color: colorGreen ,text: "${translator.translate("key18")}"/*key18*/, fun: (){validateForm();},),
                SizedBox(
                  height: size.height * 0.033,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

