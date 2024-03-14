import 'dart:ffi';
import 'package:subsafood/models/user.dart';

class Produit {
  Long? id;
  String? produitName;
  Double? produitPrice;
  String? image;
  User? produitUser;
  String? produitDesc;
  Double? produitLocalisation;

  Produit(
      {this.id,
      this.produitPrice,
      this.image,
      this.produitName,
      this.produitUser,
      this.produitDesc,this.produitLocalisation});

  factory Produit.fromJson(Map<String, dynamic> json) {
    return Produit(
        id: json['id'],
        produitName: json['produitName'],
        produitPrice: json['produitPrice'],
        image: json['image'],
        produitUser: json['produitUser'],
        produitDesc:json['produitDesc'],
        produitLocalisation: json['produitLocalisation']
        );
  }
}
