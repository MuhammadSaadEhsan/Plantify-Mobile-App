import 'package:flutter/material.dart';
import 'package:hackathon1/Screens/cart.dart';
import 'package:hackathon1/Screens/favourites.dart';
import 'package:hackathon1/Screens/home1.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int myIndex = 0;
  List pages = [
    const Home1(),
    Favourites(),
    Cart(),
    const Center(child: Text("s4")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: myIndex,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outlined,
                color: Colors.black,
              ),
              label: ""),
        ],
      ),
      body: pages[myIndex],
    );
  }
}
