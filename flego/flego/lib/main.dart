import 'package:flego/pages/login.dart';
import 'package:flego/pages/selectlanguage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
   const MyApp({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Loginpage();
   }
 }
