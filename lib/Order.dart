import 'package:flutter/material.dart';
import 'package:resturant_app/shopManager.dart';

class OrderPage extends StatefulWidget {
  Product currentprod;
  OrderPage({required this.currentprod});

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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.currentprod.title),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image(
              image: AssetImage(widget.currentprod.image),
            ),
            Text(
              "Your Count ${count.toInt()} ",
              style: TextStyle(fontSize: 30),
            ),
            Slider(
              min: 1,
              max: widget.currentprod.qty.toDouble(),
              value: count,
              onChanged: (double newval) {
                // print(newval);
                setState(() {
                  count = newval;
                  total = count.toInt() * widget.currentprod.price;
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
                Text(widget.currentprod.price.toString(),
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
