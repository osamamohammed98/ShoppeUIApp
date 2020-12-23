import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:shoppe_app/component/bar_send_message.dart';
import 'package:shoppe_app/component/he_message_body.dart';
import 'package:shoppe_app/component/me_message_body.dart';
import 'package:shoppe_app/data/message.dart';
import 'package:shoppe_app/util/color.dart';
import 'package:shoppe_app/util/globale_data.dart';
import 'package:shoppe_app/util/style.dart';

class ShoppeChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    safeAreaGreen;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: colorGreen,
        title: Text(
          "${translator.translate("key19")}",//key19
          style: textAppBar,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height / 1.23,
              width: size.width,
              color: colorWhite,
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.020 , vertical: size.height * 0.020),
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: messagesChatList.length,
                itemBuilder: (context, index) {
                  String senderId = messagesChatList[index].idSender;
                  Message message = messagesChatList[index];
                  return senderId == "1"
                      ? MyMessageBody(
                          textMessage: message.textMessage,
                          timeMessage: message.timeSend,
                          userImage: message.imageUser,
                        )
                      : HeMessageBody(
                          textMessage: message.textMessage,
                          timeMessage: message.timeSend,
                          userImage: message.imageUser,
                        );
                },
              ),
            ),
            SendMessageBar(),
          ],
        ),
      ),
    );
  }
}




