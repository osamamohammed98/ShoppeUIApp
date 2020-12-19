import 'package:flutter/material.dart';
import 'package:shoppe_app/component/drawer_widget.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/style.dart';
class ShoppeHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    safeAreaGreen;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: colorGreen,
        title: Text("الاقسام" , style: textAppBar,),
      ),
      endDrawer: DrawerWidget(),
    );
  }
}
