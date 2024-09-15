import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subsafood/models/produit.dart';
import 'package:subsafood/screens/orders/orders.dart';
import 'package:subsafood/screens/profil/profil.dart';
import 'package:subsafood/widgetscreens/colors.dart';

class CommandeProduit extends StatefulWidget {
  Produit produit;
  CommandeProduit({super.key, required this.produit});

  @override
  State<StatefulWidget> createState() => _CommandeProduit();
}

class _CommandeProduit extends State<CommandeProduit> {
  bool like = true;
  int nbLike = 12;
  int nbOnder = 1;

  likeAndDislike() {
    like = !like;
    if (like) {
      nbLike++;
    } else {
      nbLike--;
    }
  }

  nmbOrderAdd() {
    nbOnder++;
  }

  nmbOrderRemove() {
    nbOnder--;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        actions: [
          Text(
            "${widget.produit.produitUser!.name!}",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 15,
          ),
          InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Profil(
                          user: widget.produit.produitUser!,
                        )));
              },
              child: CircleAvatar(
                backgroundImage: AssetImage(widget.produit.produitUser!.image!),
              )),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(
                    child: Container(
                  height: MediaQuery.of(context).size.width - 2,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            widget.produit.image!,
                          ),
                          fit: BoxFit.cover)),
                )),
                Positioned(
                    left: 0,
                    right: 0,
                    child: Row(
                      children: [
                        IconButton(
                            style: IconButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            onPressed: () {
                              likeAndDislike();
                              setState(() {});
                            },
                            icon: (like)
                                ? Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                : Icon(
                                    Icons.favorite,
                                    color: Colors.black,
                                  )),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black54, //New
                                  blurRadius: 10.0,
                                  offset: Offset(0, 10))
                            ],
                          ),
                          padding: EdgeInsets.all(1),
                          child: Center(
                            child: Text(
                              "${nbLike}",
                              style: GoogleFonts.aDLaMDisplay(
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                Positioned(
                    left: 0,
                    right: 0,
                    top: MediaQuery.of(context).size.width - 40,
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20))),
                    ))
              ],
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 12),
                    child: Text(
                      widget.produit.produitName!,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                      ),
                    ),
                  )
                ],
              ),
            ),

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      '${widget.produit.produitPrice!} Dh',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.aDLaMDisplay(
                        fontSize: 12,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 1),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "Note",
                            style: GoogleFonts.aDLaMDisplay(
                              fontSize: 11,
                            ),
                          ),
                        ),
                        RatingBar.builder(
                          itemSize: 15,
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.access_time_filled,
                          color: Colors.orange,
                        ),
                        Container(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "20-30 Min",
                            style: GoogleFonts.aDLaMDisplay(
                              fontSize: 11,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Text(
                widget.produit.produitDesc!,
                textAlign: TextAlign.left,
                style: GoogleFonts.abel(
                  fontSize: 11,
                ),
              ),
            ),
          
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    child: ElevatedButton.icon(
                        onPressed: () {
                          
                        },
                        icon: Icon(CupertinoIcons.location_solid),
                        label: Text("Localisation",
                            style: GoogleFonts.aDLaMDisplay(
                              fontSize: 11,
                            ))),
                  ),
                  Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black54, //New
                              blurRadius: 10.0,
                              offset: Offset(0, 10))
                        ],
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            nmbOrderRemove();
                            setState(() {});
                          },
                          icon: Icon(
                            Icons.remove,
                            size: 20,
                          ),
                        ),
                      )),
                  Text(
                    "${nbOnder}",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.abel(
                      fontSize: 16,
                    ),
                  ),
                  Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black54, //New
                              blurRadius: 10.0,
                              offset: Offset(0, 10))
                        ],
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            nmbOrderAdd();
                            setState(() {});
                          },
                          icon: Icon(
                            Icons.add,
                            size: 20,
                          ),
                        ),
                      )),
                  Container(
                    padding: EdgeInsets.all(12),
                    child: ElevatedButton.icon(
                        onPressed: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => LocalisationPage(
                          //           title: "Localisation",
                          //           sourceDe: sourceDes,
                          //           entitypharmacie: widget.entitypharmacie,
                          //         )));

                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Orders()));
                        },
                        icon: Icon(CupertinoIcons.cart_badge_plus),
                        label: Text(
                          "",
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      //  SafeArea(
      //     child: Padding(
      //   padding: EdgeInsets.only(top: 25, left: 12, right: 10),
      //   child: Column(
      //     children: [
      //       Container(
      //         height: 400,
      //         width: 400,
      //         child: Padding(
      //           padding: const EdgeInsets.symmetric(vertical: 10),
      //           child: Image.asset(
      //             widget.produit.image!,
      //             width: 200,
      //             height: 200,
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //       ),
      //       SizedBox(
      //         height: 10,
      //       ),
      //       Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Padding(
      //             padding: EdgeInsets.only(right: 5),
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 Text(
      //                   widget.produit.produitName!,
      //                   style: TextStyle(
      //                       color: black54,
      //                       fontSize: 24,
      //                       fontWeight: FontWeight.bold),
      //                 ),
      //                 Row(
      //                   children: [
      //                     InkWell(
      //                         onTap: () {},
      //                         child: Container(
      //                           alignment: Alignment.center,
      //                           width: 30,
      //                           height: 30,
      //                           decoration: BoxDecoration(
      //                               borderRadius: BorderRadius.circular(5),
      //                               color: white),
      //                           child: Icon(CupertinoIcons.minus),
      //                         )),
      //                     SizedBox(
      //                       width: 8,
      //                     ),
      //                     Text("2"),
      //                     SizedBox(
      //                       width: 8,
      //                     ),
      //                     InkWell(
      //                       onTap: () {},
      //                       child: Container(
      //                         alignment: Alignment.center,
      //                         width: 30,
      //                         height: 30,
      //                         decoration: BoxDecoration(
      //                             borderRadius: BorderRadius.circular(5),
      //                             color: white),
      //                         child: Icon(CupertinoIcons.plus),
      //                       ),
      //                     ),
      //                   ],
      //                 )
      //               ],
      //             ),
      //           ),
      //           SizedBox(
      //             height: 15,
      //           ),
      //           Text(
      //               maxLines: 5, // Limite le texte à une seule ligne
      //               overflow: TextOverflow.ellipsis,
      //               widget.produit.produitDesc!),
      //           SizedBox(
      //             height: 15,
      //           ),
      //           Center(
      //             child: Row(
      //               children: [
      //                 // InkWell(
      //                 //   onTap: () {},
      //                 //   child: const Icon(Icons.location_on, size: 25),
      //                 // ),
      //                 // Text("Localisation"),
      //                 // SizedBox(
      //                 //   width: 10,
      //                 // ),
      //                 Text(
      //                   "Prix:${widget.produit.produitPrice} dh",
      //                   style: TextStyle(
      //                       color: black54,
      //                       fontSize: 18,
      //                       fontWeight: FontWeight.bold,
      //                       textBaseline: TextBaseline.ideographic),
      //                 ),
      //                 SizedBox(
      //                   width: 10,
      //                 ),
      //                 Container(
      //                   child: button("Acheter", () {
      //                     Navigator.of(context).push(MaterialPageRoute(
      //                         builder: (context) => Orders()));
      //                   }),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ],
      //       )
      //     ],
      //   ),
      // )),
    );
  }
}
