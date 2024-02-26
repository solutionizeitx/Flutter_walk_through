import 'package:flutter/material.dart';
import 'package:flutter_walk_through/src/page/login_screen.dart';

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
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const LoginScreen()));
  }
}
