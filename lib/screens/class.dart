class Product {
  final String name;
  final String rank;
  String? image;

  Product({
    required this.name,
    required this.rank,
    required this.image,
  });
}

class TopMenu {
  final String name;
  TopMenu({required this.name});
}

class Top {
  final int id;
  final String name;
  final String des;
  final String rank;
  String? image;
  final dynamic route;
  Top({
    required this.id,
    required this.name,
    required this.rank,
    required this.image,
    required this.des,
    required this.route,
  });
}
