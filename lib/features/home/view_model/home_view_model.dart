import 'package:flutter/material.dart';
import '../model/place_model.dart';

class HomeViewModel extends ChangeNotifier {
  List<PlaceModel> _topPlaces = [];
  bool _isLoading = false;

  List<PlaceModel> get topPlaces => _topPlaces;
  bool get isLoading => _isLoading;

  Future<void> fetchTopPlaces() async {
    _isLoading = true;
    notifyListeners();

    // Simulate network delay
    await Future.delayed(const Duration(seconds: 1));

    // Generate mock data
    _topPlaces = List.generate(6, (index) => PlaceModel.mock(index));

    _isLoading = false;
    notifyListeners();
  }
}
