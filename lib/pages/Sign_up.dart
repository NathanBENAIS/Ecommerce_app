import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: SvgPicture.asset(
                      'assets/svg/arrow-left.svg',
                      semanticsLabel: 'Retour en arrière',
                      width: 20,
                      fit: BoxFit.scaleDown,
                    )),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Text(
                    'Sign Up',
                    textAlign: TextAlign.right,
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  )),
                ),
                SizedBox(height: 70),
                Card(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        labelText: 'Name',
                        floatingLabelStyle: const TextStyle(height: 3),
                        contentPadding: EdgeInsets.only(left: 15, right: 15)),
                  ),
                ),
                SizedBox(height: 5),
                Card(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        labelText: 'Email',
                        floatingLabelStyle: const TextStyle(height: 3),
                        contentPadding: EdgeInsets.only(left: 15, right: 15)),
                  ),
                ),
                SizedBox(height: 5),
                Card(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        labelText: 'Password',
                        floatingLabelStyle: const TextStyle(height: 3),
                        contentPadding: EdgeInsets.only(left: 15, right: 15)),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    child: Row(
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(fontSize: 16.0, color: Colors.black),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SvgPicture.asset(
                          'assets/svg/arrow-right-red.svg',
                          width: 15,
                          fit: BoxFit.scaleDown,
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.end,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Container(
                    width: double.infinity,
                    child: FilledButton(
                        onPressed: null,
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                          Color(0xFFDB3022),
                        )),
                        child: Container(
                          child: Text(
                            "Sign up".toUpperCase(),
                            style: TextStyle(
                                color: Colors.white, letterSpacing: 1),
                          ),
                          padding: EdgeInsets.only(top: 15, bottom: 15),
                        ))),
                SizedBox(
                  height: 60,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
        Text("Or sign up with social account"),
        SizedBox(
          height: 18,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 92,
              height: 64,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    offset: Offset(0, 1),
                    blurRadius: 8,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(15),
              child: SvgPicture.asset(
                'assets/svg/google.svg',
                fit: BoxFit.scaleDown,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              width: 92,
              height: 64,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    offset: Offset(0, 1),
                    blurRadius: 8,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(15),
              child: SvgPicture.asset(
                'assets/svg/facebook.svg',
                fit: BoxFit.scaleDown,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        )
      ]),
    );
  }
}
