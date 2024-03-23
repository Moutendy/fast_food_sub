import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:subsafood/main.dart';
import 'package:subsafood/models/user.dart';
import 'package:subsafood/screens/auth/login.dart';
import 'package:subsafood/screens/home/homewithoutauthen.dart';
import 'package:subsafood/screens/orders/orders.dart';
import 'package:subsafood/services/authservice.dart';
import 'package:subsafood/widgetscreens/colors.dart';
import 'package:subsafood/widgetscreens/elemntsup.dart';
import 'package:subsafood/widgetscreens/formulaire.dart';
import 'package:subsafood/widgetscreens/icons.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Register();
}

class _Register extends State<Register> {
  TextEditingController emailEditingController = new TextEditingController();
  TextEditingController passwordEditingController = new TextEditingController();
  TextEditingController role = new TextEditingController();
  TextEditingController telEditingController = new TextEditingController();
  User user = new User();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    // TextEditingController passwordEditingController =
    //     new TextEditingController();
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
              field("Email", false, emailEditingController, "message"),
              SizedBox(height: 10),
              fieldNumeric("Tel", false, telEditingController, "message"),
              SizedBox(height: 10),
              field("Password", true, passwordEditingController, "message"),
              SizedBox(height: 20),
              select(context, role, "Role", onDropdownChanged),
              SizedBox(height: 20),
              button("Register", () {
                // print(role.text);
                // print(emailEditingController.text);
                // print(passwordEditingController.text);
                // print(telEditingController.text);

                user.email = emailEditingController.text;
                user.tel = telEditingController.text;
                user.roleUser?.nameRole = role.text;

                user.password = passwordEditingController.text;
                register(context, user);
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => MyHomePage(
                //           title: 'SubSaFood',
                //         )));
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

  onDropdownChanged(String? p1) {
    setState(() {
      role.text = p1!;
    });
  }
}
