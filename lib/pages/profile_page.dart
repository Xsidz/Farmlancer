// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: CircleAvatar(
                  radius: 38,
                  backgroundColor: Colors.grey,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rameshwar Mhaske",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  Text("rameshwar@gmail.com",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                  Text("08xxxxxxxxx",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400))
                ],
              ),
              const SizedBox(
                width: 60,
              ),
              GestureDetector(
                child: Image.asset('lib/assets/forward.jpg'),
                onTap: () {},
              )
            ],
          ),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20),
                    child: Text(
                      'Settings',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10, left: 20),
                child: Row(
                  children: [
                    Image.asset('lib/assets/lock.jpg'),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Privacy Policy',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(117, 117, 117, 1)),
                      ),
                    ),
                    const SizedBox(
                      width: 188,
                    ),
                    GestureDetector(
                      child: Image.asset('lib/assets/forward.jpg'),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10, left: 20),
                child: Row(
                  children: [
                    Image.asset('lib/assets/policy.jpg'),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Cancellation Policy',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(117, 117, 117, 1)),
                      ),
                    ),
                    const SizedBox(
                      width: 152,
                    ),
                    GestureDetector(
                      child: Image.asset('lib/assets/forward.jpg'),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10, left: 20),
                child: Row(
                  children: [
                    Image.asset('lib/assets/disclaimer.jpg'),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Disclaimer',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(117, 117, 117, 1)),
                      ),
                    ),
                    const SizedBox(
                      width: 213,
                    ),
                    GestureDetector(
                      child: Image.asset('lib/assets/forward.jpg'),
                      onTap: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20),
                    child: Text(
                      'Support',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10, left: 20),
                child: Row(
                  children: [
                    Image.asset('lib/assets/bell.jpg'),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Term & Condition',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(117, 117, 117, 1)),
                      ),
                    ),
                    const SizedBox(
                      width: 164,
                    ),
                    GestureDetector(
                      child: Image.asset('lib/assets/forward.jpg'),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10, left: 20),
                child: Row(
                  children: [
                    Image.asset('lib/assets/policy.jpg'),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Contact US',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(117, 117, 117, 1)),
                      ),
                    ),
                    const SizedBox(
                      width: 208,
                    ),
                    GestureDetector(
                      child: Image.asset('lib/assets/forward.jpg'),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10, left: 20),
                child: Row(
                  children: [
                    Image.asset('lib/assets/policy.jpg'),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'About US',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(117, 117, 117, 1)),
                      ),
                    ),
                    const SizedBox(
                      width: 222,
                    ),
                    GestureDetector(
                      child: Image.asset('lib/assets/forward.jpg'),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10, left: 20),
                child: Row(
                  children: [
                    Image.asset('lib/assets/policy.jpg'),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Job Posting Account',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(117, 117, 117, 1)),
                      ),
                    ),
                    const SizedBox(
                      width: 140,
                    ),
                    GestureDetector(
                      child: Image.asset('lib/assets/forward.jpg'),
                      onTap: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: Text(
                    "Get a Job",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ),
              ),
               const SizedBox(width: 100,),

              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: ElevatedButton(
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: Text(
                    "Sign out",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ),
              ),
              
            ],
          )
        ],
      ),
    );
  }
}
