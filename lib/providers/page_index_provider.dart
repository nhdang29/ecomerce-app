import 'package:flutter/material.dart';

class PageIndexProvider extends ChangeNotifier {
  int _index = 0;

  int get index => _index;

  void navigateToIndex(int value){
    _index = value;
    notifyListeners();
  }

}