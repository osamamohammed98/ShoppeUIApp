import 'package:flutter/material.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/style.dart';
class CustomCheekBox extends StatefulWidget {
  final String title;
  const CustomCheekBox({
    Key key, this.title,
  }) : super(key: key);

  @override
  _CustomCheekBoxState createState() => _CustomCheekBoxState();
}

class _CustomCheekBoxState extends State<CustomCheekBox> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {

    return CheckboxListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 0.0),
      activeColor: colorGreen,
      title: Text("${widget.title}", style: textMid.copyWith(fontSize: 13)),
      value: isActive,
      onChanged: (value) {
        setState(() {
          isActive = value;
        });
      },
    );
  }
}
