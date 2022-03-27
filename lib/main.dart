import 'package:delivery/view/screens/homeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Delivery());
}

class Delivery extends StatelessWidget {
  const Delivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: const HomeScreen(),
    );
  }
}
