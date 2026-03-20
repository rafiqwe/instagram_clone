import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/home/home_screen.dart';
import 'package:instagram_clone/Screens/notification/notification_screen.dart';
import 'package:instagram_clone/Screens/post/post_screen.dart';
import 'package:instagram_clone/Screens/profile/profile_screen.dart';
import 'package:instagram_clone/Screens/search/search_screen.dart';
import 'package:instagram_clone/Widgets/ui_helper.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;

  List<Widget> page = [
    HomeScreen(),
    SearchScreen(),
    PostScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.plus_app),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart), label: ''),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: '',
          ),
        ],
      ),
      body: IndexedStack(children: page, index: currentIndex),
    );
  }
}
