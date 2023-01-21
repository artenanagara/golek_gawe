// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:golek_gawe/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top:10, left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sign Up',
              style: titleTextStyle,
              ),
              SizedBox(height: 2,),
              Text('Build Your Career',
              style: subTtitleTextStyle,),
              SizedBox(height: 40,),
              Center(
                child: Column(
                  children: [
                    Image.asset('assets/images/upload_pic.png', width: 120,),
                  ],
                ),
              ),
            ]  
          )  
        ),
      ),
   );
  }
}