import 'dart:ffi';

class TypeProduit {
  Long? id;
  String? name;
  TypeProduit({this.id, this.name});

  factory TypeProduit.formJson(Map<String, dynamic> json) {
    return TypeProduit(id: json['id'], name: json['name']);
  }
}