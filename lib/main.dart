import 'package:flutter/material.dart';

void main() {
  runApp(const Toku());
}

class Toku extends StatefulWidget {
  const Toku({super.key});

  @override
  State<Toku> createState() => _TokuState();
}

class _TokuState extends State<Toku> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Toku',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          backgroundColor: Color(0xff463228),
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 16),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffDEB887),
              ),
              height: 70,
              width: double.infinity,
              child: Text('Members', style: TextStyle(fontSize: 25)),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 16),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffDEB887),
              ),
              height: 70,
              width: double.infinity,
              child: Text('Family Members', style: TextStyle(fontSize: 25)),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 16),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffDEB887),
              ),
              height: 70,
              width: double.infinity,
              child: Text('Colors', style: TextStyle(fontSize: 25)),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 16),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffDEB887),
              ),
              height: 70,
              width: double.infinity,
              child: Text('Phrases', style: TextStyle(fontSize: 25)),
            ),
          ],
        ),
      ),
    );
  }
}
