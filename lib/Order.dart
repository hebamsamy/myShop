import 'package:flutter/material.dart';
import 'package:resturant_app/shopManager.dart';

class OrderPage extends StatefulWidget {
  // Product currentprod;
  // OrderPage({required this.currentprod});

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  double total = 1;
  double count = 1;
  // _OrderPageState() {
  //   total = widget.currentprod.price;
  // }
  @override
  Widget build(BuildContext context) {
    var currentprodargs = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: Text(currentprodargs.title),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image(
              image: AssetImage(currentprodargs.image),
            ),
            Text(
              "Your Count ${count.toInt()} ",
              style: TextStyle(fontSize: 30),
            ),
            Slider(
              min: 1,
              max: currentprodargs.qty.toDouble(),
              value: count,
              onChanged: (double newval) {
                // print(newval);
                setState(() {
                  count = newval;
                  total = count.toInt() * currentprodargs.price;
                });
              },
            ),
            Row(
              children: [
                Text(
                  "Price",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(currentprodargs.price.toString(),
                    style: TextStyle(fontSize: 30))
              ],
            ),
            Row(
              children: [
                Text(
                  "Total",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(total.toString(), style: TextStyle(fontSize: 30)),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancel", style: TextStyle(fontSize: 30)),
            ),
          ],
        ),
      ),
    );
  }
}
