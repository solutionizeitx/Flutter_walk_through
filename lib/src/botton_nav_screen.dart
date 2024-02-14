import 'package:flutter/material.dart';
import 'package:flutter_walk_through/src/api_screen.dart';
import 'package:flutter_walk_through/src/home_screen.dart';
import 'package:flutter_walk_through/src/settings_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int pageIndex = 0;

  final pages = [
    const HomeScreen(),
    const ApiScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(border: Border.all(width: 0.9, color: Colors.black38), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 0;
              });
            },
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(200), border: Border.all(width: 0.9, color: Colors.black38), color: Colors.white),
              child: const Center(
                child: Text(
                  "Home",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 1;
              });
            },
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(200), border: Border.all(width: 0.9, color: Colors.black38), color: Colors.white),
              child: const Center(
                child: Text(
                  "yghujkm,l",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 2;
              });
            },
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(200), border: Border.all(width: 0.9, color: Colors.black38), color: Colors.white),
              child: const Center(
                child: Text(
                  "Settings",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          // TextButton(
          //   onPressed: () {},
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       SvgPicture.asset(ImageResources.bottomHome, height: 22, width: 8, color: pageIndex == 0 ? StyleResources.primarycolortext : StyleResources.deactivate),
          //       Text("Home", style: TextStyle(color: pageIndex == 0 ? StyleResources.primarycolortext : StyleResources.deactivate, fontSize: 12)),
          //     ],
          //   ),
          // ),
          // TextButton(
          //   onPressed: () {
          //     setState(() {
          //       pageIndex = 1;
          //     });
          //   },
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       SvgPicture.asset(ImageResources.bottomEmployee, height: 22, width: 8, color: pageIndex == 1 ? StyleResources.primarycolortext : StyleResources.deactivate),
          //       Text("Employee", style: TextStyle(color: pageIndex == 1 ? StyleResources.primarycolortext : StyleResources.deactivate, fontSize: 12)),
          //     ],
          //   ),
          // ),
          // TextButton(
          //   onPressed: () {
          //     setState(() {
          //       pageIndex = 2;
          //     });
          //   },
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       SvgPicture.asset(ImageResources.bottomCustomer, height: 22, width: 8, color: pageIndex == 2 ? StyleResources.primarycolortext : StyleResources.deactivate),
          //       Text("Customer", style: TextStyle(color: pageIndex == 2 ? StyleResources.primarycolortext : StyleResources.deactivate, fontSize: 12)),
          //     ],
          //   ),
          // ),
          // TextButton(
          //   onPressed: () {
          //     setState(() {
          //       pageIndex = 3;
          //     });
          //   },
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       SvgPicture.asset(ImageResources.bottomPayment, height: 22, width: 8, color: pageIndex == 3 ? StyleResources.primarycolortext : StyleResources.deactivate),
          //       Text("Payment", style: TextStyle(color: pageIndex == 3 ? StyleResources.primarycolortext : StyleResources.deactivate, fontSize: 12)),
          //     ],
          //   ),
          // ),
          // TextButton(
          //   onPressed: () {
          //     setState(() {
          //       pageIndex = 4;
          //     });
          //   },
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       SvgPicture.asset(ImageResources.bottomRecipts, height: 22, width: 8, color: pageIndex == 4 ? StyleResources.primarycolortext : StyleResources.deactivate),
          //       Text("Receipt", style: TextStyle(color: pageIndex == 4 ? StyleResources.primarycolortext : StyleResources.deactivate, fontSize: 12)),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
