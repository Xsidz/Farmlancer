// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:farmlancer/pages/filters/Support_page.dart';
import 'package:farmlancer/pages/filters/on_field.dart';
import 'package:farmlancer/pages/filters/trans_port.dart';
import 'package:farmlancer/pages/profile_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

 
 

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("नमस्ते ! Rameshwar"),
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: [
            Material(
              child: Container(
                height: 70,
                color: Colors.white,
                child: TabBar(
                  physics: ClampingScrollPhysics(),
                  padding:
                      EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 0),
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  automaticIndicatorColorAdjustment: true,
                  tabs: [
                    Tab(
                      child: Container(
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            border: Border.all(color: Colors.green, width: 1),
                            color: Colors.green),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("On Field"),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.green, width: 1),
                            color: Colors.green),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Transport"),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.green, width: 1),
                            color: Colors.green),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Support"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                OnField(),
                TransPort(),
                Support(),
              ]),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ElevatedButton(child: Text('Profile'),onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));}),
            )
          ],
        ),
       
      ),
    );
  }
}