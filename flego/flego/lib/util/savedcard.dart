import 'package:flego/util/text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class savedbankcards extends StatelessWidget {
  
  final String bank;
  final String accnum;

  const savedbankcards(
      {super.key,
      
      required this.bank,
      required this.accnum});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Column(
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
                   text(Tname: bank, Tsize: 20, Tcolor:Colors.white, Tweight: FontWeight.w400),
                   SizedBox(width: screenwidth * 0.1,),
                    text(Tname: accnum, Tsize: 16, Tcolor:Colors.white, Tweight: FontWeight.w400),
                    
                   
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
