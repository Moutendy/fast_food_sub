// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:subsafood/models/user.dart';
// import 'package:subsafood/screens/auth/login.dart';
// import 'package:subsafood/screens/commandes/detailcommande.dart';
// import 'package:subsafood/screens/livreur/livreur.dart';
// import 'package:subsafood/screens/orders/commandeencours.dart';
// import 'package:subsafood/screens/produit/produit.dart';
// import 'package:subsafood/screens/produit/produitList.dart';
// import 'package:subsafood/screens/profil/editprofil.dart';
// import 'package:subsafood/services/authservice.dart';
// import 'package:subsafood/services/localstorage.dart';
// import 'package:subsafood/widgetscreens/card.dart';
// import 'package:subsafood/widgetscreens/colors.dart';
// import 'package:subsafood/widgetscreens/elemntsup.dart';
// import 'package:subsafood/widgetscreens/formulaire.dart';

// import '../horaire/horaire.dart';

// class STabBar extends StatelessWidget {
//     User user;
//   STabBar(  {Key? key,required this.user}) : super(key: key);
//   File? _imageFile;
//   TextEditingController textEditingController = new TextEditingController();
//   TextEditingController telEditingController = new TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     var user = null;
//     return Padding(
//         padding: EdgeInsets.only(top: 3),
//         child: Column(children: [
//           Container(
//             height: 150,
//             width: 150,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(100),
//                 boxShadow: [
//                   BoxShadow(
//                       color: Colors.black54, //New
//                       blurRadius: 10.0,
//                       offset: Offset(0, 10))
//                 ],
//                 image: _imageFile == null
//                     ? user != null
//                         ? DecorationImage(
//                             image: NetworkImage(''), fit: BoxFit.cover)
//                         : DecorationImage(
//                             image: AssetImage('images/icon.png'),
//                             fit: BoxFit.cover)
//                     : DecorationImage(
//                         image: FileImage(_imageFile ?? File('')),
//                         fit: BoxFit.cover),
//                 color: black54),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 15),
//             child: Text(
//               'Moundjigui Christopher',
//               style: TextStyle(
//                   color: black54, fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//           ),
//           SizedBox(
//             height: 5,
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 1),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Tel: ',
//                   style: TextStyle(
//                       color: black54,
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   '0607087656',
//                   style: TextStyle(
//                       color: black54,
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold),
//                 )
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 15,
//           ),
//           Center(
//             child: InkWell(
//               onTap: () {
//                 delete();
//                 redirection(context);
//               },
//               child: fieldMenu("Deconnexion", 15),
//             ),
//           ),
//           SizedBox(
//             height: 100,
//           ),
//           switchWidget(context, 'delivreded')
//         ]));
//   }

// }
