// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double scHeight = MediaQuery.of(context).size.height;
    double scWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/images/Login2.svg",
                    width: scWidth * 0.8),
              ],
            ),
            SizedBox(height: scHeight * 0.01),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "Login",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
            SizedBox(height: scHeight * 0.01),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                        suffixStyle: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold)),
                        labelStyle: GoogleFonts.ubuntu(
                            textStyle:
                                TextStyle(fontSize: 20, color: Colors.grey)),
                        prefixIcon: Icon(Icons.lock),
                        labelText: "Password"),
                  )
                ],
              ),
            ),
            SizedBox(height: scHeight * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Forgot Password?",
                        style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                                fontSize: 15,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: scHeight * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                    fixedSize: MaterialStateProperty.all(
                        Size.fromWidth(scWidth * 0.85)),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                ),
              ],
            ),
            SizedBox(height: scHeight * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1.0,
                  width: 150.0,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: scWidth * 0.02,
                ),
                Text(
                  "OR",
                  style: GoogleFonts.ubuntu(
                      textStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  )),
                ),
                SizedBox(
                  width: scWidth * 0.02,
                ),
                Container(
                  height: 1.0,
                  width: 150.0,
                  color: Colors.grey,
                )
              ],
            ),
            SizedBox(
              height: scWidth * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color.fromRGBO(0, 0, 0, 0.1)),
                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                    fixedSize: MaterialStateProperty.all(
                        Size.fromWidth(scWidth * 0.85)),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Column(
                        children: [
                          ImageIcon(
                            AssetImage("assets/images/google.png"),
                            color: Color.fromARGB(255, 225, 62, 49),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Login with Google",
                              style: GoogleFonts.ubuntu(
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 75, 71, 71))),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: scHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Wrap(
                  children: [
                    Text(
                      "New to Rufi?  ",
                      style: GoogleFonts.ubuntu(),
                    ),
                    InkWell(
                        onTap: () {},
                        child: Text(
                          "Register",
                          style: GoogleFonts.ubuntu(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue)),
                        ))
                  ],
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
