import 'package:flutter/material.dart';

class CustomTheme {
  static TextStyle errorTextStyle=const TextStyle(
    fontSize: 22, color: Colors.black
  );
  static List<ThemeData> themes=[
    ThemeData(
        primarySwatch: Colors.teal
    ),
    ThemeData(
        primarySwatch: Colors.orange
    ),
    ThemeData(
        primarySwatch: Colors.deepPurple
    ),

  ];
}