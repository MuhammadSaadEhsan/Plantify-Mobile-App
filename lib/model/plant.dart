// import 'dart:ffi';

// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Plant {
  String? shortName;
  String? fullName;
  int Price;
  double rating;
  bool isFavourite;
  String plImage;
  Color pColor;

  Plant(
      {required this.shortName,
      required this.fullName,
      required this.Price,
      required this.rating,
      required this.isFavourite,
      required this.plImage,
      required this.pColor}) {}
}
