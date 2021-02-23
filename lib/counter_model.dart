import 'package:flutter/material.dart';

class CounterModel with ChangeNotifier {
  int _counter = 0;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decremnet() {
    _counter--;
    notifyListeners();
  }

  // getter
  int get currentCounter => _counter;
}
