import 'package:flutter/material.dart';
import 'package:subsafood/widgetscreens/colors.dart';
import 'package:subsafood/widgetscreens/formulaire.dart';
import 'package:subsafood/widgetscreens/icons.dart';

class Livreur extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Livreur();
}

class _Livreur extends State<Livreur> {
  TextEditingController emailEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: backgroundColor,
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              title('Ajouter Un Livreur', 25),
              SizedBox(height: 10),
              field("Nom", false, emailEditingController, "message"),
              SizedBox(height: 10),
              SizedBox(height: 20),
              button("Ajouter", () {}),
            ]));
  }
}
