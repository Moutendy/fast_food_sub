import 'package:flutter/material.dart';
import 'package:subsafood/screens/profil/profil.dart';
import 'package:subsafood/widgetscreens/card.dart';
import 'package:subsafood/widgetscreens/colors.dart';
import 'package:subsafood/widgetscreens/elemntsup.dart';

class Horaire extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Horaire();
}

class _Horaire extends State<Horaire> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: appBar(context, 'Horaire de Travail', 'images/3.jpg', Profil()),
      body: Center(
        child: Container(
          width: 300, // largeur du calendrier
          child: horaireFastFood(),
        ),
      ),
    );
  }
}
