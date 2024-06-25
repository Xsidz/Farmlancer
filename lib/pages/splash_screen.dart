// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:farmlancer/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';

// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 2000), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('FarmLancer',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 40,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold)),
            Text('by MHTECHIN Technologies',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  // Replace this with your actual home screen widget.
  @override
  Widget build(BuildContext context) {
    return LoginPage();
  }
}
