import 'package:flego/util/button.dart';
import 'package:flego/util/cancelridedetails.dart';
import 'package:flego/util/profiledetail.dart';
import 'package:flego/util/savedcarddetails.dart';
import 'package:flego/util/text.dart';

import 'package:flutter/material.dart';

class cancellingride extends StatefulWidget {
  const cancellingride({super.key});

  @override
  State<cancellingride> createState() => _CertificateverifyState();
}

class _CertificateverifyState extends State<cancellingride> {

 

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
              Tname: 'Cancelling the ride',
              Tsize: 25,
              Tcolor: Color(0xffC4CE2E),
              Tweight: FontWeight.w500),
          elevation: 0,
        ),
        body: Column(

          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical:40 ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                cancelridedetails(reason: 'Rider doesn\'t show up'),
                SizedBox(height: screenheight*0.02),
                cancelridedetails(reason: 'No where to stop'),
                SizedBox(height: screenheight * 0.02),
                cancelridedetails(reason: 'Problem with pick up route'),
                SizedBox(height: screenheight * 0.02),
                cancelridedetails(reason: 'RToo many riders'),
                SizedBox(height: screenheight * 0.02),
                cancelridedetails(reason: 'Vehicle issue'),
                SizedBox(height: screenheight * 0.02),
                cancelridedetails(reason: 'Personal issue'),
                SizedBox(height: screenheight * 0.02),
                 cancelridedetails(reason: 'Heavy traffic'),
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
                  bname: 'Done',
                  Tsize: 20,
                  Ccolor: Color(0xffC4CE2E),
                  Tcolor: Colors.black),
            )),
      ),
    );
  }
}


