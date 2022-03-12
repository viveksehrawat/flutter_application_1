
class CatalogModel {
  late List<Item> items;

  // Get Item by ID
  Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  // Get Item by position
  Item getByPosition(int pos) => items[pos];
}

class Item {
  int? id;
  String? name;
  String? desc;
  num? price;
  String? color;
  String? image;

  Item({
    this.id,
    this.name,
    this.desc,
    this.price,
    this.color,
    this.image,
  });

  Item.fromMap(Map<String, dynamic> map) {
    id:
    map['id'];
    name:
    map['name'];
    desc:
    map['desc'];
    price:
    map['price'];
    color:
    map['color'];
    image:
    map['image'];
  }
}
