import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class button extends StatelessWidget {
  
  final double width;
  final double height;
  final String bname;
  
  final Color  Ccolor;
  final Color Tcolor;
  const button({super.key,
  required this.width,
  required this.height,
  required this.bname,
  
  required this.Ccolor,
  required this.Tcolor
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Ccolor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        bname,
        style: GoogleFonts.robotoCondensed(
            fontSize: 25,
            color: Tcolor,
            fontWeight: FontWeight.w400),
           textAlign: TextAlign.center,
      ),
      alignment: Alignment.center,
    );
  }
}
