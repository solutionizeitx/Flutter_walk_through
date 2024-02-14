import 'package:flutter/material.dart';
import 'package:flutter_walk_through/src/login_screen.dart';
import 'package:flutter_walk_through/src/side_drawer_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          const Text("Change current server URL"),
          const SizedBox(height: 5),
          const Text("http://asd.com"),
          SizedBox(height: MediaQuery.of(context).size.height * 0.37),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const LoginScreen()));
            },
            child: Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black38), color: Colors.white),
              child: const Center(
                child: Text("logout", style: TextStyle(color: Colors.red)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
