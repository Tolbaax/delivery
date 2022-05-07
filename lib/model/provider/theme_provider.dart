import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier{

  bool isDark = false;
  late SharedPreferences prefs;

  ThemeProvider(){
    getData();
  }

  initPrefs() async{
    prefs = await SharedPreferences.getInstance();
  }

  setData() async{
    await initPrefs();
    prefs.setBool('dark', isDark);
  }

  getData() async{
    await initPrefs();
    isDark = prefs.getBool('dark') ?? false;
    notifyListeners();
  }

  changeTheme() {
    isDark = !isDark;
    setData();
    notifyListeners();
  }


}
