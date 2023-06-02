import 'package:flutter/material.dart';
import 'package:get/get.dart';

final height = Get.size.height;
final width = Get.size.width;

InputDecoration textfielDecoration(String label, IconData icon) {
  return InputDecoration(
    isDense: true,
    labelText: label,
    labelStyle:
        const TextStyle(color: Colors.grey),
    filled: true,
    fillColor: const Color.fromARGB(255, 237, 237, 237),
    prefixIcon: Icon(
      icon,
      color: Colors.grey,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: BorderSide.none,
    ),
  );
}

const semiboldTextstyle = TextStyle(
  fontSize: 19,
  fontWeight: FontWeight.bold,
);
