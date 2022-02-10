import 'package:flutter/material.dart';
import 'package:resturant_app/shopManager.dart';

class OrderPage extends StatefulWidget {
  Product currentprod;
  OrderPage({required this.currentprod});

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.currentprod.title),
      ),
    );
  }
}
