import 'package:flutter/material.dart';
import 'package:flutter_walk_through/src/page/api_screen.dart';
import 'package:flutter_walk_through/src/page/home_screen.dart';
import 'package:flutter_walk_through/src/page/settings_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const HomeScreen(),
      const ApiScreen(),
      const SettingsScreen(),
    ];

    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(border: Border.all(width: 0.9, color: Colors.black38), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 0;
              });
            },
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(200), border: Border.all(width: 0.9, color: Colors.black38), color: Colors.white),
              child: const Center(
                child: Text(
                  "Home",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 1;
              });
            },
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(200), border: Border.all(width: 0.9, color: Colors.black38), color: Colors.white),
              child: const Center(
                child: Text(
                  "Api Call",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 2;
              });
            },
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(200), border: Border.all(width: 0.9, color: Colors.black38), color: Colors.white),
              child: const Center(
                child: Text(
                  "Settings",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
