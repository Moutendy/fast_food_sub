import 'dart:ffi';

class Statut {
  Long? id;
  String? nameStatut;
  Statut({this.id, this.nameStatut});

  factory Statut.formJson(Map<String, dynamic> json) {
    return Statut(id: json['id'], nameStatut: json['nameStatut']);
  }
}
