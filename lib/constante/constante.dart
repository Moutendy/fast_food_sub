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
    produitDesc:
        'La gastronomie africaine représente un patrimoine culinaire monumental ! En effet, la cuisine d’Afrique regroupe une multitude de spécialités. Congo, Sénégal, Mali… Quel que soit leur pays d’origine, les gourmands de ce vaste continent mettent les merveilleux produits de leur terroir à l’honneu',
    produitPrice: 89,
    produitName: 'viande',
    produitUser: _user,
    typeProduit: typeProduit1);
Produit _produit1 = Produit(
    typeProduit: typeProduit1,
    image: 'images/3.jpg',
    produitDesc:
        'Le mafé est un plat typique du Sénégal qui allie une viande généralement blanche à une préparation épicée avec des cacahuètes. La sauce à l arachide serait quand à elle originaire du Mali, même si sénégalais et maliens se disputent parfois son origine. Nous vous proposons aujourd hui de découvrir comment réaliser votre propre mafé de poulet en quelques instants et sans avoir besoin de voyager aussi loin. Dépaysement garanti !',
    produitPrice: 43.89,
    produitName: 'poisson',
    produitUser: _user);
Produit _produit2 = Produit(
    typeProduit: typeProduit,
    image: 'images/4.jpg',
    produitDesc:
        'Le mafé est un plat typique du Sénégal qui allie une viande généralement blanche à une préparation épicée avec des cacahuètes. La sauce à l arachide serait quand à elle originaire du Mali, même si sénégalais et maliens se disputent parfois son origine. Nous vous proposons aujourd hui de découvrir comment réaliser votre propre mafé de poulet en quelques instants et sans avoir besoin de voyager aussi loin. Dépaysement garanti !',
    produitPrice: 23.89,
    produitName: 'poisson',
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
