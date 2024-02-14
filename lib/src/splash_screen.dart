import 'package:flutter/material.dart';
import 'package:flutter_walk_through/src/side_drawer_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[100],
        appBar: AppBar(
          backgroundColor: Colors.red[100],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const SideDrawerScreen()));
                      },
                      child: Container(
                        width: 120,
                        height: 80,
                        decoration: BoxDecoration(border: Border.all(width: 0.5, color: Colors.black38), color: Colors.white),
                        child: const Center(
                          child: Text("Side drawer"),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.23),
                const Align(
                  alignment: Alignment.center,
                  child: Text("SPLASH count down 3 sec"),
                )
              ],
            ),
          ),
        ));
  }
}
