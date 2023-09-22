import 'package:flego/pages/addlocation.dart';
import 'package:flego/pages/addnote2.dart';
import 'package:flego/pages/login.dart';
import 'package:flego/pages/loginpage.dart';
import 'package:flego/pages/popupmasg.dart';
import 'package:flego/pages/profile.dart';
import 'package:flego/pages/register.dart';
import 'package:flego/pages/selectlanguage.dart';
import 'package:flego/pages/setLocation.dart';
import 'package:flego/pages/setLocation1.dart';
import 'package:flego/util/bottomNav.dart';
import 'package:flego/util/popup.dart';
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
      home: profilePage(),
    );
  }
}