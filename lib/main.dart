import 'package:flutter/material.dart';
import 'package:tiktok_clone/bottom_nav_bar.dart';
import 'package:tiktok_clone/pages/home_page.dart';
import 'package:tiktok_clone/widgets/home/home_header.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            HomeScreen(),
            BottomNavigation(),
            homeHeader(),
          ],
        ),
      ),
    );
  }
}
