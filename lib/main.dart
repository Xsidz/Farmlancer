// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:farmlancer/notifications/data_permission.dart';
import 'package:farmlancer/notifications/loc_permission.dart';
import 'package:farmlancer/notifications/not_permission.dart';
import 'package:farmlancer/pages/cnf_pass.dart';
import 'package:farmlancer/pages/home_menu.dart';
import 'package:farmlancer/pages/signin_page.dart';
import 'package:farmlancer/pages/signup_page.dart';
import 'package:farmlancer/screens/spalsh_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/main' : (context) => MyApp() ,
        '/location' : (context) => LocPermission(),
        '/notification' : (context) => NotPermission(),
        '/data' : (context) => Data(),
        '/signup' : (context) => SignupPage(),
        '/signin' : (context) => SigninPage(),
        '/cnfpass'  : (context) => ConfPass(),
        '/homepage' : (context)=>HomePage(),
      },
    );
  }
}
