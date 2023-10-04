import 'package:flego/util/text.dart';
import 'package:flutter/material.dart';

class vehicleconditiondetails extends StatefulWidget {
  final String imagepath;
  final String infomations;
  
  const vehicleconditiondetails({super.key,
  required this.imagepath,
  required this.infomations
  });

  @override
  State<vehicleconditiondetails> createState() => _cancelridedetailsState();
}

class _cancelridedetailsState extends State<vehicleconditiondetails> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
     double screenheight = MediaQuery.of(context).size.height;
    return Container(
      width: screenwidth,
      height: screenheight * 0.1,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(widget.imagepath),
                  )),
                  SizedBox(width: screenwidth * 0.05,),
                text(
                    Tname: widget.infomations,
                    Tsize: 20,
                    Tcolor: Colors.white,
                    Tweight: FontWeight.w500),
              ],
            ),
            Checkbox(
              
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                })
          ],
        ),
      ),
    );
  }
}
