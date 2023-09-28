import 'package:flego/util/button.dart';
import 'package:flego/util/profiledetail.dart';
import 'package:flego/util/savedcarddetails.dart';
import 'package:flego/util/text.dart';

import 'package:flutter/material.dart';

class savedcards extends StatefulWidget {
  const savedcards({super.key});

  @override
  State<savedcards> createState() => _CertificateverifyState();

}

class _CertificateverifyState extends State<savedcards> {
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
              Tname: 'Saved Card',
              Tsize: 25,
              Tcolor: Color(0xffC4CE2E),
              Tweight: FontWeight.w500),
          elevation: 0,
        ),
        body:Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
             child: savedcarddetails(bankname1: 'COMBANK', card: '2345', expiredate: '27/25', cardholdername: 'lelum hettigoda'),
            )

          ],
        ),
       
      ),
    );
  }
}

