import 'package:flego/util/RegTextfiels.dart';
import 'package:flego/util/button.dart';
import 'package:flego/util/sufTextform.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         backgroundColor: Color(0xff333333),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
             Stack(
              children: [
                //mainhead
                Image.asset("assets/Union.png"),
        
                //logoname
                Row(
                  children: [
                    Positioned(
                        top: 0,
                        left: 10,
                        child: Container(
                            width: 170,
                            height: 179,
                            child: Image.asset("assets/Text Logo.png"))),
        
                              Text(
                      'Registration',
                      style: GoogleFonts.robotoCondensed(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
        
        
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Container(
                width: screenwidth,
                height: 550,
                //color: Color.fromARGB(255, 0, 0, 0),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         suftextform(width: 60, height: 55, lable: '', icon: Icon(Icons.arrow_drop_down)),
                         Regtextform(width: 230, height: 55, lable: 'Mobile Number')
                       ],
                     ),
                     SizedBox(height: 20,),
                     Regtextform(width: screenwidth, height: 55, lable: 'First Name'),

                     SizedBox(height: 20,),
                     Regtextform(width: screenwidth, height: 55, lable: 'Last Name'),

                     SizedBox(height: 20,),
                     Regtextform(width: screenwidth, height: 55, lable: 'Email Address'),

                     SizedBox(height: 20,),
                     suftextform(width: screenwidth, height: 55, lable: 'Password', icon: Icon(Icons.visibility_off)),

                      SizedBox(height: 20,),
                     suftextform(width: screenwidth, height: 55, lable: 'Password', icon: Icon(Icons.visibility_off)),

                    SizedBox(height: 40,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         button(width: 90, height: 35, bname: 'Close', Ccolor: Color(0xffC4CE2E), Tcolor: Colors.black,Tsize: 16),
                          button(width: 90, height: 35, bname: 'Next', Ccolor: Color(0xffC4CE2E), Tcolor: Colors.black,Tsize: 16)
                       ],
                     )
                    ],
                  ),
                ),
              ),
            ),
        
            ]
          ),
        ),
      ),
    );
  }
}