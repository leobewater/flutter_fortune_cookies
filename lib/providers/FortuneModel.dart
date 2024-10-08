import 'dart:math';

import 'package:flutter/material.dart';

class FortuneModel with ChangeNotifier {
  String _currentFortune = "";

  // getter
  String get currentFortune => _currentFortune;

  // constructor
  FortuneModel() {
    _generateRandomFortune();
  }

  final _fortuneList = [
    "You will find a new friend",
    "You will find a new friend tomorrow",
    "You will be rich",
    "Take a vacation",
    "Adventure can be real happiness",
    "Opportunity knocks on your door when you least expect it, so always keep your eyes open.",
    "Believe in the magic within you, for it has the power to transform your world.",
    "Success is not measured by how high you climb, but by how many people you lift along the way.",
    "Good things come to those who wait patiently and work persistently.",
    "Your greatest strength lies in your ability to adapt to change.",
    "The journey of a thousand miles begins with a single step; take it fearlessly.",
    "A smile is the shortest distance between two people; spread joy wherever you go.",
    "The key to unlocking doors of opportunity lies within your hands; use it wisely.",
    "Wisdom is not attained by age alone but by the lessons learned along the way.",
    "Embrace the challenges you face, for they are stepping stones to your success.",
    "Love conquers all; let it guide your actions and decisions.",
    "Your dreams are the blueprints of your destiny; pursue them with passion.",
    "Kindness is a language that the deaf can hear and the blind can see.",
    "Patience is not the ability to wait but the ability to keep a good attitude while waiting.",
    "In every setback lies the seed of an even greater opportunity; keep moving forward.",
    "The secret to happiness is not in doing what one likes, but in liking what one does.",
    "Every adversity carries with it the seed of an equal or greater benefit.",
    "The only way to do great work is to love what you do.",
    "Success is not the key to happiness; happiness is the key to success.",
    "The best way to predict your future is to create it; start today.",
  ];

  // Private method starts with "_"
  void _generateRandomFortune() {
    var random = Random();
    int randNum = random.nextInt(_fortuneList.length);
    _currentFortune = _fortuneList[randNum];

    notifyListeners();
  }

  // Method to get a new random fortune. This is public method
  void getNewFortune() {
    _generateRandomFortune();
  }
}
