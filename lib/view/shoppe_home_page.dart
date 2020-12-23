import 'package:auto_route/auto_route.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:shoppe_app/component/depart_list_item.dart';
import 'package:shoppe_app/component/drawer_widget.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/custom_router.gr.dart';
import 'package:shoppe_app/util/globale_data.dart';
import 'package:shoppe_app/util/style.dart';

class ShoppeHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    safeAreaGreenBottom;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: colorGreen,
        title: Text(
          "${translator.translate("key30")}",//key30
          style: textAppBar,
        ),
      ),
      endDrawer: DrawerWidget(),
      body: Container(
        height: size.height,
        width: size.width,
        color: colorGreenTrans,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  height: size.height * 0.24,
                  width: size.width,
                  child: Carousel(
                    dotSize: 4.0,
                    dotSpacing: 15.0,
                    dotColor: colorBlue,
                    dotBgColor: colorWhite.withOpacity(0.0),
                    images: [
                      ExactAssetImage(
                          "assets/img/photo-1501066927591-314112b5888e.png"),
                      ExactAssetImage(
                          "assets/img/photo-1501066927591-314112b5888e.png"),
                      ExactAssetImage(
                          "assets/img/photo-1501066927591-314112b5888e.png"),
                    ],
                  )),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.046,
                        vertical: size.height * 0.019),
                    child: Text(
                      "${translator.translate("key31")}",//key31
                      style: textMid.copyWith(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )),
              ListView.builder(
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: departement.length,
                itemBuilder: (context, index) => DepartListItem(
                  image: departement[index].image,
                  title: departement[index].title,
                ),
              ),
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


