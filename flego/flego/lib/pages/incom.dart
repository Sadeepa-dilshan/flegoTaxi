import 'package:flego/util/button.dart';
import 'package:flego/util/profiledetail.dart';
import 'package:flego/util/text.dart';
import 'package:flego/util/textform.dart';
import 'package:flego/util/whitetextform.dart';
import 'package:flutter/material.dart';

class Incompage extends StatefulWidget {
  const Incompage({super.key});

  @override
  State<Incompage> createState() => _CertificateverifyState();
}

class _CertificateverifyState extends State<Incompage> {
  DateTime Starteddate = DateTime.now();
  DateTime EndDate = DateTime.now();
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
          title:  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/erning.png",
                width: 30,
                height: 30,
              ),
              SizedBox(
                width: screenwidth * 0.03,
              ),
              text(
                  Tname: 'Income',
                  Tsize: 25,
                  Tcolor: Color(0xffC4CE2E),
                  Tweight: FontWeight.w500),
            ],
          ),
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical:screenheight * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: screenwidth,
                height: screenheight * 0.2,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1)
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: screenwidth * 0.05,  vertical:screenheight * 0.01),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          text(
                              Tname: 'Today Distance  :',
                              Tsize: 25,
                              Tcolor: Colors.white,
                              Tweight: FontWeight.w400),
        
                               text(
                              Tname: ' 12.5 Km',
                              Tsize: 25,
                              Tcolor: Colors.white,
                              Tweight: FontWeight.w400),
                        ],
                      ),
        
                      //totla trips
        
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          text(
                              Tname: 'Today Trips ',
                              Tsize: 25,
                              Tcolor: Colors.white,
                              Tweight: FontWeight.w400),
                              SizedBox(width: screenwidth * 0.1,),
                          text(
                              Tname: ': 5',
                              Tsize: 25,
                              Tcolor: Colors.white,
                              Tweight: FontWeight.w400),
                        ],
                      ),
                      text(
                          Tname: 'Today Income',
                          Tsize: 25,
                          Tcolor: Colors.white,
                          Tweight: FontWeight.w400),
        
                          text(
                          Tname: 'LKR 845.00',
                          Tsize: 40,
                          Tcolor: Colors.white,
                          Tweight: FontWeight.w600),
        
        
                    
                    ],
                  ),
                ),
              ),
             
              SizedBox(
                height: screenheight * 0.06 ,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: screenwidth * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: screenwidth *0.3,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white),
                          child: text(
                              Tname:
                                  "${Starteddate.year} / ${Starteddate.month} / ${Starteddate.day}",
                              Tsize: 20,
                              Tcolor: Colors.black,
                              Tweight: FontWeight.w500),
                          alignment: Alignment.center,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                            onTap: () async {
                              final DateTime? dateTime = await showDatePicker(
                                  context: context,
                                  initialDate: Starteddate,
                                  firstDate: DateTime(2022),
                                  lastDate: DateTime(3000));
                              if (dateTime != null) {
                                setState(() {
                                  Starteddate = dateTime;
                                });
                              }
                            },
                            child: Icon(
                              Icons.calendar_month,
                              size: 30,
                              color: Colors.white,
                            ))
                      ],
                    ),
                    SizedBox(
                      width: screenwidth * 0.02,
                    ),
                    
                    Row(
                      children: [
                        Container(
                          width: screenwidth * 0.3,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white),
                          child: text(
                              Tname:
                                  "${EndDate.year} / ${EndDate.month} / ${EndDate.day}",
                              Tsize: 20,
                              Tcolor: Colors.black,
                              Tweight: FontWeight.w500),
                          alignment: Alignment.center,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                            onTap: () async {
                              final DateTime? dateTime = await showDatePicker(
                                  context: context,
                                  initialDate: EndDate,
                                  firstDate: DateTime(2022),
                                  lastDate: DateTime(3000));
                              if (dateTime != null) {
                                setState(() {
                                  EndDate = dateTime;
                                });
                              }
                            },
                            child: Icon(
                              Icons.calendar_month,
                              size: 30,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
             
            ],
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
                  bname: 'Apply',
                  Tsize: 20, 
                  Ccolor: Color(0xffC4CE2E),
                  Tcolor: Colors.black),
            )),
      ),
    );
  }
}
