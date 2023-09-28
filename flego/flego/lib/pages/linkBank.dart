import 'package:flego/util/button.dart';
import 'package:flego/util/profiledetail.dart';
import 'package:flego/util/text.dart';
import 'package:flego/util/textform.dart';
import 'package:flego/util/whitetextform.dart';
import 'package:flutter/material.dart';

class linkbankacc extends StatefulWidget {
  const linkbankacc({super.key});

  @override
  State<linkbankacc> createState() => _CertificateverifyState();
}

class _CertificateverifyState extends State<linkbankacc> {
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
              Tname: 'Add payment method',
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
                  Tname: 'Bank',
                  Tsize: 20,
                  Tcolor: Colors.white,
                  Tweight: FontWeight.w400),
              whitetextform(width: screenwidth, height: 50),
              SizedBox(
                height: 20,
              ),
              text(
                  Tname: 'Branch',
                  Tsize: 20,
                  Tcolor: Colors.white,
                  Tweight: FontWeight.w400),
              whitetextform(width: screenwidth, height: 50),
              SizedBox(
                height: 20,
              ),
              text(
                  Tname: 'Account No ',
                  Tsize: 20,
                  Tcolor: Colors.white,
                  Tweight: FontWeight.w400),
              whitetextform(width: screenwidth, height: 50),
              SizedBox(
                height: 20,
                
              ),
                text(
                  Tname: 'Account Name ',
                  Tsize: 20,
                  Tcolor: Colors.white,
                  Tweight: FontWeight.w400),
              whitetextform(width: screenwidth, height: 50),
              
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
                  bname: 'Link',
                  Tsize: 20,
                  Ccolor: Color(0xffC4CE2E),
                  Tcolor: Colors.black),
            )),
      ),
    );
  }
}
