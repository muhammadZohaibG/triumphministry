import 'package:flutter/cupertino.dart';

class TabProvider with ChangeNotifier{
  int _index =0;
  int get index => _index;
  void updateTab(int value){
    _index = value;
    notifyListeners();
  }
}