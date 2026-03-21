import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/notification/following_screen.dart';
import 'package:instagram_clone/Screens/notification/youtap_screen.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 25,
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                child: Text(
                  'Following',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Tab(
                child: Text(
                  'You',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [FollowingScreen(), YouTapScreen()]),
      ),
    );
  }
}
