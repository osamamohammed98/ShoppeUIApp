import 'package:flutter/material.dart';
import 'package:shoppe_app/component/btn_widget.dart';
import 'package:shoppe_app/component/text_field_widget.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/style.dart';

class ShoppeAddNewAdds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    safeAreaGreen;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: colorGreen,
        title: Text(
          "اضف اعلان",
          style: textAppBar,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.046),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: size.height * 0.060,
              ),
              TextFieldWidget(
                hint: "اسم المنتج",
              ),
              TextFieldWidget(
                hint: "ارفع صور",
                icon: "assets/svg/camera.svg",
              ),
              Text(
                "أقصى حد 9 صور *     ",
                style: textNormal.copyWith(color: colorBlack),
              ),
              SizedBox(
                height: size.height * 0.015,
              ),
              TextFieldWidget(
                hint: "السعر",
              ),
              SizedBox(
                height: size.height * 0.011,
              ),
              TextField(
                textAlign: TextAlign.end,
                keyboardType: TextInputType.multiline,
                maxLines: 8,
                decoration: InputDecoration(
                  hintText: "الوصف",
                  hintStyle: textHint,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(19),
                    borderSide: BorderSide(color: colorBlack, width: 1),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.033,
              ),
              Text(
                "اعدادات الاعلان" + "      ",
                style: textMid.copyWith(fontSize: 15),
              ),
              CustomCheekBox(title: "السماح بالرسائل الداخلية",),
              CustomCheekBox(title: "أعلن بدون رقم تلفون",),
              CustomCheekBox(title: "السماح بعدم الازعاج",),
              CustomCheekBox(title: "اعادة نشر تلقائي",),
              SizedBox(
                height: size.height * 0.033,
              ),
              BtnWidget(width: 1.00 ,color: colorGreen ,text: "اضافة ", fun: (){},)
            ],
          ),
        ),
      ),
    );
  }
}

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
