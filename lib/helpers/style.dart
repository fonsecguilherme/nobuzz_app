import 'package:flutter/material.dart';

class Style {
  static BoxDecoration appBackground() => const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF331972),
            Color(0xFF352163),
            Color(0xFF33143C),
          ],
        ),
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
          opacity: 0.2,
        ),
      );

  static TextStyle appbarText = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );
  static TextStyle stateNameListViewText = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );

  
}
