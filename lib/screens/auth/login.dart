import 'package:flutter/material.dart';
import 'package:subsafood/screens/auth/loginbady.dart';
import 'package:subsafood/widgetscreens/colors.dart';
import 'package:subsafood/widgetscreens/formulaire.dart';
import 'package:subsafood/widgetscreens/icons.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: colorsgrey,
        appBar: AppBar(
          backgroundColor: backgroundColor,
        ),
        body: LoginBody());
  }
}
