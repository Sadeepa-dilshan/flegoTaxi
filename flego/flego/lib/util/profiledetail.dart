import 'package:flego/util/text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class details extends StatelessWidget {
  final String imagePath;
  final String text1;
  final String text2;

  const details({super.key,
  required this.imagePath,
  required this.text1,
  required this.text2});

  @override
  Widget build(BuildContext context) {
     double screenwidth = MediaQuery.of(context).size.width;
    return  Column(
      children: [
        Container(
          width: screenwidth,
          height: 45,
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(
              color: Colors.white.withOpacity(0.2),
              width: 2.0,
              style: BorderStyle.solid,
            ),
          )),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 20,
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.contain,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text(

                            Tname: text1,
                            Tsize: 13,
                            Tcolor: Colors.white,
                            Tweight: FontWeight.w400),
                        text(
                            Tname: text2,
                            Tsize: 20,
                            Tcolor: Colors.white,
                            Tweight: FontWeight.w500),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                )
              ],
            ),
          ),
        
        ),
        
      ],
    );

  }
}