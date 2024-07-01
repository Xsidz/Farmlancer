// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class SignupPage extends StatefulWidget {
  final Function()?onTap;
  
  const SignupPage({super.key, required this.onTap});

  @override
  State<SignupPage> createState() => _SignupPageState();
}


class _SignupPageState extends State<SignupPage> {
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  final _cnfpasswordcontroller = TextEditingController();
  
  Future SignUp() async {
    showDialog(context: context, builder: (context){
            return const Center(child: CircularProgressIndicator(),);
         });
    if(_passwordcontroller.text == _cnfpasswordcontroller.text)
    {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailcontroller.text.trim(),
        password: _passwordcontroller.text.trim());
    }else{}
     Navigator.pop(context);
  }

  @override
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  RichText(
                    // ignore: duplicate_ignore
                    // ignore: prefer_const_constructors
                    text: TextSpan(
                      text: 'FarmLancer\n',
                      style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontStyle: FontStyle.italic),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'by MHTECHIN Technologies',
                          style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Create New Account

                  const SizedBox(
                    height: 30,
                  ),

                  Text(
                    'Create New Account',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),

                  //email

                  const SizedBox(
                    height: 30,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        TextField(
                          controller: _emailcontroller,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(8)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(8)),
                              hintText: "Enter your Email",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(196, 196, 196, 1))),
                        ),
                      ],
                    ),
                  ),

                  //phone number
                  const SizedBox(
                    height: 20,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Password",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        TextField(
                          controller: _passwordcontroller,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(8)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(8)),
                              hintText: "Enter Your password",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(196, 196, 196, 1))),
                        ),
                      ],
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Confirm Password",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        TextField(
                          controller: _cnfpasswordcontroller,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(8)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(8)),
                              hintText: "Enter Your Confirm Password",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(196, 196, 196, 1))),
                        ),
                      ],
                    ),
                  ),

                  //sign in button
                  const SizedBox(
                    height: 30,
                  ),

                  ElevatedButton(
                     onPressed: () => {SignUp()},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 30.0),
                          minimumSize: Size(312, 48)),
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.white),
                      )),

                  //or continue with
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "other way to sign up",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(117, 117, 117, 1)),
                  ),

                  //google sign-in
                  const SizedBox(
                    height: 30,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'lib/assets/1.png',
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  //already member ? signin
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                            color: const Color.fromRGBO(117, 117, 117, 1)),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      GestureDetector(
                          onTap:  widget.onTap,
                          child: Text("Back to Sign In",
                              style: TextStyle(
                                  color: const Color.fromRGBO(0, 70, 67, 1),
                                  fontWeight: FontWeight.w600))),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
