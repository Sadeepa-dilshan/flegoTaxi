
import 'package:flego/pages/cancellingride.dart';
import 'package:flego/pages/savedcard.dart';
import 'package:flego/pages/vehiclecondition.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: vehiclecondition(),
    );
  }
}