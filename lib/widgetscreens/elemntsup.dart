import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:subsafood/screens/profil/profil.dart';
import 'package:subsafood/widgetscreens/colors.dart';

Widget dialogue(String title, String desc) {
  return Center(
      child: ElevatedButton(
    child: Text(title),
    onPressed: () {
      Get.defaultDialog(
        title: title,
        middleText: desc,
        backgroundColor: red,
        titleStyle: TextStyle(color: white),
        middleTextStyle: TextStyle(color: white),
      );
    },
  ));
}

Widget messageLink(String name, String nameLink) {
  return Center(
      child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        name,
        style: TextStyle(fontWeight: FontWeight.normal),
      ),
      SizedBox(
        width: 1.2,
      ),
      Text(
        nameLink,
        style: TextStyle(color: blueCiel, fontWeight: FontWeight.bold),
      )
    ],
  ));
}

PreferredSizeWidget appBar(
    BuildContext context, String title, String profil, Profil profilScreen) {
  return AppBar(
      backgroundColor: backgroundColor,
      title: Text(title),
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => profilScreen));
        },
        child: CircleAvatar(
          backgroundImage: AssetImage(profil),
        ),
      ));
}

Widget desc(String desc) {
  return Text(
    desc,
    style: TextStyle(
      decoration: TextDecoration.overline,
      decorationColor: blac12,
      fontSize: 6,
      fontWeight: FontWeight.w600,
    ),
    textAlign: TextAlign.center,
  );
}

pageView() {
  return PageView(
    children: const <Widget>[
      Center(
        child: Text("Page 1"),
      ),
      Center(
        child: Text("Page 2"),
      ),
      Center(
        child: Text("Page 3"),
      )
    ],  
  );
}
