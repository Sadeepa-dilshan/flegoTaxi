import 'package:flego/util/button.dart';
import 'package:flego/util/profiledetail.dart';
import 'package:flego/util/text.dart';
import 'package:flego/util/textform.dart';
import 'package:flego/util/whitetextform.dart';
import 'package:flutter/material.dart';

class addpayment extends StatefulWidget {
  const addpayment({super.key});

  @override
  State<addpayment> createState() => _CertificateverifyState();
}

class _CertificateverifyState extends State<addpayment> {
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
                  Tname: 'Bank of card',
                  Tsize: 20,
                  Tcolor: Colors.white,
                  Tweight: FontWeight.w400),
              
              whitetextform(width: screenwidth, height: 50),
              SizedBox(
                height: 20,
              ),
              text(
                  Tname: 'Card holder name',
                  Tsize: 20,
                  Tcolor: Colors.white,
                  Tweight: FontWeight.w400),
             
              whitetextform(width: screenwidth, height: 50),
              SizedBox(
                height: 20,
              ),

               text(
                  Tname: 'Card number',
                  Tsize: 20,
                  Tcolor: Colors.white,
                  Tweight: FontWeight.w400),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  whitetextform(width:screenwidth*0.8, height: 50),
                  Icon(Icons.credit_card,color: Colors.white,size: 30,)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Column(
                    children: [
                      text(
                          Tname: 'Expire Month/Year ',
                          Tsize: 20,
                          Tcolor: Colors.white,
                          Tweight: FontWeight.w400),
                          SizedBox(height: 10,),
                          Row(
                            children: [

                              textform(width: screenwidth*0.2, height: 60, lable: 'MM'),
                              SizedBox(width: screenwidth*0.05,),
                              textform(width: screenwidth*0.2, height: 60, lable: 'YY'),
                            ],
                          )

                    ],
                  ),



                       Column(
                         children: [
                           text(
                      Tname: 'CVV',
                      Tsize: 20,
                      Tcolor: Colors.white,
                      Tweight: FontWeight.w400),
                      textform(
                          width: screenwidth * 0.2, height: 60, lable: 'MM'),
                         ],
                       ),

             
                ],
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
                  bname: 'Pay',
                  Tsize: 20,
                  Ccolor: Color(0xffC4CE2E),
                  Tcolor: Colors.black),
            )),
      ),
    );
  }
}
