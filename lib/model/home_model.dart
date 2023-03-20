class HomeModel {
  final String symbol;
  final String baseAsset;
  final String quoteAsset;
  final String openPrice;
  final String lowPrice;
  final String highPrice;

  HomeModel({
    required this.symbol,
    required this.baseAsset,
    required this.quoteAsset,
    required this.openPrice,
    required this.lowPrice,
    required this.highPrice,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        symbol: json["symbol"],
        baseAsset: json["baseAsset"],
        quoteAsset: json["quoteAsset"],
        openPrice: json["openPrice"],
        lowPrice: json["lowPrice"],
        highPrice: json["highPrice"],
      );
}
