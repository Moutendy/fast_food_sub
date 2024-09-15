import 'dart:ffi';
import 'package:subsafood/constante/enum/typeproduit.dart';
import 'package:subsafood/models/user.dart';

class Produit {
  Long? id;
  String? produitName;
  double? produitPrice;
  String? image;
  User? produitUser;
  String? produitDesc;
  double? produitLocalisation;
  String? typeProduit;
  Produit(
      {this.id,
      this.produitPrice,
      this.image,
      this.produitName,
      this.produitUser,
      this.produitDesc,
      this.produitLocalisation,this.typeProduit});

  factory Produit.fromJson(Map<String, dynamic> json) {
    return Produit(
        id: json['id'],
        produitName: json['produitName'],
        produitPrice: json['produitPrice'],
        image: json['image'],
        produitUser: json['produitUser'],
        produitDesc: json['produitDesc'],
        typeProduit: json['typeProduit'],
        produitLocalisation: json['produitLocalisation']);
  }
}
