import 'package:flutter/material.dart';

class Ask extends StatelessWidget {
  const Ask({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.question_answer, size: 100, color: Colors.brown),
          Text('Ask', style: TextStyle(fontSize: 40)),
        ],
      ),
    );
  }
}
