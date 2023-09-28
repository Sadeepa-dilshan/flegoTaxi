import 'package:flego/util/button.dart';
import 'package:flego/util/profiledetail.dart';
import 'package:flego/util/text.dart';
import 'package:flego/util/textform.dart';
import 'package:flego/util/whitetextform.dart';
import 'package:flutter/material.dart';

class aboutme extends StatefulWidget {
  const aboutme({super.key});

  @override
  State<aboutme> createState() => _CertificateverifyState();
}

class _CertificateverifyState extends State<aboutme> {
  String dropdownvalue = 'Select';
  var items = ['Select', 'Male', 'Female'];
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
              Tname: 'About me',
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        text(
                            Tname: 'First name :',
                            Tsize: 20,
                            Tcolor: Colors.white,
                            Tweight: FontWeight.w400),
                        SizedBox(
                          height: 20,
                        ),
                        whitetextform(width: 150, height: 50),
                      ],
                    ),
                    Column(
                      children: [
                        text(
                            Tname: 'Last name : ',
                            Tsize: 20,
                            Tcolor: Colors.white,
                            Tweight: FontWeight.w400),
                        SizedBox(
                          height: 20,
                        ),
                        whitetextform(width: 150, height: 50),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                text(
                    Tname: 'Date of birth :',
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
                Column(
                  children: [
                    text(
                        Tname: 'Gender :',
                        Tsize: 20,
                        Tcolor: Colors.white,
                        Tweight: FontWeight.w400),
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
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                text(
                    Tname: 'Optional mobile number :',
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
                    Tname: 'Email Address:',
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
                    Tname: 'Address :',
                    Tsize: 20,
                    Tcolor: Colors.white,
                    Tweight: FontWeight.w400),
                SizedBox(
                  height: 20,
                ),
                whitetextform(width: screenwidth, height: 50),
              ],
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
