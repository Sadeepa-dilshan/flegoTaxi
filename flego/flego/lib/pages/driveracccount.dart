import 'package:flego/pages/popupmasg.dart';
import 'package:flego/util/button.dart';
import 'package:flego/util/profiledetail.dart';
import 'package:flego/util/text.dart';
import 'package:flego/util/textform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class driveraccount extends StatefulWidget {
  const driveraccount({super.key});

  @override
  State<driveraccount> createState() => _profilePageState();
}

class _profilePageState extends State<driveraccount> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  void _changeName() {
    showDialog(
        context: context,
        builder: (context) {
          return Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: AlertDialog(
              backgroundColor: Color(0xff333333),
              title: text(
                  Tname: 'Vehicle Type',
                  Tsize: 18,
                  Tcolor: Color(0xffC4CE2E),
                  Tweight: FontWeight.w500),
              content:  Center(
                child: text(
                    Tname: 'BBc342',
                    Tsize: 18,
                    Tcolor: Colors.white,
                    Tweight: FontWeight.w500),
              ),
              actions: [
              
                MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: button(
                        width: 70,
                        height: 30,
                        bname: 'Done',
                        Tsize: 15,
                        Ccolor: Color(0xffC4CE2E),
                        Tcolor: Colors.black)),
              ],
            ),
          );
        });
  }

//change Email
  void _changeEmail() {
    showDialog(
        context: context,
        builder: (context) {
          return Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: AlertDialog(
              backgroundColor: Color(0xff333333),
              title: text(
                  Tname: 'Your Email',
                  Tsize: 18,
                  Tcolor: Color(0xffC4CE2E),
                  Tweight: FontWeight.w500),
              content: Container(
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  text(
                      Tname: 'stephan@gmail.com',
                      Tsize: 15,
                      Tcolor: Colors.white,
                      Tweight: FontWeight.w400)
                ]),
              ),
              actions: [
                MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: button(
                        width: 70,
                        height: 30,
                        bname: 'Done',
                        Tsize: 15,
                        Ccolor: Color(0xffC4CE2E),
                        Tcolor: Colors.black)),
              ],
            ),
          );
        });
  }

  //change phone number

  void _changeNumber() {
    showDialog(
        context: context,
        builder: (context) {
          return Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: AlertDialog(
              backgroundColor: Color(0xff333333),
              title: text(
                  Tname: 'Change Name',
                  Tsize: 18,
                  Tcolor: Colors.white,
                  Tweight: FontWeight.w500),
              content: Container(
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  textform(width: 60, height: 50, lable: '+94'),
                  SizedBox(width: 10),
                  textform(width: 180, height: 50, lable: '71 6342621'),
                ]),
              ),
              actions: [
                MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: button(
                        width: 70,
                        height: 30,
                        bname: 'Cancel',
                        Tsize: 15,
                        Ccolor: Color(0xffC4CE2E),
                        Tcolor: Colors.black)),
                MaterialButton(
                    onPressed: () {},
                    child: button(
                        width: 70,
                        height: 30,
                        bname: 'Change',
                        Tsize: 15,
                        Ccolor: Color(0xffC4CE2E),
                        Tcolor: Colors.black)),
              ],
            ),
          );
        });
  }

//emergency call
  void _callemergency() {
    showDialog(
        context: context,
        builder: (context) {
          return Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: AlertDialog(
              backgroundColor: Color(0xff333333),
              title: text(
                  Tname: 'Emergency call',
                  Tsize: 18,
                  Tcolor: Colors.white,
                  Tweight: FontWeight.w500),
              content: Container(
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  //English
                  MaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: button(
                          width: 140,
                          height: 40,
                          bname: '119',
                          Tsize: 20,
                          Ccolor: Color(0xffC4CE2E),
                          Tcolor: Colors.black)),
                  SizedBox(
                    height: 10,
                  ),

                  // sinhala
                  MaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: button(
                          width: 140,
                          height: 40,
                          bname: '1990',
                          Tsize: 20,
                          Ccolor: Color(0xffC4CE2E),
                          Tcolor: Colors.black)),
                  SizedBox(
                    height: 10,
                  ),

                  //tamil
                  MaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: button(
                          width: 140,
                          height: 40,
                          bname: '1919',
                          Tsize: 20,
                          Ccolor: Color(0xffC4CE2E),
                          Tcolor: Colors.black)),
                ]),
              ),
              actions: [
                MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: button(
                        width: 70,
                        height: 30,
                        bname: 'Done',
                        Tsize: 15,
                        Ccolor: Color(0xffC4CE2E),
                        Tcolor: Colors.black)),
              ],
            ),
          );
        });
  }

  //change language

  void _changelanguage() {
    showDialog(
        context: context,
        builder: (context) {
          return Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: AlertDialog(
              backgroundColor: Color(0xff333333),
              title: text(
                  Tname: 'Change Language',
                  Tsize: 18,
                  Tcolor: Colors.white,
                  Tweight: FontWeight.w500),
              content: Container(
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  //English
                  MaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: button(
                          width: 140,
                          height: 40,
                          bname: 'English',
                          Tsize: 20,
                          Ccolor: Color(0xffC4CE2E),
                          Tcolor: Colors.black)),
                  SizedBox(
                    height: 10,
                  ),

                  // sinhala
                  MaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: button(
                          width: 140,
                          height: 40,
                          bname: 'සිංහ​ල',
                          Tsize: 20,
                          Ccolor: Color(0xffC4CE2E),
                          Tcolor: Colors.black)),
                  SizedBox(
                    height: 10,
                  ),

                  //tamil
                  MaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: button(
                          width: 140,
                          height: 40,
                          bname: 'தமிழ்',
                          Tsize: 20,
                          Ccolor: Color(0xffC4CE2E),
                          Tcolor: Colors.black)),
                ]),
              ),
              actions: [
                MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: button(
                        width: 70,
                        height: 30,
                        bname: 'Done',
                        Tsize: 15,
                        Ccolor: Color(0xffC4CE2E),
                        Tcolor: Colors.black)),
              ],
            ),
          );
        });
  }

  //change password
  void _changepassword() {
    showDialog(
        context: context,
        builder: (context) {
          return Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: AlertDialog(
              backgroundColor: Color(0xff333333),
              title: text(
                  Tname: 'Change password',
                  Tsize: 18,
                  Tcolor: Color(0xffC4CE2E),
                  Tweight: FontWeight.w500),
              content: Container(
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  textform(width: 220, height: 50, lable: 'New password'),
                  SizedBox(height: 10),
                  textform(width: 220, height: 50, lable: 'Confirm password'),
                ]),
              ),
              actions: [
                MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: button(
                        width: 70,
                        height: 30,
                        bname: 'Cancel',
                        Tsize: 15,
                        Ccolor: Color(0xffC4CE2E),
                        Tcolor: Colors.black)),
                MaterialButton(
                    onPressed: () {},
                    child: button(
                        width: 70,
                        height: 30,
                        bname: 'Change',
                        Tsize: 15,
                        Ccolor: Color(0xffC4CE2E),
                        Tcolor: Colors.black)),
              ],
            ),
          );
        });
  }

