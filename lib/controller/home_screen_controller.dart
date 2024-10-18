import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreenController with ChangeNotifier {
  String currentDice = "assets/images/d1.jpg";
  //late int random;
  List dices = [
    "assets/images/d1.jpg",
    "assets/images/d2.jpg",
    "assets/images/d3.jpg",
    "assets/images/d4.jpg",
    "assets/images/d5.jpg",
    "assets/images/d6.jpg"
  ];

  diceRoll() {
    int random = Random().nextInt(dices.length);
    currentDice = dices[random];

    notifyListeners();
  }
}
