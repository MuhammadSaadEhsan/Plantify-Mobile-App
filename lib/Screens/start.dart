import 'package:flutter/material.dart';
import 'package:hackathon1/Screens/login.dart';
import 'package:hackathon1/widgets/elevatedbtn.dart';

class Start extends StatelessWidget {
  const Start({super.key});
  static Color primaryColor = const Color.fromARGB(245, 13, 152, 106);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // margin: EdgeInsets.only(top: -100),
            height: 436,
            width: 411,
            // color: const Color.fromARGB(235, 13, 152, 106),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              color: primaryColor,
            ),
            child: Stack(
              children: [
                Image.asset(
                  "assets/image2.png",
                  height: 554.51,
                  width: 470.81,
                ),
                Center(
                    child: Image.asset(
                  "assets/image0.png",
                  width: 257,
                  height: 211.65,
                )),
                const Padding(
                  padding: EdgeInsets.only(top: 247),
                  child: Center(
                      child: Text(
                    "Plantify",
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Text(
              "Get Ready\nBe Hyegenic",
              style: TextStyle(color: primaryColor, fontSize: 26),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 20),
            child: Text(
              "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Culpa, vel!",
              style: TextStyle(color: primaryColor, fontSize: 14),
            ),
          ),
          Center(
            child: elevatedBtn("Get Started", onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ));
            }),
          )
        ],
      ),
    );
  }
}
