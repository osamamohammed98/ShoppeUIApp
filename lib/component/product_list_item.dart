import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/custom_router.gr.dart';
import 'package:shoppe_app/util/style.dart';
class ProductListItem extends StatelessWidget {
  const ProductListItem({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: (){
        ExtendedNavigator.root.push(Routes.shoppeProductDetails);
      },
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
