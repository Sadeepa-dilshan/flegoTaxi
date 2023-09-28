import 'package:flego/util/button.dart';
import 'package:flego/util/profiledetail.dart';
import 'package:flego/util/text.dart';
import 'package:flego/util/textform.dart';
import 'package:flego/util/whitetextform.dart';
import 'package:flutter/material.dart';

class Drivelicence extends StatefulWidget {
  const Drivelicence({super.key});

  @override
  State<Drivelicence> createState() => _CertificateverifyState();
}

class _CertificateverifyState extends State<Drivelicence> {
  DateTime Starteddate = DateTime.now();
  DateTime EndDate = DateTime.now();
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
              Tname: 'Drive License',
              Tsize: 25,
              Tcolor: Color(0xffC4CE2E),
              Tweight: FontWeight.w500),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text(
                  Tname: 'Driving license number :',
                  Tsize: 20,
                  Tcolor: Colors.white,
                  Tweight: FontWeight.w400),
              SizedBox(
                height: 20,
              ),
              whitetextform(width: screenwidth, height: 50),
             
             
              SizedBox(
                height: 20,
              ),
              text(
                  Tname: 'Driving license duration',
                  Tsize: 20,
                  Tcolor: Colors.white,
                  Tweight: FontWeight.w400),
              SizedBox(
                height: 20,
              ),
              text(
                  Tname: 'Started date :',
                  Tsize: 20,
                  Tcolor: Colors.white,
                  Tweight: FontWeight.w400),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: 160,
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
                    width: 20,
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
                height: 20,
              ),
              text(
                  Tname: 'End date',
                  Tsize: 20,
                  Tcolor: Colors.white,
                  Tweight: FontWeight.w400),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: 160,
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
              SizedBox(
                height: 30,
              ),
              details(
                  imagePath: "assets/cam.png",
                  text1: "Camera",
                  text2: 'Upload Driving license image (front)'),
                  SizedBox(
                height: 30,
              ),

                  details(
                  imagePath: "assets/cam.png",
                  text1: "Camera",
                  text2: 'Upload Driving license image (back)')
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
                  bname: 'Done',
                  Tsize: 20,
                  Ccolor: Color(0xffC4CE2E),
                  Tcolor: Colors.black),
            )),
      ),
    );
  }
}
