import 'package:flutter/material.dart';
import 'package:hackathon1/Screens/start.dart';

Widget elevatedBtn(yourText,{required onPress, double? widthinput = 200.00}) {
  return ElevatedButton(
    onPressed: onPress,
    style: ElevatedButton.styleFrom(
        backgroundColor: Start.primaryColor),

    //testing
    child: SizedBox(
      width: widthinput,
      child: Padding(
        // padding: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Text(
          yourText,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}
