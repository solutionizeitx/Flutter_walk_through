import 'package:flutter/material.dart';
import 'package:flutter_walk_through/src/widget/snack_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(right: 10),
              //       child: GestureDetector(
              //         onTap: () {
              //           Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const SideDrawerScreen()));
              //         },
              //         child: Container(
              //           width: 120,
              //           height: 80,
              //           decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black38), color: Colors.white),
              //           child: const Center(
              //             child: Text("Side drawer"),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              const SizedBox(height: 10),
              const Text("Horizonal Scroll"),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 150,
                child: ListView.builder(
                  itemCount: 15,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black38), color: Colors.white),
                      ),
                    );
                  },
                ),
              ),
              const Text("Accordion"),
              SizedBox(width: MediaQuery.of(context).size.width, child: const AnimatedDropdown()),
              const SizedBox(height: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Breaking news", style: TextStyle(fontSize: 16)),
                          Row(
                            children: [Text("More"), Icon(Icons.add)],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.4,
                child: ListView.builder(
                  itemCount: 8,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black38), color: Colors.white),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AnimatedDropdown extends StatefulWidget {
  const AnimatedDropdown({super.key});

  @override
  _AnimatedDropdownState createState() => _AnimatedDropdownState();
}

class _AnimatedDropdownState extends State<AnimatedDropdown> {
  List<String> items = ['Department', 'Manage Holiday', 'Ledger', 'Account Group'];
  // String selectedValue = 'Manage';
  bool isDropdownOpen = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isDropdownOpen = !isDropdownOpen;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: isDropdownOpen ? MediaQuery.sizeOf(context).width * 1 : MediaQuery.sizeOf(context).width * 1,
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            decoration: const BoxDecoration(
                border: Border(top: BorderSide(color: Colors.black38, width: 1), left: BorderSide(color: Colors.black38, width: 1), right: BorderSide(color: Colors.black38, width: 1)),
                color: Colors.white),
            // decoration: BoxDecoration(color: StyleResources.primarycolortext, borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Breaking news", style: TextStyle(fontSize: 18)),
                    Row(
                      children: [const Text("less"), Icon(isDropdownOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down, size: 24, color: Colors.black)],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: const Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,when an unknown printer took a galley of type and scrambled it to make ")),
              ],
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black38, width: 1), left: BorderSide(color: Colors.black38, width: 1), right: BorderSide(color: Colors.black38, width: 1)),
              color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: isDropdownOpen ? items.length * 30.0 : 0,
              width: MediaQuery.sizeOf(context).width * 1,
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: const Text(
                      "a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")),
            ),
          ),
        ),
      ],
    );
  }
}
