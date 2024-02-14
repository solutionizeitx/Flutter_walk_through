import 'package:flutter/material.dart';
import 'package:flutter_walk_through/src/botton_nav_screen.dart';

import 'side_drawer_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        backgroundColor: Colors.red[100],
        leading: const SizedBox(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const SideDrawerScreen()));
                  },
                  child: Container(
                    width: 120,
                    height: 80,
                    decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black38), color: Colors.white),
                    child: const Center(
                      child: Text("Side drawer"),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.15),
          const Text("login page"),
          const SizedBox(height: 5),
          Container(
            width: MediaQuery.of(context).size.width * 0.87,
            height: 50,
            decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black38), color: Colors.white),
            child: const Center(
              child: Text("User name"),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            width: MediaQuery.of(context).size.width * 0.87,
            height: 50,
            decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black38), color: Colors.white),
            child: const Center(
              child: Text("Password"),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.07),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const BottomNavigationScreen()));
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.6,
              height: 80,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), border: Border.all(width: 1, color: Colors.black38), color: Colors.black),
              child: const Center(
                child: Text(
                  "Login and set user \ndetails in storage",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.07),
          GestureDetector(
            child: const Text("Skip", style: TextStyle(color: Colors.red)),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const BottomNavigationScreen()));
            },
          ),
        ],
      ),
    );
  }
}
