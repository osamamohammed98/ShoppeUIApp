import 'package:flutter/material.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/style.dart';
class MyMessageBody extends StatelessWidget {
  final String textMessage, userImage, timeMessage;

  const MyMessageBody({
    Key key,
    this.textMessage,
    this.userImage,
    this.timeMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(bottom: size.height * 0.028),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: size.width * 0.035,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.015),
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.070,
                      vertical: size.height * 0.007),
                  width: size.width * 0.6,
                  height: size.height * 0.050,
                  decoration: BoxDecoration(
                    color: colorGrayLight,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text(
                    "$textMessage",
                    style: textNormal,
                  ),
                ),
              ),
              CircleAvatar(
                radius: size.width * 0.060,
                backgroundImage: AssetImage("$userImage"),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(right: 90),
              child: Text(
                "$timeMessage",
                style: textNormal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
