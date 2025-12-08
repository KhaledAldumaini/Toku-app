import 'package:flutter/material.dart';
import 'package:toku/screens/HomePage.dart';

void main() => runApp(const Toku());

class Toku extends StatelessWidget {
  const Toku({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Homepage());
  }
}
