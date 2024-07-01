// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:farmlancer/notifications/data_permission.dart';
import 'package:farmlancer/notifications/loc_permission.dart';
import 'package:farmlancer/notifications/not_permission.dart';
import 'package:farmlancer/pages/cnf_pass.dart';
import 'package:farmlancer/pages/home_menu.dart';
import 'package:farmlancer/pages/main_page.dart';
import 'package:farmlancer/pages/profile_page.dart';

import 'package:farmlancer/screens/spalsh_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
       
        '/cnfpass'  : (context) => ConfPass(),
        '/homepage' : (context)=>HomePage(),
        '/mainpage' : (context) => MainPage(),
        '/profilepage' : (context)=>ProfilePage(),
      },
    );
  }
}
