import 'package:flutter/material.dart';
import 'package:resturant_app/Constants.dart';
import 'package:resturant_app/HomePage.dart';
import 'package:resturant_app/Order.dart';
import 'package:resturant_app/addProductPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resturant App',
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          appBarTheme: AppBarTheme(
              backgroundColor: Color(0xFF0A0E21),
              titleTextStyle: TextStyle(color: primaryColor, fontSize: 30))),
      // home: MyHomePage(),
      routes: {
        '/': (context) => MyHomePage(),
        "/order": (context) => OrderPage(),
        "/create": (context) => AddProductPage()
      },
    );
  }
}
