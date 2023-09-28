import 'package:flego/util/button.dart';
import 'package:flego/util/profiledetail.dart';
import 'package:flego/util/text.dart';
import 'package:flego/util/textform.dart';
import 'package:flego/util/whitetextform.dart';
import 'package:flutter/material.dart';

class vehicleinformation extends StatefulWidget {
  const vehicleinformation({super.key});

  @override
  State<vehicleinformation> createState() => _CertificateverifyState();
}

class _CertificateverifyState extends State<vehicleinformation> {
  //vehicle type
  String dropdownvalue = 'Select';
  var items = ['Select', 'Car', 'Van','Bike',];

  // Num of passenger
  double dropdownvalues = 1.0;
  var item = [1.0,2.0,3.0,];

  DateTime Starteddate = DateTime.now();
  
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
            padding: const EdgeInsets.all(10.0),
            child: FloatingActionButton.small(
              onPressed: () {},
              backgroundColor: Color(0xffC4CE2E),
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
          title: text(
              Tname: 'Vehicle information',
              Tsize: 25,
              Tcolor: Color(0xffC4CE2E),
              Tweight: FontWeight.w500),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                 
                  children: [
                    text(
                        Tname: 'Vehicle information:',
                        Tsize: 20,
                        Tcolor: Colors.white,
                        Tweight: FontWeight.w400),
                        SizedBox(width: screenwidth*0.1,),
                         DropdownButton(
                                value: dropdownvalue,
                                icon: Icon(Icons.keyboard_arrow_down_rounded),
                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: text(
                                        Tname: items,
                                        Tsize: 20,
                                        Tcolor: Color(0xffC4CE2E),
                                        Tweight: FontWeight.w400),
                                  );

                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue = newValue!;
                                  });
                                }),
                  ]
                ),
                Row(
                 
                  children: [
                    text(
                        Tname: 'Vehicle No :',
                        Tsize: 20,
                        Tcolor: Colors.white,
                        Tweight: FontWeight.w400),
                       
                        SizedBox(width: screenwidth*0.2,),

                         whitetextform(width: screenwidth * 0.3, height: 40),
                  ]
                       
                ),
                Row(children: [
                        text(
                            Tname: 'Passengers :',
                            Tsize: 20,
                            Tcolor: Colors.white,
                            Tweight: FontWeight.w400),
                        SizedBox(
                          width: screenwidth * 0.26,
                        ),
                        DropdownButton(
                            value: dropdownvalues,
                            icon: Icon(Icons.keyboard_arrow_down_rounded),
                            items: item.map((double item) {
                              return DropdownMenuItem(
                                value: item,
                                child: text(
                                    Tname: item.toString(),
                                    Tsize: 20,
                                    Tcolor: Color(0xffC4CE2E),
                                    Tweight: FontWeight.w400),
                              );
                            }).toList(),

                            onChanged: (double? newValues) {
                              setState(() {
                                dropdownvalues = newValues!;
                              });
                            }),
                      ]),
                      SizedBox(height: 50,),
                       details(
                          imagePath: "assets/cam.png",
                          text1: "Camera",
                          text2: 'Vehicle image (front)'),

                           SizedBox(height: 20,),
                       details(
                          imagePath: "assets/cam.png",
                          text1: "Camera",
                          text2: 'Vehicle image (back)'),

                           SizedBox(height: 20,),
                       details(
                          imagePath: "assets/cam.png",
                          text1: "Camera",
                          text2: 'Vehicle image (side)'),

                           SizedBox(height: 20,),
                       details(
                          imagePath: "assets/cam.png",
                          text1: "Camera",
                          text2: 'Vehicle tire condition'),
              
              ]        
            ),

          ),
          
            ),
             bottomNavigationBar: BottomAppBar(
            color: Color(0xff333333),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: button(
                  width: screenwidth,
                  height: 50,
                  bname: 'Done',
                  Tsize: 20,
                  Ccolor: Color(0xffC4CE2E),
                  Tcolor: Colors.black),
            )),
      ),
    );
  }
}
