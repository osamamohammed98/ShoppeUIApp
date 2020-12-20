import 'package:flutter/material.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/style.dart';
class HeMessageBody extends StatelessWidget {
  final String textMessage, userImage, timeMessage;

  const HeMessageBody({
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: size.width * 0.060,
                backgroundImage: AssetImage("$userImage"),
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
                    color: colorGreen,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text(
                    "$textMessage",
                    style: textNormal.copyWith(color: colorWhite),
                  ),
                ),
              ),
              SizedBox(
                width: size.width * 0.035,
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(left: 90),
              child: Text(
                "$timeMessage",
                style: textNormal.copyWith(color: colorGreen),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
