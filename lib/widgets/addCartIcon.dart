// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hackathon1/Screens/cart.dart';

Widget cartIcon(context, plant,int price) {
  return InkWell(
    child: Stack(children: [
      Image.asset(
        "assets/ribbon.png",
        height: 60,
      ),
      Padding(
        padding: const EdgeInsets.only(top: 22, left: 10),
        child: Image.asset(
          "assets/ribhook.png",
          height: 25,
        ),
      ),
    ]),
    onTap: () {
      Cart.cartItems.add(plant);
      // Cart.total += price;
      // print(Cart.cartItems);
      // print(Cart.cartItems[0]);
      // print(plant);
      // ScaffoldMessenger.of(context).showSnackBar(
      //     const SnackBar(content: Text("Your Item Added Successfully"),backgroundColor: Color.fromARGB(255, 14, 130, 99)));
    },
  );
}
