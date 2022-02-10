import 'package:flutter/material.dart';
import 'package:resturant_app/PruductCard.dart';
import 'package:resturant_app/shopManager.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ShopManager nowManager = ShopManager();
  @override
  Widget build(BuildContext context) {
    var list =
        nowManager.productList.map((e) => ProductCard(CurrentProd: e)).toList();
    print(list);
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.emoji_emotions,
          color: Colors.amber,
        ),
        title: Text(
          "My Shop",
          style: TextStyle(color: Colors.amber),
        ),
      ),
      body: SafeArea(
        child: Expanded(child: Column(children: list)),
      ),
    );
  }
}
