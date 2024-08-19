import 'package:flutter/material.dart';

Widget header() {
  return SingleChildScrollView(
    physics: const NeverScrollableScrollPhysics(),
    scrollDirection: Axis.horizontal,
    child: Padding(
      padding: const EdgeInsets.only(right: 50),
      child: Row(
        children: [
          Image.asset(
            "assets/image3.png",
            // width: 172,
            height: 32,
          ),
          const SizedBox(
            width: 15,
          ),
          const Text(
            "Plantify",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          const SizedBox(
            width: 90,
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ],
      ),
    ),
  );
}
