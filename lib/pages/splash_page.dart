import 'dart:async';

import 'package:flutter/material.dart';
import 'package:future_jobs/pages/started_page.dart'; 
import 'package:google_fonts/google_fonts.dart';
import 'package:future_jobs/pages/started_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => GetStartedPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4141A4),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                'assets/logo.png',
                height: 76,
                width: 59,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'FUTUREJOBS',
              style: GoogleFonts.poppins(
                color: Color(0xffFFFFFF),
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
