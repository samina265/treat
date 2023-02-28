// ignore_for_file: sized_box_for_whitespace

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class SchoolWithData extends StatefulWidget {
  const SchoolWithData({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SchoolWithDataState createState() => _SchoolWithDataState();
}

class _SchoolWithDataState extends State<SchoolWithData> {
  List st = [
    " Shelter 1:  abc \n  water:1590L\n  population: 240\n  Distance:100km\n  First Aid: Savlon-(3)\n  Orseline(50)\n  Food: Parched rice(2kg)\n  ----------Suger(7kg)\n  ---------Biscuits(500gm)\n  ---------gram(3kg)\n  ---------Oil(3L)",
    " Shelter 2:  abc \n  water:1370L\n  population: 370\n  Distance:100km\n  First Aid: Savlon-(5)\n  Orseline(40)\n  Food: Parched rice(4kg)\n  ----------Suger(10kg)\n  ---------Biscuits(500gm)\n  ---------gram(5kg)\n  ---------Oil(1L)",
    " Shelter 3:  abc \n  water:1100L\n  population: 440\n  Distance:100km\n  First Aid: Savlon-(4)\n  Orseline(12)\n  Food: Parched rice(6kg)\n  ----------Suger(11kg)\n  ---------Biscuits(500gm)\n  ---------gram(7kg)\n  ---------Oil(4L)",
    " Shelter 4:  abc \n  water:1790L\n  population: 220\n  Distance:100km\n  First Aid: Savlon-(1)\n  Orseline(25)\n  Food: Parched rice(8kg)\n  ----------Suger(9kg)\n  ---------Biscuits(500gm)\n  ---------gram(9kg)\n  ---------Oil(1L)",
  ];
  var clr = [
    const Color.fromARGB(255, 204, 235, 205),
    const Color.fromARGB(255, 204, 207, 236),
    const Color.fromARGB(255, 202, 227, 240),
    const Color.fromARGB(255, 231, 189, 236),
  ];

  var dataRecive = "Stock Items";
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // actions: [
        //   IconButton(
        //       onPressed: () {
        //         SystemNavigator.pop();
        //       },
        //       icon: Icon(Icons.))
        // ],
        actions: [
          IconButton(
            onPressed: () {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.question,
                animType: AnimType.rightSlide,
                title: 'LOG OUT',
                desc: 'Are you sure you want to LOG OUT',
                btnCancelOnPress: () {},
                btnOkOnPress: () {},
              ).show();
            },
            icon: const Icon(Icons.exit_to_app_outlined),
          ),
        ],
        title: const Text("Sylhet Division"),
        backgroundColor: Color.fromARGB(255, 71, 233, 248),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            // ignore: unnecessary_new
            Container(
              height: 150,
              // color: Colors.black,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                GestureDetector(
                  child: Container(
                    height: 100,
                    width: 250,
                    color: Color.fromARGB(255, 191, 230, 193),
                    child: SingleChildScrollView(
                      child: Column(children: [
                        Container(
                            height: 100,
                            width: 500,
                            child: Image.asset(
                              "assets/o.jpg",
                            )),
                        const Text("first Image "),
                        const Text("first Image "),
                      ]),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      dataRecive = st[0];
                      // index = 0;
                    });
                  },
                ),
                GestureDetector(
                  child: Container(
                    height: 100,
                    width: 250,
                    color: const Color.fromARGB(255, 183, 188, 235),
                    child: SingleChildScrollView(
                      child: Column(children: [
                        Container(
                            height: 100,
                            width: 500,
                            child: Image.asset(
                              "assets/o.jpg",
                            )),
                        const Text("first Image "),
                        const Text("first Image "),
                      ]),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      dataRecive = st[1];
                      // index = 1;
                    });
                  },
                ),
                GestureDetector(
                  child: Container(
                    height: 100,
                    width: 250,
                    color: Color.fromARGB(255, 173, 219, 215),
                    child: SingleChildScrollView(
                      child: Column(children: [
                        Container(
                            height: 100,
                            width: 500,
                            child: Image.asset(
                              "assets/o.jpg",
                            )),
                        const Text("first Image "),
                        const Text("first Image "),
                      ]),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      dataRecive = st[2];
                      index = 2;
                    });
                  },
                ),
                GestureDetector(
                  child: Container(
                    height: 100,
                    width: 250,
                    color: const Color.fromARGB(255, 232, 203, 235),
                    child: SingleChildScrollView(
                      child: Column(children: [
                        Container(
                            height: 100,
                            width: 500,
                            child: Image.asset(
                              "assets/o.jpg",
                            )),
                        const Text("first Image "),
                        const Text("first Image "),
                      ]),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      dataRecive = st[3];
                      // index = 3;
                    });
                  },
                ),
              ]),
            ),
            const SizedBox(
              height: 150,
            ),

            Container(
              height: 280,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: clr[index],
              ),
              child: Center(
                child: SingleChildScrollView(
                  child: Text(
                    " ${dataRecive}",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
