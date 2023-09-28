import 'package:flego/util/text.dart';
import 'package:flutter/material.dart';

class cancelridedetails extends StatefulWidget {
  final String reason;
  const cancelridedetails({super.key,
  required this.reason
  
  });

  @override
  State<cancelridedetails> createState() => _cancelridedetailsState();
  
}

class _cancelridedetailsState extends State<cancelridedetails> {
    bool isChecked = false;
  @override
  Widget build(BuildContext context) {
     double screenwidth = MediaQuery.of(context).size.width;
    return Container(
                width: screenwidth,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),

                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                    children: [
                      text(
                              Tname: widget.reason,
                              Tsize: 20,
                              Tcolor: Colors.white,
                              Tweight: FontWeight.w500),
                
                              Checkbox(
                  
                  value: isChecked, 
                  onChanged: (bool? value){
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