import 'package:flutter/material.dart';
import 'package:resturant_app/Order.dart';
import 'shopManager.dart';

class ProductCard extends StatelessWidget {
  Product CurrentProd;
  ProductCard({required this.CurrentProd});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => OrderPage(
                      currentprod: CurrentProd,
                    )));
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        color: Colors.amber,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(CurrentProd.image),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              CurrentProd.title,
              style: TextStyle(fontFamily: "fastive", fontSize: 50),
            )
          ],
        ),
      ),
    );
  }
}
