import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:subsafood/main.dart';
import 'package:subsafood/screens/auth/register.dart';
import 'package:subsafood/screens/commandes/commandeproduit.dart';
import 'package:subsafood/screens/home/homewithoutauthen.dart';
import 'package:subsafood/screens/orders/orders.dart';
import 'package:subsafood/widgetscreens/card.dart';
import 'package:subsafood/widgetscreens/constant.dart';
import 'package:subsafood/widgetscreens/elemntsup.dart';
import 'package:subsafood/widgetscreens/formulaire.dart';
import 'package:subsafood/widgetscreens/icons.dart';

class LoginBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginBody();
}

class _LoginBody extends State<LoginBody> {
  get user => null;
  @override
  Widget build(BuildContext context) {
    File? _imageFile;
    TextEditingController emailEditingController = new TextEditingController();
    TextEditingController passwordEditingController =
        new TextEditingController();
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Lottie.asset('images/livreur/login.json'),
          SizedBox(height: 30),
          title('Authentification', 25),
          SizedBox(height: 30),
          field("Email", false, passwordEditingController, "message"),
          SizedBox(height: 10),
          field("Password", true, emailEditingController, "message"),
          SizedBox(height: 20),
          button("Login", () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MyHomePage(
                      title: 'SubSaFood',
                    )));
          }),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Register()));
            },
            child:
                messageLink("Etes vous membre? ", "Inscrivez vous maintenant"),
          )
        ],
      ),
    );
  }

  redirect() {}
}
