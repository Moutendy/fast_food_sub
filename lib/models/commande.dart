import 'dart:ffi';

import 'package:subsafood/models/produit.dart';
import 'package:subsafood/models/statut.dart';
import 'package:subsafood/models/user.dart';

class Commande {
  Produit? commandeProduit;
  User? commandeClient;
  User? commandeLivreur;
  Double? commandeDestination;
  Statut? commandeStatut;

  Commande(
      {this.commandeLivreur,
      this.commandeProduit,
      this.commandeClient,
      this.commandeDestination,
      this.commandeStatut});

  factory Commande.fromJson(Map<String, dynamic> json) {
    return Commande(
        commandeClient: json['commandeClient'],
        commandeLivreur: json['commandeLivreur'],
        commandeProduit: json['commandeProduit'],
        commandeDestination: json['commandeDestination'],
        commandeStatut: json['commandeStatut']);
  }
}
