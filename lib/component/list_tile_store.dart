import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/custom_router.gr.dart';
import 'package:shoppe_app/util/style.dart';
class ListTileStore extends StatelessWidget {
  final String title;

  const ListTileStore({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: size.height * 0.016),
      child: ListTile(
        onTap: () {
          ExtendedNavigator.root.push(Routes.shoppeProductPage);
        },
        trailing: Container(
          width: size.width * 0.23,
          decoration: BoxDecoration(
            color: colorWhite,
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
                image: AssetImage("assets/img/pro.png"), fit: BoxFit.cover),
          ),
        ),
        title: Text(
          "$title",
          textAlign: TextAlign.end,
          style: textNormal.copyWith(color: colorBlack),
        ),
        subtitle: Text(
          translator.translate("key52"),//key52
          textAlign: TextAlign.end,
          style: textNormal.copyWith(color: colorBlack),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          color: colorBlack,
        ),
      ),
    );
  }
}

