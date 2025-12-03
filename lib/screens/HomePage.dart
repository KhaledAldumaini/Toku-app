import 'package:flutter/material.dart';
import 'package:toku/screens/members_page.dart';

import '../components/category_item.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Toku',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: Color(0xff463228),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Category(
            name: 'Members',
            color: 0xffDEB887,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                    return FamilyMembersPage();
                  }) );
            },
          ),
          Category(name: 'Family Members', color: 0xffDEB887,
          onTap: (){
            print('You are welcome');
          },),
          Category(name: 'Colors', color: 0xffDEB887),
          Category(name: 'Phrases', color: 0xffDEB887),
        ],
      ),
    );
  }
}
