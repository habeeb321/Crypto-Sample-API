import 'dart:developer';
import 'package:crypto_sample_api/model/home_model.dart';
import 'package:dio/dio.dart';

class HomeService {
  Future<List<HomeModel>?> fetchApi() async {
    try {
      Dio dio = Dio();
      Response response =
          await dio.get("https://api.wazirx.com/sapi/v1/tickers/24hr");
      if (response.statusCode == 200) {
        List<HomeModel> result =
            (response.data as List).map((e) => HomeModel.fromJson(e)).toList();
        return result;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
