import 'package:flego/util/button.dart';

import 'package:flego/util/savedcard.dart';
import 'package:flego/util/text.dart';

import 'package:flutter/material.dart';

class savedbankcard extends StatefulWidget {
  const savedbankcard({super.key});

  @override
  State<savedbankcard> createState() => _CertificateverifyState();
}

class _CertificateverifyState extends State<savedbankcard> {
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
              Tname: 'Package Activate',
              Tsize: 25,
              Tcolor: Color(0xffC4CE2E),
              Tweight: FontWeight.w500),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text(
                  Tname: 'Pay with Saved card',
                  Tsize: 25,
                  Tcolor: Colors.white,
                  Tweight: FontWeight.w500),
              SizedBox(
                height: 20,
              ),

              savedbankcards(bank: 'COMBANK', accnum: '******425'),
              SizedBox(
                height: 20,
              ),
              savedbankcards(bank: 'Sampath', accnum: '*********329')

              // details(imagePath: "assets/card.png", text1: 'Bank card', text2: 'asss')
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
