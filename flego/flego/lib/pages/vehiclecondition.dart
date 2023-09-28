import 'package:flego/util/button.dart';
import 'package:flego/util/cancelridedetails.dart';
import 'package:flego/util/profiledetail.dart';
import 'package:flego/util/savedcarddetails.dart';
import 'package:flego/util/text.dart';
import 'package:flego/util/vehiclecondition.dart';

import 'package:flutter/material.dart';

class vehiclecondition extends StatefulWidget {
  const vehiclecondition({super.key});

  @override
  State<vehiclecondition> createState() => _CertificateverifyState();
}

class _CertificateverifyState extends State<vehiclecondition> {
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
          title: text(
              Tname: 'Check your vehicle condition',
              Tsize: 25,
              Tcolor: Color(0xffC4CE2E),
              Tweight: FontWeight.w500),
          elevation: 0,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                vehicleconditiondetails()
                ],
              ),
            )
          ],
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
                  bname: 'Go Online',
                  Tsize: 20,
                  Ccolor: Color(0xffC4CE2E),
                  Tcolor: Colors.black),
            )),
      ),
    );
  }
}
