import 'package:flutter/material.dart';
import '../model/destination_model.dart';

class DetailViewModel extends ChangeNotifier {
  DestinationModel? _destination;
  bool _isLoading = false;

  DestinationModel? get destination => _destination;
  bool get isLoading => _isLoading;

  // Simulate fetching data
  Future<void> fetchDestinationDetail(String id) async {
    _isLoading = true;
    notifyListeners();

    // Simulate network delay
    await Future.delayed(const Duration(seconds: 1));

    // Mock data assignment
    _destination = DestinationModel.mock();
    
    _isLoading = false;
    notifyListeners();
  }
}
