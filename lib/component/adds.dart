import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/style.dart';
class AddListItem extends StatelessWidget {
  const AddListItem({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.centerRight,
      color: colorWhite,
      padding: EdgeInsets.symmetric(horizontal:size.width*0.026 ,vertical:size.height *0.005),
      margin: EdgeInsets.only(left:size.width*0.040 ,bottom:size.height *0.018 ,right: size.width*0.040),
      height: size.height * 0.060,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            translator.translate("key56"),//key56
            textAlign: TextAlign.end,
            style: textNormal.copyWith(color: colorBlack),
          ),
          Text(
            translator.translate("key57"),//key57
            textAlign: TextAlign.end,
            style: textNormal.copyWith(color: colorNormal ,fontSize: 10),
          ),

        ],
      ),
    );
  }
}
