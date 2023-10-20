import 'package:flutter/material.dart';
import 'package:flutterproject/increment.dart';
import 'package:provider/provider.dart';
import 'package:flutterproject/test.dart';

void main() {
  runApp(
    //créer une instance de la classe CounterProvider
    ChangeNotifierProvider(
      create: (context) => CounterProvider(),  //create est utilisé pour créer une instance de CounterProvider et la rendre disponible pour toute l'application
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyIncrementPage(),
    );
  }
}
