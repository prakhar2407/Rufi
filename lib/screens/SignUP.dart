

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';


class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double scHeight = MediaQuery.of(context).size.height;
    double scWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 50),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/images/Login.svg",
                    width: scWidth * 0.90, height: scHeight * 0.30),
              ],
            ),
            SizedBox(height: scHeight * 0.05),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      "SignUp",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold,
                              color: Colors.deepPurple)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: scHeight * 0.05),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Expanded(
                child: Column(
                  
                  children: [
                    // Padding(padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 20)),
                    TextFormField(
                      decoration: InputDecoration(
                          labelStyle: GoogleFonts.ubuntu(
                              textStyle:
                                  TextStyle(fontSize: 20, color: Colors.grey)),
                          prefixIcon: Icon(Icons.person),
                          labelText: "Name"),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelStyle: GoogleFonts.ubuntu(
                              textStyle:
                                  TextStyle(fontSize: 20, color: Colors.grey)),
                          prefixIcon: Icon(Icons.mail_rounded),
                                
                          labelText: "Email"),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          labelStyle: GoogleFonts.ubuntu(
                              textStyle:
                                  TextStyle(fontSize: 20, color: Colors.grey)),
                          prefixIcon: Icon(Icons.phone),
                          labelText: "Phone Number"),
                    ),




                    TextFormField(
                      decoration: InputDecoration(
                          // suffix: TextButton(
                          //   style: ButtonStyle(
                          //     padding: MaterialStateProperty.all(
                          //       EdgeInsets.all(0),
                          //     ),
                          //   ),
                          //   onPressed: () {},
                          //   child: Text("Forgot?",
                          //       style: GoogleFonts.ubuntu(
                          //           textStyle: TextStyle(
                          //               fontSize: 20,
                          //               fontWeight: FontWeight.w500,
                          //               color: Colors.blue))),
                          // ),
                          labelStyle: GoogleFonts.ubuntu(
                              textStyle:
                                  TextStyle(fontSize: 20, color: Colors.grey)),
                          prefixIcon: Icon(Icons.lock),
                          labelText: "Password"),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: scHeight * 0.05),
          ]),
        ),
      ),
    );
  }
}
