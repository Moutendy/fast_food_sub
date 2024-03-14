import 'package:subsafood/models/role.dart';

class User {
  int? id;
  String? name;
  String? email;
  String? image;
  Role? roleUser;
  User({this.id,this.email,this.image,this.name,this.roleUser});
  factory User.fromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'],
    name: json['name'],
    email: json['email'],
    image: json['image'],
    roleUser:json['roleUser']
  );
  }
}
