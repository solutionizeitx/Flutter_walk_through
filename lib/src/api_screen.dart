import 'package:flutter/material.dart';
import 'package:flutter_walk_through/src/side_drawer_screen.dart';

class ApiScreen extends StatelessWidget {
  const ApiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        backgroundColor: Colors.red[100],
        leading: const SizedBox(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
