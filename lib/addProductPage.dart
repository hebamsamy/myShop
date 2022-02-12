import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:resturant_app/shopManager.dart';

class AddProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var ProdNAme = TextEditingController();
    var ProdDesc = TextEditingController();
    var ProdPrice = TextEditingController();
    var ProdQty = TextEditingController();
    var prodCat = type.car;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Add to List Product"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: ProdNAme,
              decoration: InputDecoration(
                label: Text("Product Name"),
                labelStyle: TextStyle(fontSize: 30),
              ),
            ),
            TextField(
              controller: ProdDesc,
              decoration: InputDecoration(
                label: Text("Product Description"),
                labelStyle: TextStyle(fontSize: 30),
              ),
            ),
            TextField(
              controller: ProdPrice,
              decoration: InputDecoration(
                label: Text("Product Price"),
                labelStyle: TextStyle(fontSize: 30),
              ),
            ),
            TextField(
              controller: ProdQty,
              decoration: InputDecoration(
                label: Text("Product Quantity"),
                labelStyle: TextStyle(fontSize: 30),
              ),
            ),
            Row(
              children: [
                Text("Product Category", style: TextStyle(fontSize: 30)),
                DropdownButton(
                    value: type.car,
                    items: type.values
                        .map((e) =>
                            DropdownMenuItem(child: Text(e.name), value: e))
                        .toList(),
                    onChanged: (val) {
                      prodCat = val as type;
                    })
              ],
            ),
            TextButton(
                onPressed: () {
                  try {
                    int qty = int.parse(ProdQty.text);
                    double price = double.parse(ProdPrice.text);
                    ShopManager Manager = ShopManager();
                    Manager.AddtoList(Product(
                        id: "",
                        title: ProdNAme.text,
                        desc: ProdDesc.text,
                        price: price,
                        catergy: prodCat,
                        image: "",
                        qty: qty));
                    print(Manager.productList);
                    Navigator.pop(context);
                  } catch (err) {
                    print("enter valid number!!!!!!!");
                  }
                },
                child: Text("add"))
          ],
        ),
      ),
    );
  }
}
