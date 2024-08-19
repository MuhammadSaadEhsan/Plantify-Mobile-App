// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hackathon1/Screens/favourites.dart';

Widget favIcon(plant, updateState, {sizes = 32.0}) {
  return IconButton(
      onPressed: () {
        // plantList[index].isFavourite = !plantList[index].isFavourite;
        plant.isFavourite = !plant.isFavourite;
        plant.isFavourite == true
            ? Favourites.favouriteItems.add(plant)
            : Favourites.favouriteItems.remove(plant);

        updateState();
      },
      icon: plant.isFavourite == false
          ? Icon(
              Icons.heart_broken,
              size: sizes,
            )
          : Icon(
              Icons.favorite,
              color: Colors.red,
              size: sizes,
            ));
}

Widget favIconWithCap(plant, updateState, {sizes = 32.0}) {
  return Stack(children: [
    Padding(
      padding: const EdgeInsets.only(left: 10, top: 5),
      child: Image.asset(
        'assets/heartCap.png',
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 19, left: 26),
      child: IconButton(
          onPressed: () {
            // plantList[index].isFavourite = !plantList[index].isFavourite;
            plant.isFavourite = !plant.isFavourite;
            plant.isFavourite == true
                ? Favourites.favouriteItems.add(plant)
                : Favourites.favouriteItems.remove(plant);
            updateState();
          },
          icon: plant.isFavourite == false
              ? Icon(
                  Icons.heart_broken,
                  size: sizes,
                )
              : Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: sizes,
                )),
    ),
  ]);
}
