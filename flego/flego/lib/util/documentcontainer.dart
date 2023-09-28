import 'package:flego/util/text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class docDetail extends StatelessWidget {
  final String text1;
  const docDetail({super.key,
  required this.text1
  });

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return  Container(
      width: screenwidth,
      height: 45,
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.2)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              Icons.edit_document,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(
              width: 10,
            ),
            text(
                Tname: text1,
                Tsize: 20,
                Tcolor: Colors.white,
                Tweight: FontWeight.w400),
            SizedBox(
              width: 10,
            ),
            text(
                Tname: '*',
                Tsize: 20,
                Tcolor: Color(0xffC4CE2E),
                Tweight: FontWeight.w400)
          ],
        ),
      ),
    );
  }
}