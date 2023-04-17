import 'package:exam11/home/add%20Screen.dart';
import 'package:exam11/home/homeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => homeScreen(),
        'addScreen': (context) => addScreen(),
      },
    ),
  );
}
