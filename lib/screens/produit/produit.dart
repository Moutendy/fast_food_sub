import 'dart:io';

import 'package:flutter/material.dart';
import 'package:subsafood/widgetscreens/colors.dart';
import 'package:subsafood/widgetscreens/formulaire.dart';
import 'package:subsafood/widgetscreens/icons.dart';

class Produit extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Produit();
}

class _Produit extends State<Produit> {
  @override
  Widget build(BuildContext context) {
    var _imageFile;
    var user;
    TextEditingController emailEditingController = new TextEditingController();
    TextEditingController passwordEditingController =
        new TextEditingController();
    return Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          backgroundColor: white,
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              title('Ajouter Un Produit', 25),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black54, //New
                          blurRadius: 10.0,
                          offset: Offset(0, 10))
                    ],
                    image: _imageFile == null
                        ? user != null
                            ? DecorationImage(
                                image: NetworkImage(''), fit: BoxFit.cover)
                            : DecorationImage(
                                image: AssetImage('images/icon.png'),
                                fit: BoxFit.cover)
                        : DecorationImage(
                            image: FileImage(_imageFile ?? File('')),
                            fit: BoxFit.cover),
                    color: black54),
              ),
              SizedBox(height: 30),
              field("Nom", false, passwordEditingController, "message"),
              SizedBox(height: 10),
              field("Description", false, emailEditingController, "message"),
              SizedBox(height: 10),
              fieldNumeric("Prix", false, emailEditingController, "message"),
              SizedBox(height: 20),
              button("Ajouter", () {}),
            ]));
  }
}
