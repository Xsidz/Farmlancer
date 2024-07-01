import 'package:farmlancer/pages/signin_page.dart';
import 'package:farmlancer/pages/signup_page.dart';
import 'package:flutter/material.dart';


class LogOrReg extends StatefulWidget {
  const LogOrReg({super.key});

  @override
  State<LogOrReg> createState() => _LogOrRegState();
}

class _LogOrRegState extends State<LogOrReg> {
    bool showLogin = true;
    void togglePages()
    {
      setState(() {
        showLogin = !showLogin;
      });
    }



  @override
  Widget build(BuildContext context) {
    if(showLogin)
    {
      return SigninPage(onTap: togglePages);
    }else{
      return SignupPage(onTap: togglePages,);
    }

  }
}