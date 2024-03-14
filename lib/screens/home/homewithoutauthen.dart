import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:subsafood/widgetscreens/card.dart';
import 'package:subsafood/widgetscreens/colors.dart';

class HomeWithOutAuthen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeWithOutAuthen();
}

class _HomeWithOutAuthen extends State<HomeWithOutAuthen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Icon(Icons.sort_rounded, color: black54, size: 35),
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(Icons.search, color: black54, size: 35),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'SubS & Fast Food',
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
              'Delivied on time',
              style: TextStyle(
                  color: black54, fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          TabBar(
              isScrollable: true,
              labelStyle: TextStyle(fontSize: 20),
              tabs: [
                Tab(
                  text: "Burger",
                ),
                Tab(
                  text: "Pizza",
                ),
                Tab(
                  text: "Tacos",
                ),
                Tab(
                  text: "Pasta",
                )
              ]),
          Flexible(
              flex: 1,
              child: TabBarView(children: [
                ContainterFastFood(context, 1),
                ContainterFastFood(context, 3),
                ContainterFastFood(context, 5),
                ContainterFastFood(context, 6),
              ]))
        ],
      ),
    );
  }
}
