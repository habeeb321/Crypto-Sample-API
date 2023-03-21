class HomeModel {
  List<Data> data;

  HomeModel({required this.data});

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        data: List<Data>.from(json["data"].map((x) => Data.fromJson(x))),
      );
}

class Data {
  final String title;
  final String createdAt;
  final String updatedAt;
  final String slug;

  Data({
    required this.title,
    required this.createdAt,
    required this.updatedAt,
    required this.slug,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        title: json["title"],
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
        slug: json["slug"],
      );
}
