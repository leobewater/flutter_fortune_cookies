
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _currentFortune = "";

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



  @override
  Widget build(BuildContext context) {
    debugPrint("Building the widget");
    return Scaffold(
      appBar: AppBar(
          // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          // title: Text("Flutter Demo Home Page"),
          ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/fortune_cookie.png',
                width: 200, height: 200, fit: BoxFit.cover),
            // const Text(
            //   "Your fortune is:",
            //   style: TextStyle(
            //     fontSize: 19,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  _currentFortune,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
            ElevatedButton(
                onPressed: _randomFortune, child: const Text('Get Fortune')),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _randomFortune,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
