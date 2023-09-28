import 'package:flego/util/button.dart';
import 'package:flego/util/profiledetail.dart';
import 'package:flego/util/text.dart';
import 'package:flego/util/textform.dart';
import 'package:flego/util/whitetextform.dart';
import 'package:flutter/material.dart';

class DriveScreen extends StatefulWidget {
  const DriveScreen({super.key});

  @override
  State<DriveScreen> createState() => _CertificateverifyState();
}

class _CertificateverifyState extends State<DriveScreen> {
  bool isSwitched = true;

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
                  Stack(children: [
                    Image.asset("assets/map2.png"),
                    Positioned(
                        top: screenheight * 0.07,
                        left: screenwidth * .07,
                        right: screenwidth * .07,
                        child: Container(
                          width: screenwidth,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Color(0xff333333)),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Material(
                                      elevation: 1,
                                     // shadowColor: Colors.white,
                                      
                                      borderRadius: BorderRadius.circular(20),
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Color(0xffC4CE2E)
                                        ),
                                        child: Icon(Icons.menu,color: Color(0xff333333) ,size: 30,)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(13.0),
                                      child: Image.asset("assets/erning.png"),
                                    ),
                                    text(Tname: 'LKR: 00.00', Tsize: 20, Tcolor: Colors.white, Tweight: FontWeight.w400),
                                    Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Image.asset("assets/time.png"),
                                    ),
                                    text(Tname: '23.59.59', Tsize: 20, Tcolor: Colors.white, Tweight: FontWeight.w400),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Material(
                                        elevation: 5,
                                        borderRadius: BorderRadius.circular(20),
                                      
                                        child: Container(
                                           width: 40,
                                                                        height: 40,
                                                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Color(0xff333333)),
                                          child: Switch(
                                                                          activeColor: Color(0xffC4CE2E),
                                        
                                                                           inactiveTrackColor: Colors.white,
                                                                          inactiveThumbColor:Colors.white,
                                                                          value: isSwitched,
                                                                          onChanged: (value) {
                                          setState(() {
                                            isSwitched = value; // Toggle the switch state
                                          });
                                                                          },
                                                                        ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                        )
                        ),
                        Positioned(
                        top: screenheight * 0.8,
                        left: screenwidth * .08,
                        right: screenwidth * .08,
                        bottom: screenheight * 0.001,
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Image.asset("assets/gologo.png"),
                        ),
                        )
                  ])
                ],
              ),
            )));
  }
}
