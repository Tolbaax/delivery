
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  // data
  bool isDark = false;


  // method
  changeTheme() {
    isDark = !isDark;
    notifyListeners();
  }
}
