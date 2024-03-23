import 'package:flutter/material.dart';
import 'package:subsafood/screens/home/homewithoutauthen.dart';
import 'package:subsafood/screens/loading.dart';
import 'package:subsafood/screens/profil/profil.dart';
import 'package:subsafood/widgetscreens/colors.dart';
import 'package:subsafood/widgetscreens/elemntsup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SubSaFood',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: colorsgrey!),
        useMaterial3: true,
      ),
      //  routes: {
      //   '/hello-world': HomeWithOutAuthen(),
      // },
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'SubSaFood'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Loading());
  }
}
