import 'package:flego/pages/homepage.dart';
import 'package:flego/pages/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class bnavbar extends StatefulWidget {
  const bnavbar({super.key});

  @override
  State<bnavbar> createState() => _bnavbarState();
}

class _bnavbarState extends State<bnavbar> {
  int _selectedIndex = 0;
  //screen
  List<Widget> _widgetOptions = <Widget>[
    Homepage(),
    // ContractPage(),
    // Marketpage(),
    // profilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: _widgetOptions.elementAt(_selectedIndex),

          ),
           bottomNavigationBar: Container(
              color: Color(0xff333333),
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 15),
                  child: GNav(
                    gap: 10,
                    padding: EdgeInsets.all(16),
                    backgroundColor: Color(0xff333333),
                    activeColor: Color(0xffC4CE2E),
                    color: Colors.white,
                    tabBackgroundColor: Colors.grey.shade800,
                    tabs: [
                      GButton(
                        icon: Icons.home_outlined,
                        text: 'Home',
                      ),
                      GButton(
                        icon: Icons.description_outlined,
                        text: 'Activity',
                      ),
                      GButton(
                        icon: Icons.message,
                        text: 'Message',
                      ),
                      GButton(
                        icon: Icons.person_2_rounded,
                        text: 'Profile',
                      ),
                    ],
                    selectedIndex: _selectedIndex,
                    onTabChange: (index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                  )))
      ),
    );
  }
}

