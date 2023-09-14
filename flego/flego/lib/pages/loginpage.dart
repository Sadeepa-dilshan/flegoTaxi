import 'package:flego/util/button.dart';
import 'package:flego/util/textform.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginpp extends StatefulWidget {
  const loginpp({super.key});

  @override
  State<loginpp> createState() => _loginppState();
}

class _loginppState extends State<loginpp> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff333333),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                children: [
                  //mainhead
                  Container(
                      width: screenwidth,
                      //  height: screenheight,
                      child: Image.asset("assets/phone.png")),

                  //logoname
                  Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                          width: 170,
                          height: 179,
                          child: Image.asset("assets/Text Logo.png"))),

                  Positioned(
                    top: 190,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 60, horizontal: 30),
                      child: Container(
                        width: screenwidth,
                        height: 400,
                        decoration: BoxDecoration(
                            // color: Colors.amber,
                            borderRadius: BorderRadius.circular(25)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Login or Register ',
                              style: GoogleFonts.robotoCondensed(
                                  fontSize: 36,
                                  color: Color(0xffC4CE2E),
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            textform(
                              width: screenwidth,
                              height: 60,
                              lable: 'Email/Mobile phone number',
                              icon: Icon(Icons.person_outlined),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            textform(
                              width: screenwidth,
                              height: 60,
                              lable: 'Password',
                              icon: Icon(Icons.key),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.check_box,
                                  color: Color(0xffC4CE2E),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Keep me logged in ',
                                  style: GoogleFonts.robotoCondensed(
                                      fontSize: 18,
                                      color: Color(0xffC4CE2E),
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            button(
                                width: screenwidth,
                                height: 60,
                                bname: 'Login',
                                Ccolor: Color(0xffC4CE2E),
                                Tcolor: Colors.black,
                                Tsize: 25),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Forget password |',
                                  style: GoogleFonts.robotoCondensed(
                                      fontSize: 18,
                                      color: Color(0xffC4CE2E),
                                      fontWeight: FontWeight.w400),
                                ),
                                // SizedBox(width: 20,),
                                Text(
                                  'Create Account',
                                  style: GoogleFonts.robotoCondensed(
                                      fontSize: 18,
                                      color: Color(0xffC4CE2E),
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
