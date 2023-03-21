class HomeModel {
  List<Data> data;

  HomeModel({required this.data});

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        data: List<Data>.from(json["data"].map((x) => Data.fromJson(x))),
      );
}

class Data {
  final String id;
  final String title;
  final String createdAt;
  final String updatedAt;
  final String slug;
  final int price;
  Category category;

  Data({
    required this.id,
    required this.title,
    required this.createdAt,
    required this.updatedAt,
    required this.slug,
    required this.price,
    required this.category,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
      id: json["_id"],
      title: json["title"],
      createdAt: json["createdAt"],
      updatedAt: json["updatedAt"],
      slug: json["slug"],
      price: json["price"],
      category: Category.fromJson(json["category"]));
}

class Category {
  final String id;
  final String name;
  final String slug;

  Category({
    required this.id,
    required this.name,
    required this.slug,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["_id"],
        name: json["name"],
        slug: json["slug"],
      );
}
