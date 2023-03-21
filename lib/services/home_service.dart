import 'dart:developer';
import 'package:crypto_sample_api/model/home_model.dart';
import 'package:dio/dio.dart';

class HomeService {
  Future<HomeModel?> fetchApi() async {
    try {
      Dio dio = Dio();
      Response response =
          await dio.get("https://swapi.dev/api/planets/3/?format=json");
      if (response.statusCode == 200) {
        HomeModel result = HomeModel.fromJson(response.data);

        return result;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
