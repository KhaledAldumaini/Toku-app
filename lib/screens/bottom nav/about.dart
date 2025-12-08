import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.question_mark, size: 100, color: Colors.brown),
          Text('About', style: TextStyle(fontSize: 40)),
        ],
      ),
    );
  }
}
