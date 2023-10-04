import 'package:flego/util/OTP.dart';
import 'package:flego/util/button.dart';
import 'package:flego/util/cancelridedetails.dart';
import 'package:flego/util/profiledetail.dart';
import 'package:flego/util/savedcarddetails.dart';
import 'package:flego/util/text.dart';


import 'package:flutter/material.dart';

class deleteaccount extends StatefulWidget {
  const deleteaccount({super.key});

  @override
  State<deleteaccount> createState() => _CertificateverifyState();
}

class _CertificateverifyState extends State<deleteaccount> {
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
              Tname: 'Delete Account',
              Tsize: 25,
              Tcolor: Color(0xffC4CE2E),
              Tweight: FontWeight.w500),
          elevation: 0,
        ),
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: screenwidth * 0.07, vertical: screenheight * 0.04),
          child: Column(
            children: [
              Container(
                width: screenwidth,
                height: screenheight * 0.35,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: screenwidth * 0.01, vertical: screenheight * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding:  EdgeInsets.symmetric(
                            horizontal: screenwidth * 0.08,
                           // vertical: screenheight * 0.1
                           ),
                        child: text(Tname: 'We\'ve sent the code to mobile ******726' , Tsize: 15, Tcolor: Colors.white, Tweight: FontWeight.w400),
                      ),
                      SizedBox(height: screenheight * 0.02,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OtpBox(),
                          OtpBox(),
                          OtpBox(),
                          OtpBox(),
                        ],
                      ),
                    Padding(
                      padding:  EdgeInsets.symmetric(
                            horizontal: screenwidth * 0.08,
                           // vertical: screenheight * 0.1
                           ),
                      child: text(
                            Tname: 'Didn\'t get code. Resend code.',
                            Tsize: 15,
                            Tcolor: Colors.white,
                            Tweight: FontWeight.w400),
                    ),
                    SizedBox(
                        height: screenheight * 0.02,
                      ),
                    Padding(
                      padding:  EdgeInsets.symmetric(
                            horizontal: screenwidth * 0.07,
                           // vertical: screenheight * 0.1
                           ),
                      child: Column(
                        children: [
                          Container(
                            width: screenwidth,
                            height: screenheight * 0.06,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)
                    
                            ),
                            child: TextFormField(
                              
                              decoration: InputDecoration(
                                hintText: 'Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)
                                )
                              ),
                              obscureText: true,
                            ),
                          ),
                          SizedBox(
                              height: screenheight * 0.02,
                            ),

                           Container(
                              width: screenwidth,
                              height: screenheight * 0.06,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: 'Confirm Password',
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                                obscureText: true,
                              ),
                            )
                        ],
                      ),

                       
                         
                    ),
                   

                    ],
                  ),
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
                  bname: 'Delete Account',
                  Tsize: 20,
                  Ccolor: Color(0xffC4CE2E),
                  Tcolor: Colors.black),
            )),
      ),
    );
  }
}
