import 'package:subsafood/models/produit.dart';
import 'package:subsafood/models/role.dart';
import 'package:subsafood/models/typeproduit.dart';
import 'package:subsafood/models/user.dart';

TypeProduit typeProduit = TypeProduit(name: 'viande');
TypeProduit typeProduit1 = TypeProduit(name: 'poisson');
Role role = Role(nameRole: 'deals');
Role role1 = Role(nameRole: 'client');
User _user = User(
    email: 'teste@gmail.com',
    image: 'images/1.jpg',
    name: 'chris',
    roleUser: role,
    tel: '098765444657');
User userglo = User(
    email: 'teste@gmail.com',
    image: 'images/1.jpg',
    name: 'chris',
    roleUser: role,
    tel: '098765444657');
Produit _produit = Produit(
    image: 'images/2.jpg',
    produitDesc: 'description',
    produitPrice: 89,
    produitName: 'poisson',
    produitUser: _user,
    typeProduit: typeProduit1);
Produit _produit1 = Produit(
    typeProduit: typeProduit1,
    image: 'images/3.jpg',
    produitDesc: 'descriptiongggg ::::svsdv',
    produitPrice: 43.89,
    produitName: 'viande',
    produitUser: _user);
Produit _produit2 = Produit(
    typeProduit: typeProduit,
    image: 'images/4.jpg',
    produitDesc: 'description ssfsfsf',
    produitPrice: 23.89,
    produitName: 'poulet',
    produitUser: _user);
List<Produit> produits = [_produit1, _produit, _produit2];

//filtrer les produit par type
List<Produit> produitsParType(String? type) {
  return produits
      .where((produit) => produit.typeProduit?.name == type)
      .toList();
}

//retourne le nombre de type distinct
int nombreTypesDistincts =
    produits.map((produit) => produit.typeProduit).toSet().length;
//retourne  de type distinct
Set<TypeProduit?> typesDistincts =
    produits.map((produit) => produit.typeProduit).toSet();
