


import 'package:farmlancer/pages/log_or_reg.dart';
import 'package:farmlancer/pages/profile_page.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ProfilePage();
            } else {
              return LogOrReg();
            }
          }),
    );
  }
}
