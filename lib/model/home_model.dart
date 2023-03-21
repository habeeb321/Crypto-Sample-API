class HomeModel {
  final String name;
  final String diameter;
  final String climate;
  final String gravity;
  final String terrain;
  final String population;

  HomeModel({
    required this.name,
    required this.diameter,
    required this.climate,
    required this.gravity,
    required this.terrain,
    required this.population,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        name: json["name"],
        diameter: json["diameter"],
        climate: json["climate"],
        gravity: json["gravity"],
        terrain: json["terrain"],
        population: json["population"],
      );
}
