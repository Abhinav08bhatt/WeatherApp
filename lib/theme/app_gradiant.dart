import 'package:flutter/material.dart';

class AppGradients {
  static const night = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF0F2027),
      Color(0xFF203A43),
      Color(0xFF2C5364),
    ],
  );

  static const day = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF2980B9),
      Color(0xFF6DD5FA),
      Color(0xFFFFFFFF),
    ],
  );
}
