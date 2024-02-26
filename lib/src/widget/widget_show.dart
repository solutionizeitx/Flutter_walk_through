import 'package:flutter/material.dart';

class DataShow extends StatelessWidget {
  final int data;
  const DataShow({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        backgroundColor: Colors.red[100],
        leading: const SizedBox(),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: data == 1
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 310,
                        decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black38), color: Colors.white),
                        child: const Center(
                          child: Text("sample model"),
                        ),
                      ),
                    ),
                  ],
                )
              : data == 2
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 310,
                            decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black38), color: Colors.white),
                            child: const Center(
                              child: Text("sample model"),
                            ),
                          ),
                        ),
                      ],
                    )
                  : data == 3
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 310,
                                decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black38), color: Colors.white),
                                child: const Center(
                                  child: Text("sample model"),
                                ),
                              ),
                            ),
                          ],
                        )
                      : const SizedBox()),
    );
  }
}
