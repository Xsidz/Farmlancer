// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  bool? _ischecked = false;
  bool _obscureText = true;
  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
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
                    'Sign in to your account',
                    style: TextStyle(
                        color: const Color.fromRGBO(0, 70, 67, 1),
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
                          "Mobile Number",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(8)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(8)),
                              hintText: "Enter Your Mobile Number",
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(196, 196, 196, 1))),
                        ),
                      ],
                    ),
                  ),

                  //phone number
                  const SizedBox(
                    height: 30,
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
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(8)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(8)),
                              hintText: "Enter Your password",
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: _togglePasswordVisibility,
                              ),
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(196, 196, 196, 1))),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _ischecked,
                        onChanged: (newBool) {
                          setState(
                            () {
                              _ischecked = newBool;
                            },
                          );
                        },
                        activeColor: Colors.blue,
                      ),
                      // Text("I’ve read and agreed to User Agreement\n", style: TextStyle(color: const Color.fromRGBO(117, 117, 117, 1)),)

                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: RichText(
                              // ignore: duplicate_ignore
                              // ignore: prefer_const_constructors
                              text: TextSpan(
                                text: 'I’ve read and agreed to',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(117, 117, 117, 1),
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' User Agreement',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      color: const Color.fromRGBO(0, 70, 67, 1),
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            child: RichText(
                              // ignore: duplicate_ignore
                              // ignore: prefer_const_constructors
                              text: TextSpan(
                                text: 'and',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(117, 117, 117, 1),
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' Privacy Policy',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      color: const Color.fromRGBO(0, 70, 67, 1),
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),

                  //sign in button
                  const SizedBox(
                    height: 30,
                  ),

                  ElevatedButton(
                      onPressed: () => {},
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
                      GestureDetector(
                        child: Image.asset(
                          'lib/assets/1.png',
                          height: 40,
                        ),
                        onTap: (){},
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
                      Text("Don’t have an account?", style: TextStyle(color: const Color.fromRGBO(117, 117, 117, 1)),),
                      const SizedBox(
                        width: 8,
                      ),
              
                      GestureDetector(onTap: (){
                        Navigator.pushNamed(context, '/signup');
                      },
                      child:Text("Create Account", style: TextStyle(color: const Color.fromRGBO(0, 70, 67, 1), fontWeight: FontWeight.w600))),
                      
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
