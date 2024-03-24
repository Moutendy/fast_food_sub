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
import 'package:subsafood/widgetscreens/elemntsup.dart';
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
              image: DecorationImage(
                  image: AssetImage("images/$i.jpg"), fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(15),
              color: Color.fromARGB(255, 250, 250, 250),
              boxShadow: [
                BoxShadow(color: Colors.black, spreadRadius: 1, blurRadius: 8)
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 2),
                child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: backgroundColor),
                    alignment: Alignment.bottomCenter,
                    child: title("Cheese Burger", 15)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          color: backgroundColor),
                      child: title("7$i dh", 19),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CommandeProduit(
                                    id: i,
                                  )));
                        },
                        child: icon(CupertinoIcons.cart_badge_plus, 25))
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
final List<String> heuresTravail = [
  '9h00 - 17h00',
  '9h00 - 17h00',
  '9h00 - 17h00',
  '9h00 - 17h00',
  '9h00 - 17h00',
  'Fermé',
  'Fermé',
];
horaireFastFood() {
  return Container(
      child: Center(
    child: ListView.builder(
        itemCount: daysOfWeek.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 70),
              Text(daysOfWeek[index],
                  style:
                      TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
              SizedBox(width: 10), // Espacement entre le jour et l'heure
              Text(
                heuresTravail[index],
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
            ],
          ));
        }),
  ));
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

cardHorizontal() {
  return Container(
    height: 150,
    margin: EdgeInsets.all(3),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: white,
      border: Border.all(width: 1.0, color: Colors.black),
      boxShadow: [
        BoxShadow(
            color: Colors.black54, //New
            blurRadius: 1.0,
            offset: Offset(0, 5))
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(3),
          height: 250,
          width: 170,
          decoration: BoxDecoration(
//border: Border.all(width: 1.0, color: Colors.black),
              boxShadow: [
                BoxShadow(
                    color: Colors.black54, //New
                    blurRadius: 1.0,
                    offset: Offset(0, 5))
              ],
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('images/3.jpg'),
                fit: BoxFit.cover,
              )),
        ),
        Container(
          margin: EdgeInsets.all(3),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text("Poisson",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 4,
              ),
              Container(
                width: 120,
                height: 100,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(5),
                    // border: Border.all(width: 1.0, color: Colors.black)
                    ),
                child: Text(
                  "This is an example This is an example This is an example This is an example This is an example This is an example",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                  overflow: TextOverflow
                      .fade, // Définir le comportement en cas de dépassement
                  maxLines: 8,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Container(
          margin: EdgeInsets.all(3),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text("Livré",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 10,
              ),
              iconValidation(Icons.check_circle, 13, Colors.green),
              SizedBox(
                height: 7,
              ),
              iconValidation(Icons.cancel, 13, Colors.red),
              SizedBox(
                height: 10,
              ),
              desc('Prix: 76 dh', 11)
            ],
          ),
        )
      ],
    ),
  );
}