//deleteaccount
  void _deletaccount() {
    showDialog(
        context: context,
        builder: (context) {
          return Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: AlertDialog(
              backgroundColor: Color(0xff333333),
              title: text(
                  Tname: 'Delete Acount',
                  Tsize: 18,
                  Tcolor: Colors.red,
                  Tweight: FontWeight.w500),
              content: Container(
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  textform(width: 220, height: 50, lable: ' Mobile number'),
                  SizedBox(height: 10),
                  textform(width: 220, height: 50, lable: 'Password '),
                ]),
              ),
              actions: [
                MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: button(
                        width: 70,
                        height: 30,
                        bname: 'Cancel',
                        Tsize: 15,
                        Ccolor: Color(0xffC4CE2E),
                        Tcolor: Colors.black)),
                MaterialButton(
                    onPressed: () {},
                    child: button(
                        width: 70,
                        height: 30,
                        bname: 'Delete',
                        Tsize: 15,
                        Ccolor: Color(0xffC4CE2E),
                        Tcolor: Colors.black)),
              ],
            ),
          );
        });
  }

  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff333333),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                          width: 80,
                          height: 80,
                          child: Image.asset(
                            "assets/profile1.png",
                            fit: BoxFit.contain,
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text(
                              Tname: 'Stephen Covey',
                              Tsize: 25,
                              Tcolor: Colors.white,
                              Tweight: FontWeight.w500),
                          text(
                              Tname: 'User Level',
                              Tsize: 12,
                              Tcolor: Colors.amber,
                              Tweight: FontWeight.w400),
                          text(
                              Tname: 'User mode',
                              Tsize: 12,
                              Tcolor: Colors.amber,
                              Tweight: FontWeight.w400)
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                 
                  SizedBox(
                    height: 15,
                  ),
                  text(
                      Tname: 'Vehicle information',
                      Tsize: 24,
                      Tcolor: Color(0xffC4CE2E),
                      Tweight: FontWeight.w400),
                  SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                      onPressed: _changeName,
                      child: details(
                          imagePath: "assets/pp.png",
                          text1: 'Vehicle',
                          text2: 'Vehicle Type')),
                  SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                      onPressed: _changeEmail,
                      child: details(
                          imagePath: "assets/email.png",
                          text1: 'Document',
                          text2: 'View Documents')),
                  SizedBox(
                    height: 10,
                  ),
              
                    
                  text(
                      Tname: 'Emergency',
                      Tsize: 24,
                      Tcolor: Color(0xffC4CE2E),
                      Tweight: FontWeight.w400),
                  SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                      onPressed: _callemergency,
                      child: details(
                          imagePath: "assets/emergency.png",
                          text1: 'Emergency contact',
                          text2: 'Add Emergency contacts')),
                  SizedBox(
                    height: 15,
                  ),
                  text(
                      Tname: 'Privacy & Security',
                      Tsize: 24,
                      Tcolor: Color(0xffC4CE2E),
                      Tweight: FontWeight.w400),
                  SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                      onPressed: _changelanguage,
                      child: details(
                          imagePath: "assets/world.png",
                          text1: 'Language',
                          text2: 'Change your Language')),
                  SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                      onPressed: _changepassword,
                      child: details(
                          imagePath: "assets/lock.png",
                          text1: 'Password',
                          text2: 'Change Your Password')),
                  SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                      onPressed: _deletaccount,
                      child: details(
                          imagePath: "assets/delete.png",
                          text1: 'Delete',
                          text2: 'Delete Account')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
