import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class text extends StatelessWidget {
  final String Tname;
  final double Tsize;
  final FontWeight Tweight;
  final Color Tcolor;
  const text({super.key,
  required this.Tname,
  required this.Tsize,
  required this.Tcolor,
  required this.Tweight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      Tname,
      style: GoogleFonts.robotoCondensed(
          fontSize: Tsize, color: Tcolor, fontWeight: Tweight),
    );
  }
}
