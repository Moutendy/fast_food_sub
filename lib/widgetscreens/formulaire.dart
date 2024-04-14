import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:subsafood/widgetscreens/colors.dart';
import 'package:subsafood/widgetscreens/constant.dart';
import 'package:subsafood/widgetscreens/elemntsup.dart';
import 'package:subsafood/widgetscreens/icons.dart';

Widget button(String name, Function onPressed) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 25.0),
    child: Container(
      decoration:
          BoxDecoration(color: deep, borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: TextButton(
          onPressed: () => onPressed(),
          child: Text(
            name,
            // ignore: prefer_const_constructors
            style: TextStyle(
                color: white, fontWeight: FontWeight.bold, fontSize: 17),
          ),
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            )),
          ),
        ),
      ),
    ),
  );
}

Widget field(String name, bool pass,
    TextEditingController textEditingController, String message) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    child: Container(
      decoration: BoxDecoration(
          color: colorsgrey,
          border: Border.all(color: white!),
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: TextFormField(
            obscureText: pass,
            controller: textEditingController,
            validator: (value) => value!.isEmpty ? message : null,
            decoration: kInputDecoration(name)),
      ),
    ),
  );
}

Widget fieldNumeric(String name, bool pass,
    TextEditingController textEditingController, String message) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: TextFormField(
            keyboardType: TextInputType.number,
            obscureText: pass,
            controller: textEditingController,
            validator: (value) => value!.isEmpty ? message : null,
            decoration: kInputDecoration(name)),
      ),
    ),
  );
}

Widget alerte(String text, Color color) {
  return Container(
    padding: EdgeInsets.all(12),
    height: 90,
    decoration: BoxDecoration(
        color: color, borderRadius: BorderRadius.all(Radius.circular(20))),
    child: Center(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          text,
          style: TextStyle(fontSize: 18, color: Colors.white),
        )
      ]),
    ),
  );
}

Widget fieldMenu(String name, double s, IconData iconData) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    child: Container(
      decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(150)),
                color: white),
            child: icon(iconData, 20),
          ),
          Padding(
            padding: EdgeInsets.only(left: 0.0),
            child: Center(
              child: title(name, s),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 0.0),
            child: Center(
              child: Icon(Icons.chevron_right),
            ),
          )
        ],
      ),
    ),
  );
}

select(BuildContext context, TextEditingController _fruitController,
    String _selectedFruit, Function(String?)? onchange) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    child: Container(
      decoration: BoxDecoration(
          color: colorsgrey,
          border: Border.all(color: white!),
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: TextFormField(
          controller: _fruitController,
          readOnly: true,
          decoration: InputDecoration(
            hintText: 'Role User',
            suffixIcon: Icon(Icons.arrow_drop_down),
          ),
          onTap: () {
            showRoleSelectionDialog(
                context, _fruitController, _selectedFruit, onchange);
          },
        ),
      ),
    ),
  );
}
