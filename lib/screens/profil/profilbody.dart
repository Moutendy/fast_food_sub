import 'dart:io';

import 'package:flutter/material.dart';
import 'package:subsafood/widgetscreens/card.dart';
import 'package:subsafood/widgetscreens/colors.dart';
import 'package:subsafood/widgetscreens/formulaire.dart';

class STabBar extends StatelessWidget {
  STabBar({Key? key}) : super(key: key);
  File? _imageFile;
  TextEditingController textEditingController = new TextEditingController();
  TextEditingController telEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    var user = null;
    return Padding(
      padding: EdgeInsets.only(top: 3),
      child: Column(
        children: [
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
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Moundjigui Christopher',
              style: TextStyle(
                  color: black54, fontSize: 24, fontWeight: FontWeight.bold),
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
                  '0607087656',
                  style: TextStyle(
                      color: black54,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Center(
            child: TabBar(
                isScrollable: true,
                labelStyle: TextStyle(fontSize: 15),
                tabs: [
                  Tab(
                    text: "My Profil",
                  ),
                  Tab(
                    text: "Order",
                  ),
                  Tab(
                    text: "Ajout Produit",
                  ),
                  Tab(
                    text: "Horaires",
                  ),
                  Tab(
                    text: "Statut",
                  ),
                ]),
          ),
          Flexible(
              flex: 1,
              child: TabBarView(children: [
                Container(
                  child: Column(
                    children: [
                      Center(
                        child: Container(
                          height: 80,
                          width: 80,
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
                                          image: NetworkImage(''),
                                          fit: BoxFit.cover)
                                      : DecorationImage(
                                          image: AssetImage('images/icon.png'),
                                          fit: BoxFit.cover)
                                  : DecorationImage(
                                      image: FileImage(_imageFile ?? File('')),
                                      fit: BoxFit.cover),
                              color: black54),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      field("Email", false, textEditingController, "message"),
                      SizedBox(height: 10),
                      fieldNumeric(
                          "Tel", false, telEditingController, "message"),
                      SizedBox(height: 10),
                      button("Edit", () {}),
                    ],
                  ),
                ),
                ContainterFastFood(context, 4),
                Container(
                  child: Column(
                    children: [
                      Center(
                        child: Container(
                          height: 80,
                          width: 80,
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
                                          image: NetworkImage(''),
                                          fit: BoxFit.cover)
                                      : DecorationImage(
                                          image: AssetImage('images/icon.png'),
                                          fit: BoxFit.cover)
                                  : DecorationImage(
                                      image: FileImage(_imageFile ?? File('')),
                                      fit: BoxFit.cover),
                              color: black54),
                        ),
                      ),
                      SizedBox(height: 15),
                      field("Nom Produit", false, textEditingController,
                          "message"),
                      SizedBox(height: 10),
                      field("Description Produit", false, textEditingController,
                          "message"),
                      SizedBox(height: 10),
                      fieldNumeric(
                          "Prix", false, telEditingController, "message"),
                      SizedBox(height: 10),
                      button("Ajouter", () {}),
                    ],
                  ),
                )
              ]))
        ],
      ),
    );
  }
}
