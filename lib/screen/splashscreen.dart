import 'dart:async';
import 'package:flutter/material.dart';
import '../widget/bottomnav.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),
          Container(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Animal Pedia',
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
