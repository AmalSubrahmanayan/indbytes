import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:indbytes/service/movie_get_service/movie_get_service.dart';

import '../../model/movie_model/movie_model.dart';

class MyCarouselController extends ChangeNotifier {
  List<Result> carousalList = [];
  bool loading = false;

  getCarousals() async {
    loading = true;
    notifyListeners();
    try {
      final response = await HomeService().getMovies();
      notifyListeners();
      log(response.page.toString());
      carousalList.clear();
      carousalList.addAll(response.results.toList());
      log(carousalList.length.toString());
      loading = false;
      notifyListeners();
    } catch (e) {
      loading = false;
      notifyListeners();
    }
  }
}
