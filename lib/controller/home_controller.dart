import 'package:crypto_sample_api/model/home_model.dart';
import 'package:crypto_sample_api/services/home_service.dart';
import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  HomeModel? homeValue;
  List<HomeModel> homeList = [];
  bool isLoading = false;

  void showData() async {
    isLoading = true;
    notifyListeners();
    await HomeService().fetchApi().then((value) {
      if (value != null) {
        homeValue = value;
        isLoading = false;
        notifyListeners();
      }
    });
  }
}
