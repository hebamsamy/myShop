import 'package:flutter/material.dart';
import 'package:resturant_app/HomePage.dart';

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
          appBarTheme: AppBarTheme(backgroundColor: Color(0xFF0A0E21))),
      home: MyHomePage(),
    );
  }
}