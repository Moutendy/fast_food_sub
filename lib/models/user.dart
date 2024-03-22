import 'package:subsafood/models/role.dart';

class User {
  int? id;
  String? name;
  String? email;
  String? image;
  Role? roleUser;
  String? tel;
  String? password;
  User({this.id,this.email,this.image,this.name,this.roleUser,this.tel,this.password});
  factory User.fromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'],
    name: json['name'],
    email: json['email'],
    tel: json['tel'],
    image: json['image'],
    roleUser:json['roleUser'],
    password:json['password']
  );
  }
}
