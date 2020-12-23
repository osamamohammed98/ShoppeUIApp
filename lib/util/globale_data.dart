import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:shoppe_app/data/departement_model.dart';
import 'package:shoppe_app/data/message.dart';
import 'package:shoppe_app/data/message_model.dart';
import 'package:string_validator/string_validator.dart';



passwordValid(String val) {
  if (val.length < 6) {
    return "${translator.translate("key67")}";//key67
  } else {
    return null;
  }
}

emailValid(String val) {
  if (!isEmail(val)) {
    return "${translator.translate("key68")}";//key68
  } else {
    return;
  }
}


List<MessageUser> messages = [
  MessageUser(
      image: "assets/img/1.png",
      title: "${translator.translate("key74")}",//key74
      subtitle: "السلام عليكم أخ معتصم ",
      time: "1:02"),
  MessageUser(
      image: "assets/img/4.png",
      title: "${translator.translate("key75")}",//key75
      subtitle: "السلام عليكم أخ معتصم ",
      time: "1:02"),
  MessageUser(
      image: "assets/img/6.png",
      title: "${translator.translate("key76")}",//key76
      subtitle: "السلام عليكم أخ معتصم ",
      time: "1:02"),
  MessageUser(
      image: "assets/img/1.png",
      title: "${translator.translate("key77")}",//key77
      subtitle: "السلام عليكم أخ معتصم ",
      time: "1:02"),
  MessageUser(
      image: "assets/img/6.png",
      title: "${translator.translate("key74")}",//key74
      subtitle: "السلام عليكم أخ معتصم ",
      time: "1:02"),
  MessageUser(
      image: "assets/img/4.png",
      title: "${translator.translate("key78")}",//key78
      subtitle: "السلام عليكم أخ معتصم ",
      time: "1:02"),
  MessageUser(
      image: "assets/img/6.png",
      title: "${translator.translate("key79")}",//key79
      subtitle: "السلام عليكم أخ معتصم ",
      time: "1:02"),
  MessageUser(
      image: "assets/img/1.png",
      title: "${translator.translate("key77")}",//key74
      subtitle: "السلام عليكم أخ معتصم ",
      time: "1:02"),
];

List<Departement> departement = [
  Departement(image: "assets/img/pro.png", title: "${translator.translate("key69")}"),//key69
  Departement(image: "assets/img/pro.png", title: "${translator.translate("key70")}"),//key70
  Departement(image: "assets/img/pro.png", title: "${translator.translate("key69")}"),//key69
  Departement(image: "assets/img/pro.png", title: "${translator.translate("key71")}"),//key71
  Departement(image: "assets/img/pro.png", title: "${translator.translate("key72")}"),//key72
  Departement(image: "assets/img/pro.png", title: "${translator.translate("key73")}"),//key73
];

List<String> stores = [
  "${translator.translate("key80")}",//key80
  "${translator.translate("key81")}",//key81
  "${translator.translate("key82")}",//key82
  "${translator.translate("key83")}",//key83
  "${translator.translate("key84")}",//key84
  "${translator.translate("key85")}",//key85
  "${translator.translate("key80")}",//key80
  "${translator.translate("key81")}",//key81
  "${translator.translate("key82")}",//key82
  "${translator.translate("key83")}",//key83
  "${translator.translate("key84")}",//key84
  "${translator.translate("key85")}",//key85
  "${translator.translate("key80")}",//key80
  "${translator.translate("key81")}",//key81
  "${translator.translate("key82")}",//key82
  "${translator.translate("key83")}",//key83
  "${translator.translate("key84")}",//key84
  "${translator.translate("key85")}",//key85
  "${translator.translate("key80")}",//key80
  "${translator.translate("key81")}",//key81
  "${translator.translate("key82")}",//key82
  "${translator.translate("key83")}",//key83
  "${translator.translate("key84")}",//key84
  "${translator.translate("key85")}",//key85

];

List<String> proudcts = [
  "${translator.translate("key65")}",//key65
  "${translator.translate("key65")}",//key65
  "${translator.translate("key65")}",//key65
  "${translator.translate("key65")}",//key65
  "${translator.translate("key65")}",//key65
  "${translator.translate("key65")}",//key65
  "${translator.translate("key65")}",//key65
  "${translator.translate("key65")}",//key65
  "${translator.translate("key65")}",//key65
  "${translator.translate("key65")}",//key65
  "${translator.translate("key65")}",//key65
  "${translator.translate("key65")}",//key65
  "${translator.translate("key65")}",//key65
  "${translator.translate("key65")}",//key65
  "${translator.translate("key65")}",//key65
  "${translator.translate("key65")}",//key65
  "${translator.translate("key65")}",//key65
  "${translator.translate("key65")}",//key65
];

List<Message> messagesChatList = [
  Message(
      idSender: "1",
      imageUser: "assets/img/1.png",
      textMessage: "بارك الله فيك معتصم",
      timeSend: "2:32"),
  Message(
      idSender: "2",
      imageUser: "assets/img/6.png",
      textMessage: "بارك الله فيك معتصم",
      timeSend: "2:32"),
  Message(
      idSender: "1",
      imageUser: "assets/img/1.png",
      textMessage: "بارك الله فيك معتصم",
      timeSend: "2:32"),
  Message(
      idSender: "2",
      imageUser: "assets/img/6.png",
      textMessage: "بارك الله فيك معتصم",
      timeSend: "2:32"),
  Message(
      idSender: "1",
      imageUser: "assets/img/1.png",
      textMessage: "بارك الله فيك معتصم",
      timeSend: "2:32"),
  Message(
      idSender: "2",
      imageUser: "assets/img/6.png",
      textMessage: "بارك الله فيك معتصم",
      timeSend: "2:32"),
  Message(
      idSender: "1",
      imageUser: "assets/img/1.png",
      textMessage: "بارك الله فيك معتصم",
      timeSend: "2:32"),
  Message(
      idSender: "2",
      imageUser: "assets/img/6.png",
      textMessage: "بارك الله فيك معتصم",
      timeSend: "2:32"),
  Message(
      idSender: "1",
      imageUser: "assets/img/1.png",
      textMessage: "بارك الله فيك معتصم",
      timeSend: "2:32"),
  Message(
      idSender: "2",
      imageUser: "assets/img/6.png",
      textMessage: "بارك الله فيك معتصم",
      timeSend: "2:32"),
  Message(
      idSender: "1",
      imageUser: "assets/img/1.png",
      textMessage: "بارك الله فيك معتصم",
      timeSend: "2:32"),
  Message(
      idSender: "2",
      imageUser: "assets/img/6.png",
      textMessage: "بارك الله فيك معتصم",
      timeSend: "2:32"),
  Message(
      idSender: "1",
      imageUser: "assets/img/1.png",
      textMessage: "بارك الله فيك معتصم",
      timeSend: "2:32"),
  Message(
      idSender: "2",
      imageUser: "assets/img/6.png",
      textMessage: "بارك الله فيك معتصم",
      timeSend: "2:32"),
];

