import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Icon(Icons.settings, size: 100, color: Colors.brown),
          Text('Settings', style: TextStyle(fontSize: 40)),
        ],
      ),
    );
  }
}
