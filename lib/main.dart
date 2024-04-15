import 'package:flutter/material.dart';
import 'package:trancleatbasec/chose_longuag.dart';
import 'package:trancleatbasec/screen/sheard/thems.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themsApp,
      home: ChoseLouangueg(),
    );
  }
}
