import 'package:flutter/material.dart';
import 'package:tugasmob1/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'home' : (context) => HomePage(),
    },
  ));
}

