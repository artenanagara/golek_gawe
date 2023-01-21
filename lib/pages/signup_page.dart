// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:golek_gawe/theme.dart';
import 'package:golek_gawe/pages/signin_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:email_validator/email_validator.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isEmailValid = true;

TextEditingController emailController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:0, left: 24, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sign Up',
                  style: titleTextStyle,
                  ),
                  SizedBox(height: 2,),
                  Text('Build Your Career',
                  style: subTtitleTextStyle,),
                  SizedBox(height: 50,),
                  Center(
                    child: Column(
                      children: [
                        Image.asset('assets/images/upload_pic.png', width: 120,),
                      ],
                    ),
                  ),
                  SizedBox(height: 50,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Full Name',
                      style: titleTextStyle,),
                      SizedBox(height: 8,),
                      TextFormField(
                        decoration: 
                        InputDecoration(
                          fillColor: Color(0xffF1F0F5),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(color: Color(0xff4141A4)),
                          
                        ),
                      ),
                      style: TextStyle(
                        color: Color(0xff4141A4),
                      ),
                      ),
                      SizedBox(height: 20,),
                      Text('Email Address',
                      style: titleTextStyle,),
                      SizedBox(height: 8,),
                      TextFormField(
                        controller: emailController,
                    onChanged: (value) {
                      bool isValid = EmailValidator.validate(value);
                      if (isValid) {
                        setState(() {
                          isEmailValid = true;
                        });
                      } else {
                        setState(() {
                          isEmailValid = false;
                        });
                      }
                    }, 
                        decoration: 
                        InputDecoration(
                          fillColor: Color(0xffF1F0F5),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(color: isEmailValid ? Color(0xff4141a4) : Color(0xffFF5B5B)),
                          ),
                      ),
                      style: TextStyle(
                        color: isEmailValid ? Color(0xff4141a4) : Color(0xffFF5B5B),
                      ),
                      ),
                      SizedBox(height: 20,),
                      Text('Password',
                      style: titleTextStyle,),
                      SizedBox(height: 8,),
                      TextFormField(
                        obscureText: true,
                        decoration: 
                        InputDecoration(
                          fillColor: Color(0xffF1F0F5),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(color: Color(0xff4141A4)),
                          ),
                      ),
                       style: TextStyle(
                        color: Color(0xff4141A4),
                      ),
                      ),
                      SizedBox(height: 20,),
                      Text('Your Goals',
                      style: titleTextStyle,),
                      SizedBox(height: 8,),
                      TextFormField(
                        decoration: 
                        InputDecoration(
                          fillColor: Color(0xffF1F0F5),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(color: Color(0xff4141A4)),
                          ),
                      ),
                       style: TextStyle(
                        color: Color(0xff4141A4),
                      ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40,),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top:30),
                        child: Container(
                          width: 450,
                          height: 45,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Color(0xff4141A4),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              )
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignInPage()
                                    ),
                              );
                            }, 
                            child: Text(
                              'Sign Up',
                              style: GoogleFonts.poppins(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Center(
                      child: TextButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>
                          (Color(0xffB3B5C4)),
                        ),
                        onPressed: () { 
                          Navigator.push(
                                context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignUpPage()
                                    ),
                              );
                        },
                        child: Text('Create New Account',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),),
                      ),
                    ),
                ]  
              )  
            ),
          ],
        ),
      ),
   );
  }
}