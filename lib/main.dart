import 'package:flutter/material.dart';
import 'package:good_app/providers/FortuneModel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) => FortuneModel(), child: const MyApp()));
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
  @override
  Widget build(BuildContext context) {
    debugPrint("Building the widget");
    final fortune = Provider.of<FortuneModel>(context);

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
                  fortune.currentFortune,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
            ElevatedButton(
                onPressed: fortune.getNewFortune,
                child: const Text('Get Fortune')),
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
