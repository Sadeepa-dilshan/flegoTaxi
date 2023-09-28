import 'package:flego/util/button.dart';
import 'package:flego/util/documentcontainer.dart';
import 'package:flego/util/text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class document extends StatefulWidget {
  const document({super.key});

  @override
  State<document> createState() => _documentState();
}

class _documentState extends State<document> {
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
            child: FloatingActionButton.small(onPressed: (){},
                          backgroundColor: Color(0xffC4CE2E),
                          child: Icon(Icons.arrow_back,color: Colors.black,),
                          
                          ),
          ),
          title: text(Tname: 'Document', Tsize: 25, Tcolor: Color(0xffC4CE2E), Tweight: FontWeight.w500),
                                  elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text(Tname: 'Documents Required for Registration', Tsize: 22, Tcolor: Colors.white, Tweight: FontWeight.w400),
                SizedBox(height: 30,),
          
                docDetail(text1: 'Revenue License',),
                SizedBox(height: 30,),
                docDetail(text1: 'Insurance Certificate',),
                SizedBox(height: 30,),
                docDetail(text1: 'Driving License',),
                SizedBox(height: 30,),
                docDetail(text1: 'Driver photo ',),
                SizedBox(height: 30,),
                docDetail(text1: 'Vehicle photo (front/rear/inside)',),
                SizedBox(height: 30,),
                docDetail(text1: 'About me',),
                SizedBox(height: 30,),
                
          
               
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
         
          color: Color(0xff333333),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: button(width: screenwidth, height:50, bname: 'Verify me', Tsize: 20, Ccolor: Color(0xffC4CE2E) , Tcolor:Colors.black),
          )),
      )
    );
  }
}