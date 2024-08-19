import 'package:flutter/material.dart';
// import 'package:hackathon1/Screens/cart.dart';
import 'package:hackathon1/model/plant.dart';
import 'package:hackathon1/widgets/header.dart';

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  static List<Plant> favouriteItems = [];

  @override
  State<Favourites> createState() => FavouritesState();
}

class FavouritesState extends State<Favourites> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 40, right: 20),
              child: header(),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 38),
              child: Row(
                children: [
                  Text(
                    "Your Favorites",
                    style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 14, 130, 99),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: Favourites.favouriteItems.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 100,
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 30,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      Favourites.favouriteItems[index].plImage,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        const SizedBox(width: 15),
                                        Text(
                                          Favourites.favouriteItems[index].fullName!,
                                          style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w900,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                          ),
                                        ),
                                      ],
                                    ),
                                    
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.bookmark_outline,
                                        color: Color.fromARGB(255, 14, 130, 99),
                                      ),
                                    ),
                                    Text(
                                      '\$${Favourites.favouriteItems[index].Price}',
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w900,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    
          ],
        ),
      ),
    )])));
  }
}
