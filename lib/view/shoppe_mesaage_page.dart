import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:shoppe_app/component/list_tile_message.dart';
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
          "${translator.translate("key29")}",//key29
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

