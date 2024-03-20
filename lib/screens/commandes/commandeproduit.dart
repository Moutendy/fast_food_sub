import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:subsafood/screens/auth/login.dart';
import 'package:subsafood/screens/orders/orders.dart';
import 'package:subsafood/screens/profil/profil.dart';
import 'package:subsafood/widgetscreens/colors.dart';
import 'package:subsafood/widgetscreens/formulaire.dart';

class CommandeProduit extends StatefulWidget {
  int id;
  CommandeProduit({super.key, required this.id});

  @override
  State<StatefulWidget> createState() => _CommandeProduit();
}

class _CommandeProduit extends State<CommandeProduit> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        actions: [
          Text(
            "Profil du vendeur(se)",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 15,
          ),
          InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Profil()));
              },
              child: CircleAvatar(
                backgroundImage: AssetImage("images/3.jpg"),
              )),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(top: 25, left: 12, right: 10),
        child: Column(
          children: [
            Container(
              height: 400,
              width: 400,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Image.asset(
                  "images/${widget.id}.jpg",
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "SubS & Fast Food",
                        style: TextStyle(
                            color: black54,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          InkWell(
                              onTap: () {},
                              child: Container(
                                alignment: Alignment.center,
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: white),
                                child: Icon(CupertinoIcons.minus),
                              )),
                          SizedBox(
                            width: 8,
                          ),
                          Text("2"),
                          SizedBox(
                            width: 8,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: white),
                              child: Icon(CupertinoIcons.plus),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                    maxLines: 5, // Limite le texte à une seule ligne
                    overflow: TextOverflow.ellipsis,
                    'Prémière puissance de l’UEMOA, la Côte d’Ivoire est un pays riche pour sa culture, ses icones au football mais aussi pour sa gastronomie . Plusieurs de ces plats ivoiriens ont avec le temps pu se faire une bonne réputation qui va au delà des frontières ivoiriennes : le garba , l’alloco etc . A ces deux plats, nous avons ajouté d’autres recettes pour vous faire decouvrir dans cet article le top 12 des meilleurs plats ivoiriens à tester absolument. Ce classement est le nôtre et la liste pourrait ne pas être exhaustive.'),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Row(
                    children: [
                      // InkWell(
                      //   onTap: () {},
                      //   child: const Icon(Icons.location_on, size: 25),
                      // ),
                      // Text("Localisation"),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      Text(
                        "Prix:100 dh",
                        style: TextStyle(
                            color: black54,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            textBaseline: TextBaseline.ideographic),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: button("Acheter", () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Orders()));
                        }),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
