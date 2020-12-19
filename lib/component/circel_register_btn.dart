import 'package:flutter/material.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/style.dart';
class CircalRegisterBtn extends StatelessWidget {
  final Function fun;
  final String image;

  const CircalRegisterBtn({
    Key key,
    this.fun,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: fun,
      child: Container(
        padding: EdgeInsets.all(10),
        width: size.width * 1.81,
        height: size.height * 0.181,
        decoration: BoxDecoration(
          color: colorWhite,
          boxShadow: [
            shadow,
          ],
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
