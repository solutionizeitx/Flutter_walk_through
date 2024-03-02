// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_walk_through/src/page/botton_nav_screen.dart';
import 'package:flutter_walk_through/src/res/pref_data.dart';
import 'package:flutter_walk_through/src/widget/snack_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController userName = TextEditingController();
  final TextEditingController password = TextEditingController();

  final _formKey = GlobalKey<FormState>();

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
                showSimpleModalDialog(context);
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
                showModalTop(context);
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
                showBottomModal(context);
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
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.25),
                const Align(alignment: Alignment.centerLeft, child: Text("login page")),
                const SizedBox(height: 10),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    controller: userName,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: const EdgeInsets.only(top: 10, left: 10),
                        hintText: "User name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    controller: password,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: const EdgeInsets.only(top: 10, left: 10),
                        hintText: "password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: GestureDetector(
                    onTap: () async {
                      if (_formKey.currentState!.validate()) {
                        final prefs = await SharedPreferences.getInstance();
                        final value = await prefs.setString(PrefResources.Username, userName.text);
                        final value1 = await prefs.setString(PrefResources.Password, password.text);
                        final value3 = await prefs.setString(PrefResources.CACHDATA, "1526384");
                        log("value is ${PrefResources.Username} and ${PrefResources.Password}");
                        if (value || value1 || value3 == true) {
                          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const BottomNavigationScreen()));
                        } else {
                          showSnackBar(context, "Fill the value");
                        }
                      }
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Center(
                        child: Text(
                          "Login",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.17),
                GestureDetector(
                  child: const Text("Skip", style: TextStyle(color: Colors.red)),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const BottomNavigationScreen()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
