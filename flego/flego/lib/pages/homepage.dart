import 'package:flego/util/text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: 
           SingleChildScrollView(
            scrollDirection: Axis.vertical,
             child: Column(
               children: [
                 Container(
                  width: screenwidth,
                  height: 700,
                  color: const Color.fromARGB(255, 255, 255, 255),
                   child: Stack(
                     children: [
                       Column(
                         children: [
                           Container(
                             width: screenwidth,
                             height: 308,
                             decoration: BoxDecoration(color: Color(0xff333333)),
                             ),
                         ],
                       ),
                         Positioned(
                           top: 130,
                           left: 8,
                           child: text(Tname: 'Safely!', Tsize: 28, Tcolor: Color(0xffC4CE2E), Tweight: FontWeight.w400)
                         ),
                          Positioned(
                         top: 160,
                         left: 13,
                         child:  Container(
                           width: 150,
                           height: 150,
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               text(Tname: "Let’s go wherever", Tsize: 20, Tcolor: Color(0xffC4CE2E) , Tweight: FontWeight.w200),
                               text(Tname: "youwant,", Tsize: 20, Tcolor: Color(0xffC4CE2E) , Tweight: FontWeight.w200),
                               text(Tname: "on time", Tsize: 20, Tcolor: Color(0xffC4CE2E) , Tweight: FontWeight.w200),
                             ],
                           )
                           
                         ),
                       ),
                 
                         Positioned(
                           top: 100,
                           left:140,
                           right: 2,
                           child: Container(
                               width: 100,
                               height: 170,
                               
                               child: Image.asset(
                                 "assets/homelogo.png",
                                 fit: BoxFit.contain,
                               )),
                         ),
                        
                 
                         Positioned(
                           top: 280,
                           left: 20,
                           right: 20,
                           child: Material(
                            elevation: 10,
                            borderRadius: BorderRadius.circular(15),
                             child: Container(
                               width: screenwidth,
                               height: 60,
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(15),
                               ),
                               child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Icon(Icons.location_on, size: 30,),
                                        SizedBox(width: 10,),
                                        text(Tname: 'Where to ?', Tsize: 25, Tcolor: Colors.grey.withOpacity(0.6), Tweight: FontWeight.w500),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.6),
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: Icon(Icons.search))
                                  ]),
                             ),
                           )),
                 
                          
                       
                         
                     ],
                   ),
                 ),
                  Container(
                width: screenwidth,
                height: 200,
                decoration: BoxDecoration(
                    color:
                        Colors.white
                    //borderRadius: BorderRadius.circular(15)
                    ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          text(
                              Tname: 'Add favorite Location',
                              Tsize: 25,
                              Tcolor: Colors.black,
                              Tweight: FontWeight.w500),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color(0xff333333),
                                  borderRadius: BorderRadius.circular(80),
                                  
                                ),
                                child: Icon(Icons.home_outlined, color:  Color(0xffC4CE2E),size: 30,),
                              ),
                              text(Tname: 'Home', Tsize: 15, Tcolor: Colors.black, Tweight: FontWeight.w400)
                            ],
                          ),
                          SizedBox(width: 20,),
                         Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color(0xff333333),
                                  borderRadius: BorderRadius.circular(80),
                                ),
                                child: Icon(
                                  Icons.work_outlined,
                                  color: Color(0xffC4CE2E),
                                  size: 30,
                                ),
                              ),
                              text(
                                  Tname: 'Work',
                                  Tsize: 15,
                                  Tcolor: Colors.black,
                                  Tweight: FontWeight.w400)
                            ],
                          ),
                      SizedBox(width: 20,),
                         Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color(0xff333333),
                                  borderRadius: BorderRadius.circular(80),
                                  
                                ),
                                child: Icon(Icons.add, color:  Color(0xffC4CE2E),size: 30,),
                              ),
                              text(Tname: 'New', Tsize: 15, Tcolor: Colors.black, Tweight: FontWeight.w400)
                              
                            ],
                          ),
                        ]
                      ),

                    ],
                  ),
                ),
              )
               ],
             ),
           ),
        ),
      
    );
  }
}
