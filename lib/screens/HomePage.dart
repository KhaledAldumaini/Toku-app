import 'package:flutter/material.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_member_page.dart';
import 'package:toku/screens/nembers_page.dart';
import 'package:toku/screens/phrases_page.dart';
import '../components/category_item.dart';
import 'bottom nav/indexed_page.dart';

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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
        ),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.menu_sharp),
            iconColor: Colors.white,
            itemBuilder: (context) => [
              PopupMenuItem(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return IndexedPage(index: 0);
                      },
                    ),
                  );
                },
                child: Text('About', style: TextStyle(color: Colors.brown)),
              ),
              PopupMenuItem(
                child: Text('Ask', style: TextStyle(color: Colors.brown)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return IndexedPage(index: 1);
                      },
                    ),
                  );
                },
              ),
              PopupMenuItem(
                child: Text('Search', style: TextStyle(color: Colors.brown)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return IndexedPage(index: 2);
                      },
                    ),
                  );
                },
              ),
              PopupMenuItem(
                child: Text('Settings', style: TextStyle(color: Colors.brown)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return IndexedPage(index: 3);
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ],
        backgroundColor: Color(0xff463228),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Category(
            name: 'Numbers',
            color: 0xffDEB887,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const NumbersPage();
                  },
                ),
              );
            },
          ),
          Category(
            name: 'Family Members',
            color: 0xffDEB887,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const FamilyMemberPage();
                  },
                ),
              );
            },
          ),
          Category(
            name: 'Colors',
            color: 0xffDEB887,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ColorsPage();
                  },
                ),
              );
            },
          ),
          Category(
            name: 'Phrases',
            color: 0xffDEB887,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const PhrasesPage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
