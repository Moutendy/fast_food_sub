import 'package:flutter/material.dart';
import 'package:subsafood/main.dart';

import 'package:subsafood/models/user.dart';
import 'package:subsafood/screens/auth/login.dart';
import 'package:subsafood/screens/home/homewithoutauthen.dart';
import 'package:subsafood/screens/horaire/horaire.dart';
import 'package:subsafood/screens/livreur/livreur.dart';
import 'package:subsafood/screens/livreur/orderlivre.dart';
import 'package:subsafood/screens/orders/commandeencours.dart';
import 'package:subsafood/screens/produit/produit.dart';
import 'package:subsafood/screens/produit/produitList.dart';
import 'package:subsafood/services/enum.dart';
import 'package:subsafood/services/localstorage.dart';
import 'package:subsafood/widgetscreens/elemntsup.dart';

register(BuildContext context, User users) async {
  addUser(users);
  User user = await getUser();
  if (user.email == '' || user.email == null) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => Login()), (route) => false);
  } else {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => HomeWithOutAuthen()),
        (route) => false);
  }
}

login(BuildContext context, User users) async {
  addUser(users);
  User user = await getUser();
  if (user.email == '' || user.email == null) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => Login()), (route) => false);
  } else {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => HomeWithOutAuthen()),
        (route) => false);
  }
}

redirection(BuildContext context) async {
  User user = await getUser();
  // Navigator.of(context).pushAndRemoveUntil(
  //     MaterialPageRoute(builder: (context) => HomeWithOutAuthen()),
  //     (route) => false);
  // Navigator.of(context).pushAndRemoveUntil(
  //     MaterialPageRoute(builder: (context) => Login()), (route) => false);
  if (user.email == '' || user.email == null) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => Login()), (route) => false);
  } else {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => HomeWithOutAuthen()),
        (route) => false);
  }
  print(user.email);
  // if (user.email == '') {
  //   Navigator.of(context).pushAndRemoveUntil(
  //       MaterialPageRoute(builder: (context) => Login()), (route) => false);
  // } else if (user.email  != '') {
  //   Navigator.of(context).pushAndRemoveUntil(
  //       MaterialPageRoute(builder: (context) => HomeWithOutAuthen()),
  //       (route) => false);
  // ApiRespnse response = await getUserDetail();
  // if (response.error == null) {
  //   Navigator.of(context).pushAndRemoveUntil(
  //       MaterialPageRoute(builder: (context) => Home()), (route) => false);
  // } else if (response.error == unauthorized) {
  //   Navigator.of(context).pushAndRemoveUntil(
  //       MaterialPageRoute(builder: (context) => Login()), (route) => false);
  // } else {
  //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //     content: Text('${response.error}'),
  //   ));
  // }
  // }
}

// affecterMenu(String role) {
//   Column(children: [

//     switch (role) {
//     case Role.client:
//       break;
//     case Role.deals:
//       break;
//     case Role.delivreded:
//       break;
//     default:
//   }
//   ]);

// }

Widget switchWidget(BuildContext context, User user) {
  switch (user.roleUser!.nameRole!) {
    // ignore: constant_pattern_never_matches_value_type
    case 'client':
      return Column(
        children: [
          buildCenteredInkWell(context, "Edit Profil", Horaire(),Icons.person),
          SizedBox(
            height: 15,
          ),
          buildCenteredInkWell(
              context, "Commande en cours...", CommandeEnCours(),Icons.add_shopping_cart_rounded),
        ],
      );
    case 'deals':
      return Column(
        children: [
          buildCenteredInkWell(context, "Produits", ProduitList(user: user,),Icons.local_mall_rounded),
          SizedBox(
            height: 15,
          ),
          buildCenteredInkWell(context, "Ajouter Livreur", Livreur(),Icons.motorcycle),
          SizedBox(
            height: 15,
          ),
          buildCenteredInkWell(context, "Horaire", Horaire(),Icons.access_alarm),
          SizedBox(
            height: 15,
          ),
          buildCenteredInkWell(context, "Ajouter Produit", Produit(),Icons.local_mall_rounded),
        ],
      );
    case 'delivreded':
      return Column(
        children: [
          buildCenteredInkWell(context, "Ordder Livreur", OrderLivreur(user: user,),Icons.motorcycle_sharp),
          SizedBox(
            height: 15,
          ),
          buildCenteredInkWell(context, "Horaire", Horaire(),Icons.access_alarm),
        ],
      );
    default:
      return Text('Role non reconnu');
  }
}
