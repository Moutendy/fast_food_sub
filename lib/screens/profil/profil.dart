import 'dart:io';

import 'package:flutter/material.dart';
import 'package:subsafood/screens/home/homewithoutauthen.dart';
import 'package:subsafood/screens/profil/profilbody.dart';
import 'package:subsafood/widgetscreens/card.dart';
import 'package:subsafood/widgetscreens/colors.dart';
import 'package:subsafood/widgetscreens/elemntsup.dart';

class Profil extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Profil();
}

class _Profil extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var user = null;
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: backgroundColor,
          appBar: AppBar(),
          body: STabBar(),
        ));
  }
}
