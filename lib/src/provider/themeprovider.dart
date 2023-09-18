import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  late bool _isDarktheme;
  bool currenttheeme() {
    return _isDarktheme;
  }

  void init() {
    _isDarktheme = false;
  }

  void toggletheme() {
    _isDarktheme = !_isDarktheme;
    notifyListeners();
  }
}
