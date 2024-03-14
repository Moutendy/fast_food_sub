class Role {
int? id;
String? nameRole;
Role({this.id,this.nameRole});
factory Role.fromJson(Map<String,dynamic> json){
  return Role(
    id:json['id'],
    nameRole:json['nameRole']
  );
 }

}
