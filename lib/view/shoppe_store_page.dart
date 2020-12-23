import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:shoppe_app/component/adds.dart';
import 'package:shoppe_app/component/list_tile_store.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/custom_router.gr.dart';
import 'package:shoppe_app/util/globale_data.dart';
import 'package:shoppe_app/util/style.dart';

class ShoppeStorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    safeAreaGreenBottom;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: colorGreen,
        title: Text(
          "${translator.translate("key50")}",//key50
          style: textAppBar,
        ),
      ),
      body: Container(
        color: colorGreenTrans,
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: stores.length,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  int ranIndex = Random().nextInt(stores.length);
                  return ( ranIndex > 0 &&  ranIndex % 5 != 0) ?ListTileStore(
                    title: stores[index],
                  ):AddListItem();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


