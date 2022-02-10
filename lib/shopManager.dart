class ShopManager {
  List<Product> productList = [
    Product(
        id: "1",
        title: "apple",
        desc: "desc",
        price: 50,
        catergy: type.food,
        image: "img/apple.jpeg"),
    Product(
        id: "2",
        title: "apple",
        desc: "desc",
        price: 50,
        catergy: type.food,
        image: "img/apple.jpeg"),
    Product(
        id: "3",
        title: "mango",
        desc: "desc",
        price: 30,
        catergy: type.food,
        image: "img/mango.jpeg"),
    Product(
        id: "4",
        title: "guava",
        desc: "desc",
        price: 25,
        catergy: type.food,
        image: "img/guava.jpeg"),
    Product(
        id: "5",
        title: "strawberry",
        desc: "desc",
        price: 50,
        catergy: type.food,
        image: "img/strawberry.jpeg"),
  ];
  List<Product> getList() {
    return productList;
  }
}

class Product {
  String id;
  String title;
  String desc;
  double price;
  String image;
  type catergy;
  Product(
      {required this.id,
      required this.title,
      required this.desc,
      required this.price,
      required this.catergy,
      required this.image});
}

enum type { food, cloth, car }
