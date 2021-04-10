import 'package:flutter/material.dart';
import 'package:portfolio/ui/home.dart';

void main() {
  runApp(MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PedroRG',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
