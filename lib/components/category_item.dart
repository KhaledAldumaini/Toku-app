import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({super.key, required this.name, required this.color, this.onTap});
  String name;
  int color;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 16),
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(color),
        ),
        height: 70,
        width: double.infinity,
        child: Text(name, style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
