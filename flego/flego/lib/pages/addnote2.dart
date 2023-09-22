import 'package:flego/util/button.dart';
import 'package:flego/util/text.dart';
import 'package:flego/util/prefixtextform.dart';
import 'package:flego/util/textform.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Addnot2 extends StatefulWidget {
  const Addnot2({super.key});

  @override
  State<Addnot2> createState() => _Addnot2State();
}

class _Addnot2State extends State<Addnot2> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff333333),
        appBar: AppBar(
          backgroundColor: Color(0xff333333),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton.small(
              onPressed: () {},
              backgroundColor: Color(0xffC4CE2E),
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
          elevation: 0,
        ),
        
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Container(
                width: screenwidth,
                height: 80,
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.1)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Row(
                        children: [
                          Icon(Icons.note_add, color: Color(0xffC4CE2E),),
                          SizedBox(width: 20,),
                          text(
                              Tname: 'Add note for your driver',
                              Tsize: 23,
                              Tcolor: Color(0xffC4CE2E),
                              Tweight: FontWeight.w600),
                          
                        ],
                        
                      ),
                      
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: text(
                          Tname: 'Send special note for your taxi driver',
                          Tsize: 16,
                          Tcolor: Color(0xffC4CE2E).withOpacity(0.5),
                          Tweight: FontWeight.w400),
                    )
                  ],
                ),
                
              ),
        
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                 child: textform(width: screenwidth, height: 200, lable: 'Ex: Im at sampath bank',),
                    
                   ),
               
               GestureDetector(
                onTap: () {
                  openDialog(context);
                 print(22);
                },
                 child: Container(
                  width: screenwidth,
                  height: 80,
                  decoration: BoxDecoration(color: Colors.white.withOpacity(0.1)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  color: Color(0xffC4CE2E),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                text(
                                    Tname: 'Mobile number optional',
                                    Tsize: 23,
                                    Tcolor: Color(0xffC4CE2E),
                                    Tweight: FontWeight.w600),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xffC4CE2E),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: text(
                            Tname: 'If you are unavailable taxi driver will call this number',
                            Tsize: 16,
                            Tcolor: Color(0xffC4CE2E).withOpacity(0.5),
                            Tweight: FontWeight.w400),
                      ),
                       
                    ],
                  ),
                             ),
               ),

              
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 85, horizontal: 20),
                child: button(width: screenwidth, height: 51, bname: 'Add', Tsize: 20, Ccolor: Color(0xffC4CE2E), Tcolor: Colors.black),
              )
            ],
          ),
        ),
      ),
      
    );
    
  }
}


Future<void> openDialog(BuildContext context) async {
  await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(
        'Mobile number optional',
        style: TextStyle(
          fontSize: 16,
          color: Color(0xffC4CE2E),
          fontWeight: FontWeight.w400,
        ),
      ),
      content: TextField(
        decoration: InputDecoration(

          hintText: 'Sahan',
        ),
      )
      
    ),
  );
}



