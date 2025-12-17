
import 'package:flutter/material.dart';
import 'about.dart';
import 'ask_page.dart';
import 'search_page.dart';
import 'settings_page.dart';

class IndexedPage extends StatefulWidget {
  const IndexedPage({super.key, required this.index});
  final int index;
  @override
  State<IndexedPage> createState() => _IndexedPageState(index);
}

class _IndexedPageState extends State<IndexedPage> {
  _IndexedPageState(this._bottomNavbar);
  int _bottomNavbar;

  String _gettitle(int index) {
    switch (index) {
      case 0:
        return 'About';
      case 1:
        return 'Ask';
      case 2:
        return 'Search';
      case 3:
        return 'Settings';
      default:
        return 'Untitled';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          _gettitle(_bottomNavbar),
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.brown,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
        ),
      ),
      body: IndexedStack(
        index: _bottomNavbar,
        children: [About(), Ask(), Search(), Settings()],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.brown),

        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          child: BottomNavigationBar(
            currentIndex: _bottomNavbar,
            onTap: (index) {
              setState(() {
                _bottomNavbar = index;
              });
            },
            unselectedItemColor: Colors.grey[600],
            selectedItemColor: Colors.brown[800],
            items: [
              BottomNavigationBarItem(
                label: 'About',
                icon: Icon(Icons.question_mark),
              ),
              BottomNavigationBarItem(
                label: 'Ask',
                icon: Icon(Icons.question_answer),
              ),
              BottomNavigationBarItem(
                label: 'Search',
                icon: Icon(Icons.search_rounded),
              ),
              BottomNavigationBarItem(
                label: 'Settings',
                icon: Icon(Icons.settings),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
