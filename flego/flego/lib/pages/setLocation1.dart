import 'package:flego/util/button.dart';
import 'package:flego/util/prefixtextform.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class setLocation1 extends StatefulWidget {
  const setLocation1({super.key});

  @override
  State<setLocation1> createState() => _setLocation1State();
}

class _setLocation1State extends State<setLocation1> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
     double screenheight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         backgroundColor: Color(0xff333333),
        appBar: AppBar(
          backgroundColor: Color(0xff333333),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton.small(onPressed: (){},
                          backgroundColor: Color(0xffC4CE2E),
                          child: Icon(Icons.arrow_back,color: Colors.black,),
                          
                          ),
          ),
                        elevation: 0,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
                  Container(
                    width: screenwidth,
                    height: 170,
                   // color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                              child: Column(
                                children: [ Icon(Icons.fiber_manual_record, size: 10,color: Color(0xffC4CE2E),),
                                Container(
                                width: 1,
                                height: 65,
                                decoration: BoxDecoration(color: Color(0xffC4CE2E)),
                                
                              ),
                               Icon(Icons.fiber_manual_record, size: 10,color: Color(0xffC4CE2E),),
                            
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                pretextform(width: 315, height: 60, lable: '', icon: Icon(Icons.location_on)),
                                SizedBox(height: 10,),
                                pretextform(width: 315, height: 60, lable: '', icon: Icon(Icons.location_on))
                              ],
                              
                            ),
                             Padding(
                               padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 0),
                               child: Column(
                                 children: [
                                   FloatingActionButton.small(
                                                       onPressed: () {},
                                                       backgroundColor: Color(0xffC4CE2E),
                                                       child: Icon(
                                                         Icons.add,
                                                         color: Colors.black,
                                                       ),
                                                     ),
                                 ],
                               ),
                             ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Stack(
                    children:[ Container(
                      width: screenwidth,
                    
                     child: Image.asset("assets/map2.png", fit: BoxFit.contain,)),
                     Positioned(
                      top: 500,
                      left: 160,

                      child: button(width: 110, height: 34, bname: 'Done', Tsize: 16, Ccolor: Colors.black, Tcolor: Color(0xffC4CE2E) ))
                    ]
                  )

          ],
          ),
        ),
      ),
    );
  }
}