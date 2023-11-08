import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xquare/screen/apply/apply_screen.dart';
import 'package:xquare/screen/feed/feed_screen.dart';
import 'package:xquare/screen/home/home_screen.dart';
import 'package:xquare/screen/time/time_screen.dart';
import 'package:xquare/screen/user/user_screen.dart';

class NavWidget extends StatefulWidget {
  const NavWidget({Key? key}) : super(key: key);

  @override
  State<NavWidget> createState() => _NavWidgetState();
}

class _NavWidgetState extends State<NavWidget> {
  int _selectedIndex = 0;

  final List<Widget> _navIndex = [
    HomeScreen(),
    TimeScreen(),
    FeedScreen(),
    ApplyScreen(),
    UserScreen(),
  ];

  void _onNavTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _navIndex.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFF9F7FA),
        elevation: 0,
        unselectedItemColor: Color(0xFFDBD7E0),
        unselectedLabelStyle: TextStyle(
          color: Color(0xFFDBD7E0),
          fontSize: 12,
        ),
        selectedItemColor: Color(0xFF161616),
        selectedLabelStyle: TextStyle(
          color: Color(0xFF161616),
          fontSize: 12,
        ),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_favorites_fill),
            label: '일정',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_text_fill),
            label: '피드',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.checkmark_alt_circle_fill),
            label: '신청',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_grid_2x2_fill),
            label: '전체',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onNavTapped,
      ),
    );
  }
}
