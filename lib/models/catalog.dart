class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "name",
        desc: "desc",
        price: 1,
        color: "color",
        imageUrl: "imageUrl")
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
}
