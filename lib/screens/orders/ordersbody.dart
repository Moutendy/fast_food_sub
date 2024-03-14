import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:subsafood/widgetscreens/card.dart';
import 'package:subsafood/widgetscreens/colors.dart';

class OrderBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OrderBody();
}

class _OrderBody extends State<OrderBody> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Fast Food Orders',
              style: TextStyle(
                  color: black54, fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Online',
              style: TextStyle(
                  color: black54, fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          TabBar(
              isScrollable: true,
              labelStyle: TextStyle(fontSize: 15),
              tabs: [
                Tab(
                  text: "Pending",
                ),
                Tab(
                  text: "Confirmer",
                ),
                Tab(
                  text: "Process",
                ),
                Tab(
                  text: "Delivered",
                )
              ]),
          Flexible(
              flex: 1,
              child: TabBarView(children: [
                ContainterPending(
                    "Attendez que votre commande soit prise en charge"),
                ConfirmationFastFood(),
                ContainterPending("En cours de traitement..."),
                delivered(),
              ]))
        ],
      ),
    );
  }
}
