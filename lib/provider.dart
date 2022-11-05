import 'package:flutter/material.dart';

class GlobalChanges extends ChangeNotifier {
  int indexall = 0;
  void GetIndex(int a) {
    indexall = a;
    notifyListeners();
  }
}
