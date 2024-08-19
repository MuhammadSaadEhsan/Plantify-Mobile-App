// 



import 'package:flutter/material.dart';
import 'package:hackathon1/Screens/cart.dart';
import 'package:hackathon1/model/plant.dart';
import 'package:hackathon1/store/plantsList.dart';
import 'package:hackathon1/widgets/addCartIcon.dart';
import 'package:hackathon1/widgets/card.dart';
import 'package:hackathon1/widgets/favIcon.dart';
import 'package:hackathon1/widgets/header.dart';

// ignore: must_be_immutable
class Detailed extends StatefulWidget {
  Plant myPlant;
  String plimage;

  Detailed({super.key, required this.myPlant, required this.plimage});

  @override
  State<Detailed> createState() => _DetailedState();
}

class _DetailedState extends State<Detailed> {
  void _updateState() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Stack(children: [
                    Stack(children: [
                      Image.asset(
                        "assets/detailed.png",
                        color: widget.myPlant.pColor,
                      ),
                      Image.asset(
                        "assets/detailedArc.png",
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 80.0, left: 80.0),
                        child: Image.asset(
                          "assets/detailedArc2.png",
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 80.0, left: 80.0),
                        child: Image.asset(
                          "assets/detailedArc2.png",
                          color: Colors.white,
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(
                                  top: 50.0, left: 40.0, right: 20.0),
                              child: header()),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20.0, left: 40.0),
                                child: Text(
                                  widget.myPlant.shortName!,
                                  style: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15.0, top: 18.0),
                                child: Image.asset("assets/dots.png"),
                                // height
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 80.0, top: 14.0),
                                child: Container(
                                  height: 27.0,
                                  width: 80.0,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20.0)),
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 15.0,
                                      ),
                                      const Icon(
                                        Icons.star,
                                        color: Colors.green,
                                        size: 18.0,
                                      ),
                                      const SizedBox(
                                        width: 5.0,
                                      ),
                                      Text(
                                        '${widget.myPlant.rating}',
                                        style: const TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.green),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 38.0),
                            child: Row(
                              children: [
                                Text(
                                  widget.myPlant.fullName!,
                                  style: const TextStyle(
                                      fontSize: 38.0,
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 38.0, top: 20.0),
                            child: Row(
                              children: [
                                Text(
                                  "PRICE",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w900,
                                      color:
                                          Color.fromARGB(255, 119, 119, 119)),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 38.0, top: 2.0),
                            child: Row(
                              children: [
                                Text(
                                  '\$${widget.myPlant.Price}',
                                  style: const TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w900,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 38.0, top: 20.0),
                            child: Row(
                              children: [
                                Text(
                                  "SIZE",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w900,
                                      color:
                                          Color.fromARGB(255, 119, 119, 119)),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 38.0, top: 2.0),
                            child: Row(
                              children: [
                                Text(
                                  '5″ h',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w900,
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 35.0, top: 0.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black
                                            .withOpacity(0.15), // Shadow color
                                        spreadRadius: 2.0, // Spread radius
                                        blurRadius: 15.0, // Blur radius
                                        // offset: Offset(0, 3), // Offset in x and y directions
                                      ),
                                    ],
                                  ),
                                  child: cartIcon(context, widget.myPlant,
                                      widget.myPlant.Price),
                                ),
                              ),
                              favIconWithCap(
                                widget.myPlant,
                                _updateState,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ]),
                    Padding(
                      padding: const EdgeInsets.only(top: 140.0, left: 150.0),
                      child: Image.asset(
                        widget.plimage,
                        height: 320.0,
                      ),
                    )
                  ]),

                  const Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Row(
                      children: [
                        Text(
                          "Overview",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ],
                    ),
                  ),

                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30.0, top: 10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.water_drop,
                              color: Colors.orange,
                              size: 23.0,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "250 ml",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.green),
                                ),
                                Text(
                                  "WATER",
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      // SizedBox(width: 5,),
                      Padding(
                        padding: EdgeInsets.only(left: 30.0, top: 10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.sunny,
                              color: Colors.orange,
                              size: 23.0,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "35-40%",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.green),
                                ),
                                Text(
                                  "LIGHT",
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      // SizedBox(width: 5,),
                      Padding(
                        padding: EdgeInsets.only(left: 30.0, top: 10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.filter_tilt_shift,
                              color: Colors.orange,
                              size: 23.0,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "250 gm",
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.green),
                                ),
                                Text(
                                  "FERTILIZER",
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),

                  const Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Row(
                      children: [
                        Text(
                          "Plant Bio",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Row(
                      children: [
                        Text(
                          "No green thumb required to keep our artificial\nwatermelon peperomia plant looking lively and\nlush anywhere you place it.",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 81, 81, 81)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Image.asset("assets/detailVideo.png"),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Row(
                      children: [
                        Text(
                          "Similar Plants",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, bottom: 10.0),
                    child: SizedBox(
                      height: 240.0,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: plantList.length,
                          itemBuilder: (context, index) {
                            return plantCard(
                                context,
                                "assets/box${index + 1}.png",
                                "assets/plant${index + 1}.png",
                                index,
                                _updateState);
                          }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        InkWell(
          child: Container(
            height: 55.0,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 14, 130, 99),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 30.0,
                ),
                Stack(
                  children: [
                    Image.asset("assets/detailBottom1.png"),
                    Padding(
                      padding: const EdgeInsets.only(left: 3.0, top: 6.5),
                      child: Image.asset("assets/detailBottom2.png"),
                    )
                  ],
                ),
                const SizedBox(
                  width: 30.0,
                ),
                const Text(
                  "View items in your Cart",
                  style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 238, 232, 232)),
                ),
                const SizedBox(
                  width: 30.0,
                ),
                // const Text(
                //   "\$${80}",
                //   style: TextStyle(
                //       fontSize: 23.0,
                //       fontWeight: FontWeight.w900,
                //       color: Color.fromARGB(255, 255, 255, 255)),
                // )
              ],
            ),
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Cart(),
                ));
          },
        )
      ],
    ));
  }
}
