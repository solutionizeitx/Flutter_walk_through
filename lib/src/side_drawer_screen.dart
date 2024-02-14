import 'package:flutter/material.dart';
import 'package:flutter_walk_through/src/botton_nav_screen.dart';
import 'package:flutter_walk_through/src/widget_show.dart';
import 'package:flutter_walk_through/src/snack_bar.dart';

class SideDrawerScreen extends StatelessWidget {
  const SideDrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        backgroundColor: Colors.red[100],
        leading: const SizedBox(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const BottomNavigationScreen()));
                    },
                    child: Container(
                      width: 120,
                      height: 80,
                      decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black38), color: Colors.white),
                      child: const Center(
                        child: Text("Close"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const DataShow(data: 1)));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black38), color: Colors.white),
                  child: const Center(
                    child: Text("Model Centered"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const DataShow(data: 2)));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black38), color: Colors.white),
                  child: const Center(
                    child: Text("Model from Top"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const DataShow(data: 3)));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black38), color: Colors.white),
                  child: const Center(
                    child: Text("Model from botton"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const SnackBarScreen()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black38), color: Colors.white),
                  child: const Center(
                    child: Text("Sanck bar"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
