import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppe_app/component/adds.dart';
import 'package:shoppe_app/component/product_list_item.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/custom_router.gr.dart';
import 'package:shoppe_app/util/globale_data.dart';
import 'package:shoppe_app/util/style.dart';

class ShoppeProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    safeAreaGreenBottom;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: colorGreen,
        title: Text(
          "المتاجر ",
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
              GridView.builder(
                padding: EdgeInsets.all(size.width * 0.055),
                itemCount: proudcts.length,
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisSpacing: size.width * 0.035,
                  crossAxisSpacing: size.height * 0.015,
                  maxCrossAxisExtent: ((size.width * 0.76)),
                  //childAspectRatio: ((size.width * 1.66) ),
                ),
                itemBuilder: (context, index) {
                  int indexRandom = Random().nextInt(proudcts.length);
                  //(indexRandom > 0 && indexRandom % 5 !=0) ?:AddListItem()
                  return ProductListItem();
                },
              ),
              AddListItem(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorGreen,
        onPressed: () {
          ExtendedNavigator.root.push(Routes.shoppeAddNewAdds);
        },
        child: Icon(
          Icons.add,
          color: colorWhite,
        ),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}

