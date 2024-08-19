import 'package:flutter/material.dart';
import 'package:hackathon1/Screens/navbar.dart';
import 'package:hackathon1/widgets/elevatedbtn.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          "assets/icon.png",
                          height: 50,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "   Order\nRecieved",
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 14, 130, 99),
                      ),
                    ),
                  ],
                ),
                const Text("Order ID : #293092309"),
                const SizedBox(
                  height: 130,
                ),
                Image.asset(
                  "assets/image3.png",
                  // width: 172,
                  // height: 172,
                  scale: 0.7,
                ),
                const SizedBox(
                  height: 30,
                ),
                elevatedBtn("Continue Shopping", onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Navbar(),
                      ));
                })
              ],
            ),
          ),
          Positioned(
            top: -60, // Adjust as needed to move the image outside the scaffold
            right: -170,
            child: Image.asset(
              "assets/order.png",
              width: 400, // Adjust the width as needed
            ),
          ),
        ],
      ),
    );
  }
}
