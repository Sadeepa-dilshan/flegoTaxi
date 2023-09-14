import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class suftextform extends StatelessWidget {
  final double width;
  final double height;
  final String lable;
  final Icon icon;

  const suftextform({
    super.key,
    required this.width,
    required this.height,
    required this.lable,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white.withOpacity(0.1)),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15)),
          labelText: lable,
          labelStyle: GoogleFonts.robotoCondensed(
              fontSize: 15,
              color: Color(0xffC4CE2E),
              fontWeight: FontWeight.w200),
          suffixIcon: icon,
          suffixIconColor: Color(0xffC4CE2E),
        ),
      ),
    );
  }
}
