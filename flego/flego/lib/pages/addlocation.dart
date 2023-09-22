import 'package:flego/util/RegTextfiels.dart';
import 'package:flego/util/button.dart';
import 'package:flego/util/sufTextform.dart';
import 'package:flego/util/text.dart';
import 'package:flego/util/prefixtextform.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddLocation extends StatefulWidget {
  const AddLocation({super.key});

  @override
  State<AddLocation> createState() => _AddLocationState();
}

class _AddLocationState extends State<AddLocation> {
  int SelectedOption = 1;
  
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff333333),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Stack(
                  children: [Container(
                      width: screenwidth, child: Image.asset("assets/map.png")),
                      Positioned(
                        top: 320,
                        left: 20,
                        child: FloatingActionButton(onPressed: (){},
                        backgroundColor: Color(0xffC4CE2E),
                        child: Icon(Icons.arrow_back, color:Colors.black,),
                        
                        ))
                  ]
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text(
                              Tname: 'Add more location',
                              Tsize: 25,
                              Tcolor: Color(0xffC4CE2E),
                              Tweight: FontWeight.w400),
                          SizedBox(
                            height: 20,
                          ),
                          suftextform(
                              width: screenwidth,
                              height: 45,
                              lable: '',
                              icon: Icon(Icons.search)),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                          //  mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: ListTile(
                                  title: text(
                                      Tname: 'Home',
                                      Tsize: 14,
                                      Tcolor: Color(0xffC4CE2E),
                                      Tweight: FontWeight.w500),
                                  leading: Radio(
                                    value: 1,
                                    groupValue: SelectedOption,
                                     activeColor: Colors.amber,
                                    fillColor:
                                        MaterialStateProperty.all(Color(0xffC4CE2E)),
                                    onChanged: (value) {
                                      setState(() {
                                        SelectedOption = value!;
                                        print('tap 1');
                                      });
                                    },
                                  ),
                                ),
                              ),
                          
                              Expanded(
                                child: ListTile(
                                  title: text(
                                      Tname: 'Work',
                                      Tsize: 14,
                                      Tcolor: Color(0xffC4CE2E),
                                      Tweight: FontWeight.w500),
                                  leading: Radio(
                                    value: 2,
                                    groupValue: SelectedOption,
                                    activeColor: Colors.amber,
                                    fillColor:
                                        MaterialStateProperty.all(Color(0xffC4CE2E)),
                                    onChanged: ( value) {
                                      setState(() {
                                        SelectedOption = value!;
                                        print('tap 2');
                                      });
                                    },
                                  ),
                                ),
                              ),
                          
                              Expanded(
                                child: ListTile(
                                  title: text(
                                      Tname: 'Other',
                                      Tsize: 14,
                                      Tcolor: Color(0xffC4CE2E),
                                      Tweight: FontWeight.w500),
                                  leading: Radio(
                                    value: 3,
                                    groupValue: SelectedOption,
                                    activeColor: Colors.amber,
                                    fillColor: MaterialStateProperty.all(
                                        Color(0xffC4CE2E)),
                                    onChanged: (value) {
                                      setState(() {
                                        SelectedOption = value!;
                                        print('tap 3');
                                      });
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                          Regtextform(width: screenwidth, height: 60, lable:'Home' ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Regtextform(width: 170, height: 60, lable:'Street No/name' ),
                              Regtextform(width: 170, height: 60, lable:'Sub Town' ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Regtextform(width: screenwidth, height: 60, lable:'Mobile num optional' ),
                    
                                      SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              button(width: 90, height: 30, bname: 'Done', Tsize: 20, Ccolor: Color(0xffC4CE2E), Tcolor: Colors.black),
                            ],
                          )
                                      
                        ],
                        
                                      
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
