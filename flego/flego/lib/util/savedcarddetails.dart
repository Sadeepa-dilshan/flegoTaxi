import 'package:flego/pages/savedbankcard.dart';
import 'package:flego/util/button.dart';
import 'package:flego/util/text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class savedcarddetails extends StatefulWidget {
  final String bankname1;
  final String card;
  final String expiredate;
  final String cardholdername;

  const savedcarddetails({super.key,
  required this.bankname1,
  required this.card,
  required this.expiredate,
  required this.cardholdername,
  });

  @override
  State<savedcarddetails> createState() => _savedcarddetailsState();

}

class _savedcarddetailsState extends State<savedcarddetails> {

  void _deletemsg() {
    showDialog(
        context: context,
        builder: (context) {
          return Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: AlertDialog(
              backgroundColor: Color(0xff333333),
              title: text(
                  Tname: 'Delete Card',
                  Tsize: 18,
                  Tcolor: Color(0xffC4CE2E),
                  Tweight: FontWeight.w500),
              content: Container(
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  text(
                      Tname: 'Do you want to delete Saved card?',
                      Tsize: 15,
                      Tcolor: Colors.white,
                      Tweight: FontWeight.w400)
                ]),
              ),
              actions: [
                MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: button(
                        width: 70,
                        height: 30,
                        bname: 'Cancel',
                        Tsize: 15,
                        Ccolor: Color(0xffC4CE2E),
                        Tcolor: Colors.black)),

                         MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: button(
                        width: 70,
                        height: 30,
                        bname: 'Delete',
                        Tsize: 15,
                        Ccolor: Color(0xffC4CE2E),
                        Tcolor: Colors.black)),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Row(
                children: [
                  Container(
                    width: screenwidth *0.85,
                    height: 100,
                    decoration: BoxDecoration
                    (color:Colors.white.withOpacity(0.1) 
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                          text(
                              Tname: widget.bankname1,
                              Tsize: 25,
                              Tcolor: Colors.white,
                              Tweight: FontWeight.w500),
                    
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  text(
                                  Tname: '**** **** **** '+ widget.card,
                                  Tsize: 25,
                                  Tcolor: Colors.white,
                                  Tweight: FontWeight.w500),
                                  
                    
                                  text(
                                  Tname: widget.expiredate,
                                  Tsize: 25,
                                  Tcolor: Colors.white,
                                  Tweight: FontWeight.w500),
                                ],
                              ),
                              
                    
                              text(
                              Tname: widget.cardholdername,
                              Tsize: 15,
                              Tcolor: Colors.white,
                              Tweight: FontWeight.w400),
                    
                              
                        ],
                      ),
                    ),

                  ),
                  SizedBox(width: screenwidth *0.01,),
                IconButton(
                  onPressed: _deletemsg, 
                icon: Icon(Icons.delete, color: Colors.white,size: 40,))
                ],
              );
  }
}