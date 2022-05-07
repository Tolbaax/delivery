import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData light = ThemeData(
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    backgroundColor: Colors.white,
    elevation: 0.0,
  ),
  primaryColor: Colors.white,
  hoverColor: Colors.deepPurple[100],
  scaffoldBackgroundColor: Colors.white,
);

ThemeData dark = ThemeData(
  drawerTheme: DrawerThemeData(
    backgroundColor: HexColor('333739'),
  ),
  appBarTheme: AppBarTheme(
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    backgroundColor: HexColor('333739'),
    elevation: 0.0,
  ),
  textTheme: const TextTheme(
    bodyText2: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white),
    bodyText1: TextStyle(
        fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
  ),
  iconTheme: const IconThemeData(color: Colors.white),
  primaryColor: Colors.grey[700],
  hoverColor: Colors.deepPurple[300],
  scaffoldBackgroundColor: HexColor('333739'),
);
