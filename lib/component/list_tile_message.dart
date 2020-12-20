import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/custom_router.gr.dart';
import 'package:shoppe_app/util/style.dart';
class ListTileMessage extends StatelessWidget {
  final String image, title, subtitle, time;
  final Function fun;

  const ListTileMessage({
    Key key,
    this.image,
    this.title,
    this.subtitle,
    this.time,
    this.fun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: size.height * 0.032 ),
      child: ListTile(
        onTap: () {
          ExtendedNavigator.root.push(Routes.shoppeChatPage);
        },
        trailing: CircleAvatar(
          backgroundColor: colorTrans,
          backgroundImage: AssetImage(image),
          radius: size.height * 0.037,
        ),
        title: Text(
          "$title",
          textAlign: TextAlign.end,
          style: textMid.copyWith(fontSize: 14),
        ),
        subtitle: Text(
          "$subtitle",
          textAlign: TextAlign.end,
          style: textNormal.copyWith(fontSize: 12),
        ),
        leading: Text(
          "$time",
          style: textNormal.copyWith(fontSize: 12),
        ),
      ),
    );
  }
}
