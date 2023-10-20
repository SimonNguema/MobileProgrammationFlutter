import 'package:flutter/foundation.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();  // ce qui informe tous les widgets écoutant que l'état a changé.
  }

  void decrement() {
    if(_counter>0) {
      _counter--;
      notifyListeners();
    }
  }
}
