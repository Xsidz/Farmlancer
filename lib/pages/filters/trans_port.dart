// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';



class TransPort extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        body: TaskList(),
      ),
    );
  }
}

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TaskItem(
                
                title: "Driving",
                note: "Note : Before 2 Days need to complete.",
                budget: "Budget : Rs 300",
                deadline: "Deadline : 13 June 24",
                onPressed: () {
                  // Handle button press
                },
                
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
              TaskItem(
                
                title: "Driving",
                note: "Note : Before 2 Days need to complete.",
                budget: "Budget : Rs 300",
                deadline: "Deadline : 13 June 24",
                onPressed: () {
                  // Handle button press
                },
                
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
              TaskItem(
                
                title: "Driving",
                note: "Note : Before 2 Days need to complete.",
                budget: "Budget : Rs 300",
                deadline: "Deadline : 13 June 24",
                onPressed: () {
                  // Handle button press
                },
                
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
              TaskItem(
                
                title: "Driving",
                note: "Note : Before 2 Days need to complete.",
                budget: "Budget : Rs 300",
                deadline: "Deadline : 13 June 24",
                onPressed: () {
                  // Handle button press
                },
                
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
              TaskItem(
                
                title: "Driving",
                note: "Note : Before 2 Days need to complete.",
                budget: "Budget : Rs 300",
                deadline: "Deadline : 13 June 24",
                onPressed: () {
                  // Handle button press
                },
                
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
              TaskItem(
                
                title: "Driving",
                note: "Note : Before 2 Days need to complete.",
                budget: "Budget : Rs 300",
                deadline: "Deadline : 13 June 24",
                onPressed: () {
                  // Handle button press
                },
                
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
              TaskItem(
                title: "Plowing and Tilling",
                note: "Note : Before 2 Days need to complete.",
                budget: "Budget : Rs 300",
                deadline: "Deadline : 13 June 24",
                onPressed: () {
                  // Handle button press
                },
                
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
              // Add more TaskItem widgets as needed
            ],
          ),
        ),
      ],
    );
  }
}

class TaskItem extends StatelessWidget {
  final String title;
  final String note;
  final String budget;
  final String deadline;
  final VoidCallback onPressed;

  const TaskItem({
    Key? key,
    required this.title,
    required this.note,
    required this.budget,
    required this.deadline,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  note,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      budget,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      deadline,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        ElevatedButton(
          onPressed: onPressed,
          child: Text("Apply"),
        ),
      ],
    );
  }
}
