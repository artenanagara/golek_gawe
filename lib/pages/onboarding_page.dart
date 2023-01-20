// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80, right: 30, left: 30),
            child: Column( crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Build Your Next Future Career Like a Master',
                style: GoogleFonts.poppins(
                  color: Color(0xffffffff),
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                ),
                ),
                SizedBox(height: 20,),
                Text('18.000 Jobs Available',
                style: GoogleFonts.poppins(
                  color: Color(0xffffffff),
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top:550),
                    child: Container(
                      width: 450,
                      height: 45,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xffffffff),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          )
                        ),
                        onPressed: () {}, 
                        child: Text(
                          'Get Started',
                          style: GoogleFonts.poppins(
                            color: Color(0xff4141a4),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Container(
                      width: 450,
                      height: 45,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Color(0xffffffff), width: 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        onPressed: () {},
                         child: Text('Sign In',
                         style: GoogleFonts.poppins(
                          color: Color(0xffffffff),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                         ),)),
                    ),
                  ),
                )
              ],
            ),
          )
        ]
        )
    );
  }
}