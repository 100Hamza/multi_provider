import 'package:flutter/foundation.dart';

class CounterProvider with ChangeNotifier {
  // Instances
  int _count = 0;
  String _time = '${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}';
  // Setter functions
  int get getCount => _count;
  String get getTime => _time;


  // Getter Functions
  void setCounter() {
    _count++;
    notifyListeners();
  }

  void setTime()
  {
    _time = '${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}';
    notifyListeners();
  }

}
