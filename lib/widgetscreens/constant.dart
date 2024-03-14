import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:subsafood/widgetscreens/colors.dart';

InputDecoration kInputDecoration(String label) {
  FocusNode myFocusNode = new FocusNode();
  return InputDecoration(
      labelText: label,
      labelStyle: TextStyle(
          color: myFocusNode.hasFocus ? blac12 : blue,
          fontSize: 17,
          fontWeight: FontWeight.bold),
      contentPadding: const EdgeInsets.all(10),
      border: InputBorder.none,
      hintText: label);
}

final List<Introduction> list = [
  Introduction(
    title: 'Livraison',
    subTitle: 'Le livreur est en chemin...',
    imageUrl: 'images/livreur/l.png',
    imageHeight: 200,
  ),
  Introduction(
    title: 'Temps de livraison',
    subTitle: '15 minute',
    imageUrl: 'images/livreur/chro.png',
    imageHeight: 200,
  ),
];
