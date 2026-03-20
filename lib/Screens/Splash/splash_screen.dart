import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/login/login_screen.dart';
import 'package:instagram_clone/Widgets/ui_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imageUrl: 'insta_logo.png'),
            SizedBox(height: 10),
            UiHelper.CustomImage(imageUrl: 'logo.png'),
          ],
        ),
      ),
    );
  }
}
