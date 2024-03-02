// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_walk_through/src/page/login_screen.dart';
import 'package:flutter_walk_through/src/res/pref_data.dart';
import 'package:flutter_walk_through/src/widget/snack_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  void initState() {
    data();
    super.initState();
  }

  String? domain;

  data() async {
    final prefs = await SharedPreferences.getInstance();
    domain = prefs.getString(PrefResources.DOMAIN);
    setState(() {});
  }

  final TextEditingController domaincontroller = TextEditingController(text: "http://asd.com");

  @override
  Widget build(BuildContext context) {
    data();
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
          InkWell(
              onTap: () {
                alertBox(context);
              },
              child: Text(domain ?? domaincontroller.text)),
          SizedBox(height: MediaQuery.of(context).size.height * 0.43),
          GestureDetector(
            onTap: () async {
              SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
              sharedPreferences.clear();
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => LoginScreen()));
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

  alertBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        content: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: TextFormField(
            controller: domaincontroller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
        actions: [
          ElevatedButton(
              onPressed: () async {
                final prefs = await SharedPreferences.getInstance();
                final value = await prefs.setString(PrefResources.DOMAIN, domaincontroller.text);
                if (value == true) {
                  Navigator.pop(context);
                } else {
                  showSnackBar(context, "Fill the value");
                }
              },
              child: const Icon(Icons.check))
        ],
      ),
    );
  }
}
