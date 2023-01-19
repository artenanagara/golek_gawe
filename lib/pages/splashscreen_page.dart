// ignore_for_file: prefer_const_constructors, unused_import

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:golek_gawe/pages/onboarding_page.dart';
import 'package:google_fonts/google_fonts.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState(){
    super.initState();

    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnboardingPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4141a4,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png', height: 72, width: 59,),
            SizedBox(height: 32,),
            Text(
              'Golek Gawe',
            style: GoogleFonts.poppins(
              color: Color(0xffffffff),
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),),
          ],
        )
      ),
    );
  } 
}