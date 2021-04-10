import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'package:portfolio/ui/web_home_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Image image;
  bool isImageloaded = false;
  void initStat() {
    super.initState();
    
  }

  

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1000) {
          return WebHomePage();
        } else {
          return CircularProgressIndicator(); //MobileHomePage();
        }
      },
    );
  }
}
