class ShopManager {
  List<Product> productList = [
    Product(
        id: "1",
        title: "Colth",
        desc: "desc",
        price: 50,
        catergy: type.cloth,
        image: "img/apple.jpeg",
        qty: 0),
    Product(
        id: "2",
        title: "apple",
        desc: "desc",
        price: 50,
        catergy: type.food,
        image: "img/apple.jpeg",
        qty: 9),
    Product(
        id: "3",
        title: "mango",
        desc: "desc",
        price: 30,
        catergy: type.food,
        image: "img/mango.jpeg",
        qty: 5),
    Product(
        id: "4",
        title: "guava",
        desc: "desc",
        price: 25,
        catergy: type.food,
        image: "img/guava.jpeg",
        qty: 2),
    Product(
        id: "5",
        title: "strawberry",
        desc: "desc",
        price: 50,
        catergy: type.food,
        image: "img/strawberry.jpeg",
        qty: 5),
    Product(
        id: "5",
        title: "Jacket",
        desc: "desc",
        price: 500,
        catergy: type.cloth,
        image: "img/strawberry.jpeg",
        qty: 5),
    Product(
        id: "5",
        title: "blouse",
        desc: "desc",
        price: 50,
        catergy: type.cloth,
        image: "img/strawberry.jpeg",
        qty: 5),
  ];
  List<Product> getList() {
    return productList;
  }

  List<Product> getListByCat(type t) {
    return productList.where((element) => element.catergy == t).toList();
  }
}

class Product {
  String id;
  String title;
  String desc;
  double price;
  String image;
  type catergy;
  int qty;
  Product(
      {required this.id,
      required this.title,
      required this.desc,
      required this.price,
      required this.catergy,
      required this.image,
      required this.qty});
}

enum type { food, cloth, car }
