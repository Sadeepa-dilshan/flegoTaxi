import 'package:flego/util/button.dart';
import 'package:flego/util/profiledetail.dart';
import 'package:flego/util/text.dart';
import 'package:flego/util/textform.dart';
import 'package:flego/util/whitetextform.dart';
import 'package:flutter/material.dart';

class favoritelocation extends StatefulWidget {
  const favoritelocation({super.key});

  @override
  State<favoritelocation> createState() => _CertificateverifyState();
}

class _CertificateverifyState extends State<favoritelocation> {
 
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
              Tname: 'Add favourite location',
              Tsize: 25,
              Tcolor: Color(0xffC4CE2E),
              Tweight: FontWeight.w500),
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: screenwidth * 0.1 ),
          child: Column(
            children: [
              details(
                  imagePath: "assets/home1.png",
                  text1: 'Home',
                  text2: '12/24 mahanam mawatha, dehiwala'),
                  SizedBox(height: screenwidth * 0.05,),
        
                   details(
                  imagePath: "assets/work.png",
                  text1: 'Work',
                  text2: '12/24 mahanam mawatha, dehiwala'),
              SizedBox(
                height: screenwidth * 0.05,
              ),
                   details(
                  imagePath: "assets/addmore.png",
                  text1: 'Add more',
                  text2: '12/24 mahanam mawatha, dehiwala'),
            ],
          ),
        ),
        
       
      ),
    );
  }
}
