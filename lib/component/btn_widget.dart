import 'package:flutter/material.dart';
import 'package:shoppe_app/util/style.dart';
class BtnWidget extends StatelessWidget {
  final double width;
  final String text;
  final Function fun;
  final Color color;
  const BtnWidget({
    Key key, this.width, this.text, this.fun, this.color,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * width,
      child: RaisedButton(
        padding: EdgeInsets.symmetric(vertical: size.height * 0.006),
        onPressed: fun,
        child: Text(
          "$text",
          style: textBtnLight,
        ),
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),),
      ),
    );
  }
}
