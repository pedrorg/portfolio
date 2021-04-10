import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final String text;

  AppBarButton({
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14.0,
            letterSpacing: 3.0,
            color: Color(0xff382941),
          ),
        ),
      ),
    );
  }
}
