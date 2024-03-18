import 'package:flutter/material.dart';
import 'package:subsafood/widgetscreens/card.dart';
import 'package:subsafood/widgetscreens/colors.dart';

class Horaire extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Horaire();
}

class _Horaire extends State<Horaire> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
      ),
      body: Center(
        child: horaireFastFood(),
      ),
    );
  }
}
