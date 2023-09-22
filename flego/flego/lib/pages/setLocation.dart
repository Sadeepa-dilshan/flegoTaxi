import 'package:flego/util/sufTextform.dart';
import 'package:flego/util/prefixtextform.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class setLocation extends StatefulWidget {
  const setLocation({super.key});

  @override
  State<setLocation> createState() => _setLocationState();
}

class _setLocationState extends State<setLocation> {
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
            child: FloatingActionButton.small(onPressed: (){},
                          backgroundColor: Color(0xffC4CE2E),
                          child: Icon(Icons.arrow_back,color: Colors.black,),
                          
                          ),
          ),
                        elevation: 0,
        ),
        body: Column(
          children: [
            Stack(
              children: [Container(
                width: screenwidth,
                height: 200,
               // color: Colors.black,
              ),
              Positioned(
                top: 55,
                left: 22,
                child: Container(
                  width: 1,
                  height: 65,
                  decoration: BoxDecoration(color: Color(0xffC4CE2E)),
                )),

                Positioned(
                  right: 20,
                  top: 60,
                  child: FloatingActionButton.small(onPressed: (){},
                          backgroundColor: Color(0xffC4CE2E),
                          child: Icon(Icons.add,color: Colors.black,),
                          
                          ),),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.fiber_manual_record, size: 10,color: Color(0xffC4CE2E),),
                        SizedBox(width: 10,),
                        pretextform(width: 320, height: 60, lable: '', icon: Icon(Icons.location_on))
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                        children: [
                          Icon(Icons.fiber_manual_record, size: 10,color: Color(0xffC4CE2E),),
                          SizedBox(width: 10,),
                          pretextform(width: 320, height: 60, lable: '', icon: Icon(Icons.location_on))
                        ],
                      ),
                  ],
                ),
              ),
              ]
            ),
          ],
        ),
      ),
    );
  }
}