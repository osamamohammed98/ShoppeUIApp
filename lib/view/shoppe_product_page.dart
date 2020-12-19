import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppe_app/component/adds.dart';
import 'package:shoppe_app/util/color.dart';
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
                  return ProudctListItem();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProudctListItem extends StatelessWidget {
  const ProudctListItem({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: (){},
      child: Container(
        width: size.width * 0.166,
        height: size.height * 0.200,
        decoration: BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: size.height * 0.145,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                    image: DecorationImage(
                      image: AssetImage("assets/img/pro.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.025,
                      vertical: size.height * 0.005),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "لكزس 2018",
                        style: textNormal.copyWith(
                            color: colorBlack, fontSize: 11),
                      ),
                      Text(
                        "200" + "د.ك ",
                        style: textNormal.copyWith(
                            color: colorOrange, fontSize: 11),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
