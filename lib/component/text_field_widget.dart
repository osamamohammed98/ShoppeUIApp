import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/style.dart';

class TextFieldWidget extends StatelessWidget {
  final String hint;
  final TextInputType type;
  final String icon;
  final bool isObscureText;
  final Function fun;
  final Function customValid;

  const TextFieldWidget({
    Key key,
    this.hint,
    this.type,
    this.icon,
    this.isObscureText = false,
    this.fun, this.customValid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: size.height * 0.008),
      child: TextFormField(
        keyboardType: type == null ? TextInputType.text : type,
        textAlign: TextAlign.end,
        obscureText: isObscureText,
        validator: (value) {
          if(value == null || value == ""){
            return "${translator.translate("key11")}";//key11
          }else if(customValid != null){
            return customValid(value) ;
          }else{
            return null;
          }
        },

        decoration: InputDecoration(
          prefixIcon: icon == null
              ? null
              : GestureDetector(
                  onTap: fun,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: size.width * 0.025),
                    child: SvgPicture.asset(
                      icon,
                      height: size.height * 0.048,
                      fit: BoxFit.contain,
                    ),
                  )),
          contentPadding: EdgeInsets.only(right: size.width * 0.08),
          hintText: "$hint",
          hintStyle: textHint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: colorNormal),
          ),
        ),
      ),
    );
  }
}
