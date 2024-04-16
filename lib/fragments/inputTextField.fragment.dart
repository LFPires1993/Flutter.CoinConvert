import 'package:flutter/material.dart';

Widget buildTextField(String label, String prefix, TextEditingController controller, Function f) {
  onChanged(String text) {
    try {

    double value = double.parse(text);
    f(value);
    } catch (e) {
      f(0.0);
    }
  }

  return TextField(
    controller: controller,
    keyboardType: TextInputType.number,
    cursorColor: Colors.yellowAccent,
    decoration: InputDecoration(
      labelText: label,
      prefixText: prefix,
    ),
    style: const TextStyle(
      color: Colors.yellowAccent,
      fontSize: 25,
    ),
    onChanged: onChanged,
  );
}

