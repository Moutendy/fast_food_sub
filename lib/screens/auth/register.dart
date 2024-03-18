import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:subsafood/main.dart';
import 'package:subsafood/screens/auth/login.dart';
import 'package:subsafood/screens/home/homewithoutauthen.dart';
import 'package:subsafood/screens/orders/orders.dart';
import 'package:subsafood/widgetscreens/colors.dart';
import 'package:subsafood/widgetscreens/elemntsup.dart';
import 'package:subsafood/widgetscreens/formulaire.dart';
import 'package:subsafood/widgetscreens/icons.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Register();
}

class _Register extends State<Register> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    TextEditingController emailEditingController = new TextEditingController();
    TextEditingController passwordEditingController =
        new TextEditingController();
    return Scaffold(
        backgroundColor: colorsgrey,
        appBar: AppBar(
          backgroundColor: backgroundColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Lottie.asset('images/livreur/login.json'),
              SizedBox(height: 30),
              title('Register', 25),
              SizedBox(height: 30),
              field("Email", false, passwordEditingController, "message"),
              SizedBox(height: 10),
              fieldNumeric("Tel", false, passwordEditingController, "message"),
              SizedBox(height: 10),
              field("Password", true, emailEditingController, "message"),
              SizedBox(height: 20),
              button("Register", () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MyHomePage(
                          title: 'SubSaFood',
                        )));
              }),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Login()));
                },
                child: messageLink(
                    "vous avez déjà un compte? ", "Authentification"),
              )
            ],
          ),
        ));
  }
}
