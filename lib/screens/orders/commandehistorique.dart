import 'package:flutter/material.dart';
import 'package:subsafood/widgetscreens/colors.dart';

class CommandeHistorique extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CommandeHistorique();
}

class _CommandeHistorique extends State<CommandeHistorique> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        title: Text(
          "Historique Commande",
          style: TextStyle(
              color: black54, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(),
    );
  }
}
