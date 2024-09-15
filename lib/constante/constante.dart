import 'package:subsafood/constante/enum/role.dart';
import 'package:subsafood/constante/enum/typeproduit.dart';
import 'package:subsafood/models/produit.dart';
import 'package:subsafood/models/user.dart';


User _user = User(
    email: 'teste@gmail.com',
    image: 'images/1.jpg',
    name: 'chris',
    roleUser: roleUser.USER.name,
    tel: '098765444657');
User userglo = User(
    email: 'teste@gmail.com',
    image: 'images/1.jpg',
    name: 'chris',
    roleUser: roleUser.DELIVERY.name,
    tel: '098765444657');
Produit _produit = Produit(
    image: 'images/2.jpg',
    produitDesc:
        'La gastronomie africaine représente un patrimoine culinaire monumental ! En effet, la cuisine d’Afrique regroupe une multitude de spécialités. Congo, Sénégal, Mali… Quel que soit leur pays d’origine, les gourmands de ce vaste continent mettent les merveilleux produits de leur terroir à l’honneu',
    produitPrice: 89,
    produitName: 'viande',
    produitUser: _user,
    typeProduit: TypeProduit.PIZZA.name);
Produit _produit1 = Produit(
    typeProduit: TypeProduit.POISSON.name,
    image: 'images/3.jpg',
    produitDesc:
        'Le mafé est un plat typique du Sénégal qui allie une viande généralement blanche à une préparation épicée avec des cacahuètes. La sauce à l arachide serait quand à elle originaire du Mali, même si sénégalais et maliens se disputent parfois son origine. Nous vous proposons aujourd hui de découvrir comment réaliser votre propre mafé de poulet en quelques instants et sans avoir besoin de voyager aussi loin. Dépaysement garanti !',
    produitPrice: 43.89,
    produitName: 'poisson',
    produitUser: _user);
Produit _produit2 = Produit(
    typeProduit: TypeProduit.VIANDE.name,
    image: 'images/4.jpg',
    produitDesc:
        'Le mafé est un plat typique du Sénégal qui allie une viande généralement blanche à une préparation épicée avec des cacahuètes. La sauce à l arachide serait quand à elle originaire du Mali, même si sénégalais et maliens se disputent parfois son origine. Nous vous proposons aujourd hui de découvrir comment réaliser votre propre mafé de poulet en quelques instants et sans avoir besoin de voyager aussi loin. Dépaysement garanti !',
    produitPrice: 23.89,
    produitName: 'Viande achée',
    produitUser: _user);
List<Produit> produits = [_produit1, _produit, _produit2];

//filtrer les produit par type
List<Produit> produitsParType(String? type) {
  return produits.where((produit) => produit.typeProduit == type).toList();
}

//retourne le nombre de type distinct
int nombreTypesDistincts =
    produits.map((produit) => produit.typeProduit).toSet().length;
//retourne  de type distinct
Set<String?> typesDistincts =
    produits.map((produit) => produit.typeProduit).toSet();
