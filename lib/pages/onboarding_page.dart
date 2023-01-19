// ignore_for_file: prefer_const_constructors, duplicate_ignore, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
              // ignore: prefer_const_constructors
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/bg.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 70,
              right: 30,
              left: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Text(
                    'Build Your Next \nFuture Career Like \na Master',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '18,000 jobs available',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 500),
                    child: Container(
                      width: 200,
                      height: 45,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xffFFFFFF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(66))),
                        onPressed: () {},
                        child: Text(
                          'Get Started',
                          style: GoogleFonts.poppins(
                            color: Color(0xff4141A4),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Container(
                      width: 200,
                      height: 45,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OnboardingPage()),
                          );
                        },
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(
                              color: Colors.white,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(66))),
                        child: Text(
                          'Sign In',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
