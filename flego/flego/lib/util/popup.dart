import 'package:flego/util/profiledetail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class dialogapp extends StatefulWidget {
  const dialogapp({super.key});

  @override
  State<dialogapp> createState() => _dialogappState();
}

class _dialogappState extends State<dialogapp> {
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      backgroundColor: Colors.amber[200],
      body: Center(
        child: SafeArea(
          child: MaterialButton(
            onPressed: (){},
            color: Colors.amber,
            child: details(
                  imagePath: "assets/pp.png",
                  text1: 'Full name',
                  text2: 'Stephen Convey')
          ),
        ),
      ),

    );
  }
}