// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(items: [
         BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.cloud,color: Colors.black), label: 'Weather'),
            BottomNavigationBarItem(icon: Icon(Icons.upload_rounded,color: Colors.black), label: "Add"),
            BottomNavigationBarItem(icon: Icon(Icons.newspaper,color: Colors.black), label: "News"),
            BottomNavigationBarItem(icon: Icon(Icons.person , color: Colors.black,), label: "Profile")

      ],
      
        
      );
    
  }
}


