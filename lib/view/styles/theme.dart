import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData lightTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    backgroundColor: Colors.white,
    elevation: 0.0,
  ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(
        fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.black),
    bodyText2: TextStyle(
        fontSize: 25.0, fontWeight: FontWeight.w600, color: Colors.black),
  ),
  primaryColor: Colors.white,
  hoverColor: Colors.deepPurple[100],
  scaffoldBackgroundColor: Colors.white,
);

ThemeData darkTheme = ThemeData(
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
    bodyText1: TextStyle(
        fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.white),
    bodyText2: TextStyle(
        fontSize: 25.0, fontWeight: FontWeight.w600, color: Colors.white),
  ),
  radioTheme: RadioThemeData(
    fillColor: MaterialStateProperty.all(Colors.grey)
  ),
  dialogBackgroundColor: HexColor('333739'),
  iconTheme: const IconThemeData(color: Colors.white),
  primaryColor: Colors.grey[700],
  hoverColor: Colors.deepPurple[300],
  scaffoldBackgroundColor: HexColor('333739'),
);
