import 'dart:ffi';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';
import 'package:lottie/lottie.dart';
import 'package:subsafood/screens/commandes/commandeproduit.dart';
import 'package:subsafood/widgetscreens/colors.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:subsafood/widgetscreens/constant.dart';
import 'package:subsafood/widgetscreens/formulaire.dart';
import 'package:subsafood/widgetscreens/icons.dart';

Widget profil(File _imageFile, Function onPressed) {
  return Container(
    height: 200,
    width: 200,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
              color: black54!, //New
              blurRadius: 10.0,
              offset: Offset(0, 10))
        ],
        // ignore: unnecessary_null_comparison
        image: _imageFile == null
            ? DecorationImage(
                image: AssetImage('images/m.jpg'), fit: BoxFit.cover)
            : DecorationImage(
                image: FileImage(_imageFile ?? File('')), fit: BoxFit.cover)),
    child: IconButton(
      icon: Icon(
        Icons.image,
        color: black38,
      ),
      onPressed: () => onPressed(),
    ),
  );
}

Container card(String image, String title, String desc) {
  return Container(
    width: 200,
    height: 265,
    decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              color: greywith!,
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0, 3))
        ]),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          SizedBox(
            height: 3,
          ),
          Container(
            child: Image.network(
              image,
              height: 150,
            ),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            desc,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          RatingBar.builder(
            initialRating: 1,
            minRating: 1,
            direction: Axis.horizontal,
            itemCount: 5,
            itemSize: 10,
            itemPadding: EdgeInsets.symmetric(horizontal: 12),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: red,
            ),
            onRatingUpdate: (index) {},
          )
        ],
      ),
    ),
  );
}

ContainterFastFood(BuildContext context, int id) {
  return GridView.count(
    crossAxisCount: 2,
    shrinkWrap: true,
    childAspectRatio: 0.75,
    children: [
      for (int i = id; i < 7; i++)
        Container(
          padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
          margin: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromARGB(255, 250, 250, 250),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 8)
              ]),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(1),
                child: Image.asset(
                  "images/$i.jpg",
                  width: 200,
                  height: 170,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 2),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Cheese Burger",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "323$i,234 dh",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CommandeProduit(
                                    id: i,
                                  )));
                        },
                        child: Icon(
                          CupertinoIcons.cart_badge_plus,
                          size: 25,
                          color: Colors.black,
                        ))
                  ],
                ),
              )
            ],
          ),
        )
    ],
  );
}

ProfilEditFastFood(String name, bool pass,
    TextEditingController textEditingController, String message) {
  SafeArea(
      child: Center(
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(
        height: 5,
      ),
      field("Email", false, textEditingController, message),
      SizedBox(height: 20),
      fieldNumeric("Tel", true, textEditingController, message),
      SizedBox(height: 20),
      button("Edit", () {}),
    ]),
  ));
}

ContainterPending(String message) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(
        height: 100,
      ),
      Container(
        child: Text(message),
      ),
      SizedBox(
        height: 100,
      ),
      Center(
        child: CircularProgressIndicator(
          backgroundColor: blac12,
          strokeAlign: 10,
          strokeWidth: 15,
          strokeCap: StrokeCap.square,
        ),
      )
    ],
  );
}

ConfirmationFastFood() {
  return Column(
    children: [
      SizedBox(
        height: 100,
      ),
      Container(
        child: Text('Commande acceptée..'),
      ),
      SizedBox(
        height: 10,
      ),
      Center(
        child: // Load a Lottie file from your assets
            Lottie.asset('images/livreur/valid.json'),
      )
    ],
  );
}

delivered() {
  return IntroScreenOnboarding(
    foregroundColor: Colors.green,
    introductionList: list,
    onTapSkipButton: () {},
  );
}

final List<String> daysOfWeek = [
  'Monday',
  'Tuesday',
  'Wednesday',
  'Thursday',
  'Friday',
  'Saturday',
  'Sunday',
];
horaireFastFood() {
  return Container(
      child: ListView.builder(
          itemCount: daysOfWeek.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(
                daysOfWeek[index],
                style: TextStyle(fontSize: 18.0),
              ),
            );
          }));
}

produitForProfil(
    var user,
    File? _imageFile,
    TextEditingController textEditingController,
    TextEditingController telEditingController) {
  return Container(
    child: ListView(
      children: [
        SizedBox(height: 25),
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
                            image: NetworkImage(''), fit: BoxFit.cover)
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
        field("Nom Produit", false, textEditingController, "message"),
        SizedBox(height: 10),
        field("Description Produit", false, textEditingController, "message"),
        SizedBox(height: 10),
        fieldNumeric("Prix", false, telEditingController, "message"),
        SizedBox(height: 10),
        button("Ajouter", () {}),
        SizedBox(height: 10),
        button("Ajouter", () {}),
        SizedBox(height: 10),
        button("Ajouter", () {}),
        SizedBox(height: 10),
        fieldNumeric("Prix", false, telEditingController, "message"),
      ],
    ),
  );
}

deliveredanimation() {
  return ListView(
    children: [
      // Load a Lottie file from your assets
      Lottie.asset('images/livreur/moto.json'),
      SizedBox(
        height: 12,
      ),
      Center(
        child: Text(
          "Le livreur est sur le chemin...",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      // Load a Lottie file from a remote url
      // Lottie.network(
      //     'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),
      Center(
        child: Text(
          "Il sera là dans 15 minutes",
          style: TextStyle(
              color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      )
    ],
  );
}

formulairescroll(TextEditingController textEditingController,
    TextEditingController telEditingController) {
  return SingleChildScrollView(
    child: Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          field("Ville", false, telEditingController, "message"),
          SizedBox(height: 10),
          fieldNumeric("Description", false, telEditingController, "message"),
          SizedBox(height: 20),
          button("Ajouter", () {}),
        ],
      ),
    ),
  );
}

deliveredHeadLoging() {
  return ListView(
    children: [
      // Load a Lottie file from your assets
      Lottie.asset('images/livreur/moto.json'),

      // Load a Lottie file from a remote url
      // Lottie.network(
      //     'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),
    ],
  );
}
