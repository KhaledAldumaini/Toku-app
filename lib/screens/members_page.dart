import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members'),
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Category(name: 'Khaled', color: 0xffffcfbf)
        ],
      ),
    );
  }
}
