import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/custom_router.gr.dart';
import 'package:shoppe_app/util/style.dart';

class DepartListItem extends StatelessWidget {
  final String title, image;

  const DepartListItem({
    Key key,
    this.title,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        ExtendedNavigator.root.push(Routes.shoppeStorePage);
      },
      child: Container(
        margin: EdgeInsets.only(
            bottom: size.height * 0.020,
            left: size.width * 0.050,
            right: size.width * 0.050),
        alignment: Alignment.center,
        width: size.width,
        height: size.height * 0.121,
        decoration: BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  child: Text(
                    "$title",
                    textAlign: TextAlign.center,
                    style: textMid.copyWith(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )),
            Expanded(
              flex: 1,
              child: Container(
                height: size.height,
                decoration: BoxDecoration(
                  color: colorGreen,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
