import 'package:flego/util/OTP.dart';
import 'package:flego/util/button.dart';
import 'package:flego/util/cancelridedetails.dart';
import 'package:flego/util/package.dart';
import 'package:flego/util/profiledetail.dart';
import 'package:flego/util/savedcarddetails.dart';
import 'package:flego/util/text.dart';

import 'package:flutter/material.dart';

class Package extends StatefulWidget {
  const Package({super.key});

  @override
  State<Package> createState() => _CertificateverifyState();
}

class _CertificateverifyState extends State<Package> {
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
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/package.png",width: 30,height: 30,),
              SizedBox(width: screenwidth * 0.03,),
              text(
                  Tname: 'Package',
                  Tsize: 25,
                  Tcolor: Color(0xffC4CE2E),
                  Tweight: FontWeight.w500),
            ],
          ),
          elevation: 0,
        ),
       body: Column(
        children: [

          Padding(
            padding: EdgeInsets.symmetric(vertical: screenheight * 0.04),
            child: Container(
              width: screenwidth,
              height: screenheight * 0.1,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
          
              ),
              child: Padding(
                padding:  EdgeInsets.symmetric(vertical: screenheight * 0.01 , horizontal: screenwidth * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text(Tname: 'Active Time', Tsize: 20, Tcolor: Colors.grey, Tweight: FontWeight.w600),
                    SizedBox(height: screenheight * 0.01),
                    text(
                          Tname: '00:00:00',
                          Tsize: 30,
                          Tcolor: Colors.grey,
                          Tweight: FontWeight.w600),
                  ],
                ),
              ),
            ),

          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: screenwidth * 0.08),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                 packagedetails(days: '1', price: '60.00'),
                  SizedBox(width: screenwidth * 0.06),
                   packagedetails(days: '5', price: '110.00'),
                   SizedBox(width: screenwidth * 0.06),
                    packagedetails(days: '7', price: '210.00'),
                    SizedBox(width: screenwidth * 0.06),
                    packagedetails(days: '14', price: '350.00'),
                ],
            
              ),

              
            ),
          ),
          SizedBox(height: screenwidth * 0.1),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  width: screenwidth,
                  height: screenheight * 0.05,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Row(
                           children: [
                             Icon(
                                Icons.credit_card,
                                color: Colors.white,
                                size: 35,
                              ),
                              SizedBox(width: screenwidth * 0.06),
                              text(
                                  Tname: 'Add payment method',
                                  Tsize: 25,
                                  Tcolor: Colors.white,
                                  Tweight: FontWeight.w500),
                           ],
                         ),
                              Icon(Icons.add_circle_outline, color: Colors.white, size: 25,)
                      ],
                    ),
                  ),
                ),
          SizedBox(height: screenwidth * 0.05),
                 Container(
                    width: screenwidth,
                    height: screenheight * 0.05,
                    decoration:
                        BoxDecoration(color: Colors.white.withOpacity(0.1)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                             Icon(
                            Icons.link,
                            color: Colors.white,
                            size: 35,
                             ),
                              SizedBox(width: screenwidth * 0.06),
                              text(
                                  Tname: 'Link bank account',
                                  Tsize: 25,
                                  Tcolor: Colors.white,
                                  Tweight: FontWeight.w500),
                            ],
                          ),
                          Icon(
                            Icons.add_circle_outline,
                            color: Colors.white,
                            size: 25,
                          )
                        ],
                      ),
                    ),
                  ),
           SizedBox(height: screenwidth * 0.05),
                   Container(
                    width: screenwidth,
                    height: screenheight * 0.05,
                    decoration:
                        BoxDecoration(color: Colors.white.withOpacity(0.1)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                             Icon(
                                Icons.save,
                                color: Colors.white,
                                size: 35,
                              ),
                              SizedBox(width: screenwidth * 0.06),
                              text(
                                  Tname: 'Save card',
                                  Tsize: 25,
                                  Tcolor: Colors.white,
                                  Tweight: FontWeight.w500),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 25,
                          )
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          )
        ],
       ),
       
      ),
    );
  }
}
