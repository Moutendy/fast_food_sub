import 'dart:io';

import 'package:flutter/material.dart';
import 'package:subsafood/models/user.dart';
import 'package:subsafood/screens/home/homewithoutauthen.dart';
import 'package:subsafood/screens/profil/profilbody.dart';
import 'package:subsafood/services/authservice.dart';
import 'package:subsafood/services/localstorage.dart';
import 'package:subsafood/widgetscreens/card.dart';
import 'package:subsafood/widgetscreens/colors.dart';
import 'package:subsafood/widgetscreens/elemntsup.dart';
import 'package:subsafood/widgetscreens/formulaire.dart';

class Profil extends StatefulWidget {
  User user;
  Profil({super.key, required this.user});

  @override
  State<StatefulWidget> createState() => _Profil();
}

class _Profil extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    File? _imageFile;
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: backgroundColor,
            appBar: AppBar(),
            body: Padding(
                padding: EdgeInsets.only(top: 3),
                child: Column(children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black54, //New
                              blurRadius: 10.0,
                              offset: Offset(0, 10))
                        ],
                        image: _imageFile == null
                            ? widget.user != null
                                ? DecorationImage(
                                    image: NetworkImage(''), fit: BoxFit.cover)
                                : DecorationImage(
                                    image: AssetImage(widget.user.image!),
                                    fit: BoxFit.cover)
                            : DecorationImage(
                                image: FileImage(_imageFile ?? File('')),
                                fit: BoxFit.cover),
                        color: black54),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      widget.user.name!,
                      style: TextStyle(
                          color: black54,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Tel: ',
                          style: TextStyle(
                              color: black54,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.user.tel!,
                          style: TextStyle(
                              color: black54,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        delete();
                        redirection(context);
                      },
                      child: fieldMenu("Deconnexion", 15),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  switchWidget(context, widget.user)
                ]))));
  }
}
