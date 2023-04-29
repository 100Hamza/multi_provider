import 'package:flutter/foundation.dart';

class OpacityChangeProvider with ChangeNotifier{
  //Instances
  double _value = 1.0;


  // Getter methods
  double get getValue => _value;


  // Setter Methods
  void setValue (double val)
  {
    _value = val;
    notifyListeners();
  }


}