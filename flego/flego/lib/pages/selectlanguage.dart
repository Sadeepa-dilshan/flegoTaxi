import 'package:flego/util/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class language extends StatelessWidget {
  const language({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
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
                  Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                          width: 170,
                          height: 179,
                          child: Image.asset("assets/Text Logo.png"))),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
                child: Container(
                  width: screenwidth,
                  height: 300,
                  // decoration: BoxDecoration(color: Colors.amber),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: 100,
                          height: 100,
                          child: Image.asset("assets/Logo (2).png")),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '      Register with',
                            style: GoogleFonts.robotoCondensed(
                                fontSize: 25,
                                color: Color(0xffC4CE2E),
                                fontWeight: FontWeight.w400),
                          ),
                          Container(
                              width: 120,
                              height: 60,
                              child: Image.asset(
                                "assets/Text Logo.png",
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                    bottomRight: Radius.circular(0.0),
                    bottomLeft: Radius.circular(0.0),
                  ),
                  child: Expanded(
                      child: Container(
                    height: 300,
                    width: screenwidth,
                    color: Color(0xffC4CE2E),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 40),
                      child: Column(
                        
                        
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 280),
                            child: Icon(Icons.highlight_remove_sharp),
                          ),
                          Text(
                            'Please select your language',
                            style: GoogleFonts.robotoCondensed(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                                
                          ),
                           SizedBox(height: 25,),
                         Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          
                           children: [
                             button(width: 232, height: 40, bname: 'English', Tcolor: Colors.black, Ccolor: Color(0xffC4CE2E),),
                             SizedBox(height: 20,),
                             button(width: 232, height: 40, bname: 'தமிழ்', Tcolor: Colors.black , Ccolor: Color(0xffC4CE2E)),
                             SizedBox(height: 20,),
                             button(width: 232, height: 40, bname: 'සිංහ​ල', Tcolor: Colors.black , Ccolor: Color(0xffC4CE2E)),
                             SizedBox(height: 10,),
                           ],
                         )
                        ],
                      ),
                    ),
                  )))
            ],
          ),
        ),
      ),
    );
  }
}
