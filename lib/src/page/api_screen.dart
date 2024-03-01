// ignore_for_file: must_be_immutable

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_walk_through/src/res/pref_data.dart';
import 'package:flutter_walk_through/src/widget/snack_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiScreen extends StatefulWidget {
  const ApiScreen({super.key});

  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  @override
  void initState() {
    data();
    super.initState();
  }

  String? username;

  String? password;
  String? domain;

  data() async {
    final prefs = await SharedPreferences.getInstance();
    username = prefs.getString(PrefResources.Username);
    password = prefs.getString(PrefResources.Password);
    domain = prefs.getString(PrefResources.DOMAIN);
    setState(() {});
    log("message $username $password $domain");
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
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.07),
            const Text("App storage data : ", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            const Text("Current server URL -string- "),
            Text(domain.toString()),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            Text("user detalis - object - { UserName: ${username ?? "null"},\nPassword: ${password ?? "null"}}"),
            const SizedBox(height: 10),
            const Text("cached key:1234876"),
          ],
        ),
      ),
    );
  }
}
