import 'package:flutter/material.dart';
import 'package:subsafood/screens/profil/profil.dart';
import 'package:subsafood/services/localstorage.dart';
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
      appBar: (userLocal != null)
          ? appBar(
              context,
              'Horaire de Travail',
              userLocal.image!,
              Profil(
                user: userLocal,
              ))
          : AppBar(),
      body: Center(
        child: Container(
          width: 300, // largeur du calendrier
          child: horaireFastFood(),
        ),
      ),
    );
  }
}
