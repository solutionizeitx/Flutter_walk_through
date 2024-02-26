import 'package:flutter/material.dart';
import 'package:flutter_walk_through/src/page/login_screen.dart';
import 'package:flutter_walk_through/src/widget/snack_bar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        backgroundColor: Colors.red[100],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const SizedBox(height: 189),
            ListTile(
              title: Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black38), color: Colors.white),
                child: const Center(
                  child: Text("Model Centered"),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black38), color: Colors.white),
                child: const Center(
                  child: Text("Model from Top"),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black38), color: Colors.white),
                child: const Center(
                  child: Text("Model from bottom"),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black38), color: Colors.white),
                child: const Center(
                  child: Text("Snack bar"),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                showSnackBar(context, "SnackBar Message");
              },
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          const Text("Change current server URL"),
          const SizedBox(height: 5),
          const Text("http://asd.com"),
          SizedBox(height: MediaQuery.of(context).size.height * 0.43),
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
