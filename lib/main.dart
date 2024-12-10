import 'package:flutter/material.dart';
import 'package:myapp/pages/CartPage.dart';
import 'package:myapp/pages/HomePage.dart';
import 'package:myapp/pages/ItemPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/" : (context) => HomePage(),
        "cartPage" : (context) => CartPage(),
        "itemPage" : (context) => ItemPage()
      },
    );
  }
}