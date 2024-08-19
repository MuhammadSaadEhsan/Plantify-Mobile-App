import 'package:flutter/material.dart';
import 'package:hackathon1/Screens/order.dart';
import 'package:hackathon1/model/plant.dart';
import 'package:hackathon1/widgets/header.dart';

class Cart extends StatefulWidget {
  Cart({super.key});

  static List<Plant> cartItems = [];

  @override
  State<Cart> createState() => CartState();
}

class CartState extends State<Cart> {
  List<int> quantity = [];
  List<int> prices = [];
  int deliveryFee = 80;

  @override
  void initState() {
    super.initState();
    for (var item in Cart.cartItems) {
      quantity.add(1);
      prices.add(item.Price);
    }
  }

  int calculateTotal() {
    int total = deliveryFee;
    for (int price in prices) {
      total += price;
    }
    return total;
  }

  @override
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
                    "Your Bag",
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
                      itemCount: Cart.cartItems.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 100,
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
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
                                      Cart.cartItems[index].plImage,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              // const SizedBox(width: 5),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        const SizedBox(width: 10),
                                        Text(
                                          Cart.cartItems[index].fullName!,
                                          style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w900,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SingleChildScrollView(
                                      physics: const NeverScrollableScrollPhysics(),
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              setState(() {
                                                quantity[index] += 1;
                                                prices[index] +=
                                                    Cart.cartItems[index].Price;
                                              });
                                            },
                                            icon: const Icon(Icons.add),
                                          ),
                                          Text(
                                            quantity[index].toString(),
                                            style: const TextStyle(
                                              color: Color.fromARGB(
                                                255, 14, 130, 99,
                                              ),
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              setState(() {
                                                if (quantity[index] > 1) {
                                                  quantity[index] -= 1;
                                                  prices[index] -=
                                                      Cart.cartItems[index].Price;
                                                }
                                              });
                                            },
                                            icon: const Icon(Icons.remove),
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              setState(() {
                                                Cart.cartItems.removeAt(index);
                                                quantity.removeAt(index);
                                                prices.removeAt(index);
                                              });
                                            },
                                            icon: const Icon(Icons.delete,color: Colors.black,),
                                          ),
                                        ],
                                      ),
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
                                      '\$${Cart.cartItems[index].Price * quantity[index]}',
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
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 30),
                        Image.asset("assets/delivery.png"),
                        const SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "Delivery",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w900,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Stack(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 10,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        color: const Color.fromARGB(
                                          255, 185, 242, 188,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 60,
                                      height: 10,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        color: const Color.fromARGB(
                                          255, 14, 130, 99,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Text("Order above \$1200 to get"),
                            const Row(
                              children: [
                                Text("free delivery "),
                                Text(
                                  " Shop more",
                                  style: TextStyle(color: Color.fromARGB(255, 14, 130, 99),fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 20,),
                        const Text(
                          "\$80",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const SizedBox(width: 30),
                        Stack(
                          children: [
                            const SizedBox(width: 30),
                            Image.asset("assets/coupencap.png"),
                            Image.asset("assets/coupen.png"),
                          ],
                        ),
                        const SizedBox(width: 20),
                        const Text(
                          "Apply Coupon    __________________",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Total",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          Text(
                            "\$${calculateTotal()}",
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 14, 130, 99),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // const SizedBox(width: 30),
                      const Text(
                        "Checkout",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 238, 232, 232),
                        ),
                      ),
                      const SizedBox(width: 30),
                      Text(
                        "\$${calculateTotal()}",
                        style: const TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Order(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
