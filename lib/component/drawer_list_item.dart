import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/style.dart';
class DrawerItemList extends StatelessWidget {
  final String title;
  final Function onClick;
  final String icon;
  final String orangText;
  final bool isLeading;

  const DrawerItemList({
    Key key,
    this.title,
    this.onClick,
    this.icon,
    this.orangText,
    this.isLeading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.050,
      child: ListTile(
        onTap: onClick,
        leading: isLeading
            ? Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "$orangText",
              style: textMid.copyWith(color: colorOrangeLight),
            ),
            SizedBox(
              width: size.width * 0.015,
            ),
            Text(
              "AR",
              style: textMid.copyWith(color: colorWhite),
            ),
          ],
        )
            : null,
        title: Text(
          "$title",
          textAlign: TextAlign.end,
          style: textMid.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        trailing: SvgPicture.asset(icon),
      ),
    );
  }
}
