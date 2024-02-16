import 'package:flutter/material.dart';

class CountModel extends ChangeNotifier{
  int counter = 0;
  int counter2 = 0;

  void incrementCounter() {
    counter++;
    notifyListeners();
  }

  void incrementCounter2() {
    counter2++;
    notifyListeners();
  }
}