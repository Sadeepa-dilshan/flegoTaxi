import 'package:flego/pages/addlocation.dart';
import 'package:flego/pages/login.dart';
import 'package:flego/pages/loginpage.dart';
import 'package:flego/pages/register.dart';
import 'package:flego/pages/selectlanguage.dart';
import 'package:flego/pages/setLocation.dart';
import 'package:flego/pages/setLocation1.dart';
import 'package:flego/util/bottomNav.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

   List<Widget> _widgetOptions = <Widget>[
    // AssetScreen(),
    // ContractPage(),
    // Marketpage(),
    // profilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return setLocation1();
  }
}
