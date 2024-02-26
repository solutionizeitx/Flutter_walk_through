import 'package:flutter/material.dart';
import 'package:flutter_walk_through/src/widget/snack_bar.dart';

class ApiScreen extends StatelessWidget {
  const ApiScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.07),
            const Text("App storage data : ", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            const Text("Current server URL -string- "),
            const Text("http://asd.com"),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            const Text("user detalis - object - { userid:1,\ntoken:123}"),
            const SizedBox(height: 10),
            const Text("cached key:1234876"),
          ],
        ),
      ),
    );
  }
}
