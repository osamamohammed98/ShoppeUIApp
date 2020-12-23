import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/style.dart';
//todo split it in custom file
class SendMessageBar extends StatelessWidget {
  const SendMessageBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 12.4,
      width: size.width,
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.028),
              child: TextField(
                keyboardType: TextInputType.text,
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                  prefixIcon: GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: size.width * 0.010),
                        child: SvgPicture.asset(
                          "assets/svg/smiling.svg",
                        ),
                      )),
                  contentPadding: EdgeInsets.only(
                      right: size.width * 0.080, top: size.width * 0.040),
                  hintText: translator.translate("key58"),//key58
                  border: InputBorder.none,
                  hintStyle: textHint,
                ),
              ),
            ),
          ),
          Container(
              height: size.height / 12.4,
              child: RaisedButton(
                onPressed: () {},
                color: colorGreen,
                child: Icon(
                  Icons.send,
                  color: colorWhite,
                ),
              )),
        ],
      ),
    );
  }
}