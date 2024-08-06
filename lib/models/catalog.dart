class CatalogModel {
  static List<Item> items = [
    Item(
        id: 1,
        name: "Zamioculcas Zamiifolia",
        desc: "this houseplant is so easy to maintain & tolerates low light.",
        price: 4.3,
        color: "#FFFFFF",
        imageUrl: "https://m.media-amazon.com/images/I/71x311i9AWL._AC_UF1000,1000_QL80_.jpg")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imageUrl;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.imageUrl});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        imageUrl: map["imageURL"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "imageURL": imageUrl,
      };
}
