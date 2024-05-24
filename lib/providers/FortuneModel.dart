import 'dart:math';

import 'package:flutter/material.dart';

class FortuneModel with ChangeNotifier {
  String getRandomFortune(List<String> fortunes) {
    var random = Random();
    int randNum = random.nextInt(fortunes.length);
    return fortunes[randNum];
  }
}
