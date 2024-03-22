import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:subsafood/models/user.dart';

// Create storage
final storage = new FlutterSecureStorage();

addUser(User user) async {
// Write value
  await storage.write(key: "email", value: user.email);
  await storage.write(key: "name", value: user.name);
  await storage.write(key: "nameRole", value: user.roleUser?.nameRole);
}

getUser() async {
  User user = new User();
// Write value
  String? email = await storage.read(key: "email");
  String? name = await storage.read(key: "name");
  String? nameRole = await storage.read(key: "nameRole");
  user.email = email;
  user.name = name;
  user.roleUser?.nameRole = nameRole;
  return user;
}
