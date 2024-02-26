import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1, color: Colors.black38),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(60),
              ),
            ),
            child: const Center(
              child: Text("Snack Bar"),
            ),
          ),
        ],
      ),
    );
  }
}
