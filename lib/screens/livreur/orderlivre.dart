import 'package:flutter/material.dart';
import 'package:subsafood/screens/profil/profil.dart';
import 'package:subsafood/widgetscreens/card.dart';
import 'package:subsafood/widgetscreens/colors.dart';
import 'package:subsafood/widgetscreens/elemntsup.dart';

class OrderLivreur extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OrderLivreur();
}

class _OrderLivreur extends State<OrderLivreur> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: appBar(context, 'Order Livreur', 'images/3.jpg', Profil()),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[cardHorizontal()])));
  }
}
