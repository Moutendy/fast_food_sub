import 'dart:io';

import 'package:flutter/material.dart';
import 'package:subsafood/models/user.dart';
import 'package:subsafood/screens/home/homewithoutauthen.dart';
import 'package:subsafood/screens/profil/profil.dart';
import 'package:subsafood/widgetscreens/card.dart';
import 'package:subsafood/widgetscreens/colors.dart';
import 'package:subsafood/widgetscreens/elemntsup.dart';
import 'package:subsafood/widgetscreens/formulaire.dart';
import 'package:subsafood/widgetscreens/icons.dart';

class ProduitList extends StatefulWidget {
  User user;

  ProduitList({super.key,required this.user});
  @override
  State<StatefulWidget> createState() => _ProduitList();
}

class _ProduitList extends State<ProduitList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: appBar(
            context, 'Machandise du vendeure(se)', widget.user.image!, Profil(user: widget.user,)),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[cardHorizontal()])));
  }
}
