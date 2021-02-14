import 'dart:convert';

class Menu {
  final int id;
  final String name;
  final double price;

  Menu({this.id, this.name, this.price});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
    };
  }

  factory Menu.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Menu(
      id: map['price'] ?? 0,
      name: map['price'] ?? '',
      price: map['price'] ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Menu.fromJson(String source) => Menu.fromMap(json.decode(source));
}