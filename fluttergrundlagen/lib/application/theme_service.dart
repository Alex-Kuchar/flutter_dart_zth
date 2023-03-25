import 'package:flutter/material.dart';

class ThemeService extends ChangeNotifier {
  bool isDarkMode = false;

  void toggleTheme() {
    this.isDarkMode = !this.isDarkMode;
    notifyListeners();
  }
}
