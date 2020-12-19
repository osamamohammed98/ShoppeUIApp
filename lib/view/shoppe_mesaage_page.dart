import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/globale_data.dart';
import 'package:shoppe_app/util/style.dart';

class ShoppeMessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    safeAreaGreen;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: colorGreen,
        centerTitle: true,
        title: Text(
          "الرسائل",
          style: textAppBar,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              padding: EdgeInsets.symmetric(vertical: size.height * 0.045 , horizontal: size.width * 0.045),
              itemCount: messages.length,
              itemBuilder: (context, index) {
               return ListTileMessage(
                  title: messages[index].title,
                  image: messages[index].image,
                  subtitle: messages[index].subtitle,
                  time: messages[index].time,
                );
              },
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              separatorBuilder: (context, index) => Divider(
                height: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
        onTap: () {},
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
