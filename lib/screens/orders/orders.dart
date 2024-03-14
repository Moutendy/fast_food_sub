import 'package:flutter/material.dart';
import 'package:subsafood/screens/home/homewithoutauthen.dart';
import 'package:subsafood/screens/orders/ordersbody.dart';
import 'package:subsafood/widgetscreens/colors.dart';

class Orders extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Orders();
}

class _Orders extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: backgroundColor,
          appBar: AppBar(
            backgroundColor: backgroundColor,
          ),
          body: OrderBody(),
        ));
  }
}
