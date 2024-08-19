// ignore_for_file: annotate_overrides

import 'package:flutter/material.dart';
import 'package:hackathon1/store/plantsList.dart';
import 'package:hackathon1/widgets/card.dart';
import 'package:hackathon1/widgets/header.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {

  void _updateState() {
    setState(() {});
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 50),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: header(),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset("assets/pic.jpg"),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.qr_code),
                        hintText: "Search",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    child: Image.asset(
                      "assets/filter.png",
                      height: 45,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Top Pick",
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 15,
                              color: Colors.green,
                              decoration: TextDecoration.underline),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Indoor",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Outdoor",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Seeds",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Plantation",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14),
                        )),
                  ],
                ),
              ),
              // SizedBox(height: 70,),

              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: plantList.length,
                  itemBuilder: (context, index) {
                    return plantCard(
                        context, "assets/box${index+1}.png", "assets/plant${index+1}.png", index,_updateState);
                  }),
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                "assets/design3.png",
                height: 200,
              ),
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                "assets/design6.png",
                height: 280,
              ),
              Container(
                margin: const EdgeInsets.only(right: 40),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "_____",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 30),
                    ),
                    Text(
                      "Plant a Life",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 30),
                    ),
                    Text(
                      "Live amongst Living",
                      style: TextStyle(
                          color: Color.fromARGB(255, 59, 59, 59),
                          fontWeight: FontWeight.w900,
                          fontSize: 30),
                    ),
                    Text(
                      "Spread the joy",
                      style: TextStyle(
                          color: Color.fromARGB(255, 167, 167, 167),
                          fontWeight: FontWeight.w900,
                          fontSize: 30),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    // Drawer
    );

  }
}
