// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:golek_gawe/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 0, left: 24, right: 24,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
                'Sign In',
              style: titleTextStyle,
              ),
              SizedBox(height: 2,),
              Text(
                'Build Your Career',
                style: subTtitleTextStyle,
              ),
              SizedBox(height: 40,),
              Center(
                child: Column(
                  children: [
                    Image.asset('assets/images/illustration_one.png', width: 300,),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Column( 
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Email Address',
                  style: titleTextStyle,
                  ),
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
                      borderSide: BorderSide.none,),
                      hintText: 'Your Email Address',
                  ),)
                ],
              ),
              SizedBox(height: 16,),
              Column( 
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Password',
                  style: titleTextStyle,
                  ),
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
                      borderSide: BorderSide.none,),
                      hintText: 'Your Password',
                  ),)
                ],
              ),
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
                          'Sign In',
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
                      
                    },
                    child: Text('Create New Account',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),),
                  ),
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}
