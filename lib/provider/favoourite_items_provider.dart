import 'package:flutter/foundation.dart';

class FavouriteItemsProvider with ChangeNotifier{

  // Instances
  List<int> _selectedItem = [];


  // Getter Functions
  List<int> get getSelectedItems => _selectedItem;

 // Setter Functions
  void addItem (int value)
  {
    _selectedItem.add(value);
    notifyListeners();
  }

  void removeItem(int value)
  {
    _selectedItem.remove(value);
    notifyListeners();
  }

}