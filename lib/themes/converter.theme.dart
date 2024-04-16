import 'package:flutter/material.dart';

class ConverterTheme {
  static ThemeData getTheme() {
    return ThemeData(
      hintColor: Colors.yellowAccent,
      primaryColor: Colors.yellowAccent,
      inputDecorationTheme: const InputDecorationTheme(
        labelStyle: TextStyle(
          fontSize: 20,
          color: Colors.yellowAccent,
        ),
        prefixStyle: TextStyle(
          color: Colors.yellowAccent,
          fontSize: 20,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.yellowAccent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
