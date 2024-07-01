// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:farmlancer/pages/main_page.dart';
import 'package:farmlancer/pages/signin_page.dart';
import 'package:flutter/material.dart';

class Data extends StatelessWidget {
  const Data({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pushNamed(context, '/notification');
          },
        ),
      ),
      body: Center(
        child: Container(
          width: 316,
          height: 487,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF51FC4E),
                Color(0xFFB1FEAF),
                Color(0xFFFFFFFF),
                Color(0xFFFFFFFF),
              ],
              stops: [
                0.0,
                0.3049,
                0.555,
                1.0,
              ],
            ),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Image.asset(
                      'lib/assets/spalsh3.png',
                      height: 110,
                      width: 147,
                      // fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 70, left: 30),
                      child: Image.asset(
                        'lib/assets/data.png',
                        height: 87,
                        width: 87,
                        // fit: BoxFit.cover,
                      ))
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Access of Data',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'Please enable access the data to\n',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: '  receive updates and reminders')
                        ]),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(250, 44),
                    backgroundColor: const Color.fromRGBO(74, 181, 90, 1)),
                child: Text(
                  "Allow",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage()));
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(250, 44),
                      backgroundColor: Colors.white,
                      side: BorderSide(
                          color: const Color.fromRGBO(74, 181, 90, 1))),
                  child: Text(
                    "Skip for Now",
                    style:
                        TextStyle(color: const Color.fromRGBO(74, 181, 90, 1)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
