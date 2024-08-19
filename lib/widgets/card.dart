import 'package:flutter/material.dart';
import 'package:hackathon1/Screens/detailed.dart';
import 'package:hackathon1/store/plantsList.dart';
import 'package:hackathon1/widgets/addCartIcon.dart';
import 'package:hackathon1/widgets/favIcon.dart';

Widget plantCard(context, boxImage, plantImage, index, Function updateState) {
  return Padding(
    padding: const EdgeInsets.only(left: 1),
    child: InkWell(
      child: Stack(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 45,
              ),
              Stack(children: [
                Image.asset(
                  boxImage,
                  height: 177,
                ),
                Image.asset(
                  "assets/mask.png",
                  // height: 196,
                  color: Colors.white,
                ),
                Image.asset(
                  "assets/mask.png",
                  // height: 196,
                  color: Colors.white,
                ),
                Image.asset(
                  "assets/mask.png",
                  // height: 196,
                  color: Colors.white,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        plantList[index].shortName,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w900),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20),
                      child: Text(
                        plantList[index].fullName,
                        style: const TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w900),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 20),
                          child: Text(
                            "\$${plantList[index].Price.toString()}",
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w900),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        favIcon(plantList[index], updateState),
                        const SizedBox(
                          width: 15,
                        ),
                        cartIcon(context,plantList[index],plantList[index].Price)
                      ],
                    ),
                  ],
                ),
              ]),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200),
            child: Image.asset(
              plantImage,
              height: 180,
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Detailed(
                myPlant: plantList[index],
                plimage: plantImage,
              ),
            ));
      },
    ),
  );
}
