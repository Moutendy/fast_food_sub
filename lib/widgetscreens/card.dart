import 'dart:ffi';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';
import 'package:subsafood/screens/commandes/commandeproduit.dart';
import 'package:subsafood/widgetscreens/colors.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:subsafood/widgetscreens/constant.dart';
import 'package:subsafood/widgetscreens/formulaire.dart';

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
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xFF232227),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 8)
              ]),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Image.asset("images/$i.jpg",
                    width: 200, height: 140, fit: BoxFit.cover),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Cheese Burger",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: white),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Text("Hot Burger",
                    style: TextStyle(fontSize: 10, color: white)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "dh $i",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
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
                          color: Colors.white,
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
        child: FaIcon(
          FontAwesomeIcons
              .checkCircle, // Utilisez l'icône de validation de FontAwesome
          size: 120.0,
          color: Colors.green, // Couleur de l'icône
        ),
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
