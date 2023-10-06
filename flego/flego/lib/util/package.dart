import 'package:flego/util/button.dart';
import 'package:flego/util/text.dart';
import 'package:flutter/material.dart';

class packagedetails extends StatelessWidget {
  final String days;
  final String price;
  const packagedetails({super.key,
  required this.days,
  required this.price
  });

  @override
  Widget build(BuildContext context) {
     double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return  Container(
      width: screenwidth * 0.3,
      height: screenheight * 0.19,
      decoration: BoxDecoration(
        //color: Colors.amber,
        border: Border.all(color: Color(0xffC4CE2E)),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          text(
              Tname: days,
              Tsize: 30,
              Tcolor: Colors.white,
              Tweight: FontWeight.w500),
          text(
              Tname: 'Day',
              Tsize: 30,
              Tcolor: Colors.white,
              Tweight: FontWeight.w500),
          text(
              Tname: 'LKR $price',
              Tsize: 20,
              Tcolor: Colors.white,
              Tweight: FontWeight.w600),
          button(
              width: 100,
              height: 30,
              bname: "Active",
              Tsize: 20,
              Ccolor: Color(0xffC4CE2E),
              Tcolor: Colors.black)
        ],
      ),
    );
  }
}