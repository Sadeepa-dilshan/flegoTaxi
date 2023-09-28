import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class whitetextform extends StatelessWidget {
  final double width;
  final double height;
  //final String lable;

  const whitetextform({
    super.key,
    required this.width,
    required this.height,
    //required this.lable,
  });

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15)),
          //labelText: lable,
          // labelStyle: GoogleFonts.robotoCondensed(
          //     fontSize: 15,
          //     color: Color(0xffC4CE2E),
          //     fontWeight: FontWeight.w200),
          //prefixIcon: icon,
          // prefixIconColor: Color(0xffC4CE2E),
        ),
      ),
    );
  }
}
