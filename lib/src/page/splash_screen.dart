// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_walk_through/src/page/botton_nav_screen.dart';
import 'package:flutter_walk_through/src/page/login_screen.dart';
import 'package:flutter_walk_through/src/res/pref_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      getSavedData(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[100],
        appBar: AppBar(
          backgroundColor: Colors.red[100],
        ),
        body: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text("SPLASH count down 3 sec"),
              )
            ],
          ),
        ));
  }

  Future<void> getSavedData(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    final username = prefs.getString(PrefResources.Username);
    final password = prefs.getString(PrefResources.Password);
    if (password!.isNotEmpty) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const BottomNavigationScreen()));
    } else if (username!.isNotEmpty) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const BottomNavigationScreen()));
    } else {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen()));
    }
  }
}
