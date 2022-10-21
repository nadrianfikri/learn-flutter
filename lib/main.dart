import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  List<Widget> widgets = [];
  Random random = Random();

  _MyAppState() {
    for (int i = 0; i < 15; i++) {
      widgets.add(Text('Data ke-$i', style: const TextStyle(fontSize: 20)));
    }
  }

  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Animated Container widget'),
        ),
        body: ListView(padding: const EdgeInsets.all(20), children: [
          Align(
            child: Container(
              color: Colors.blueGrey,
              padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
              margin: const EdgeInsets.only(bottom: 20),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[Colors.amber, Colors.blue])),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Column(
                        children: <Widget>[
                          const Text('Counter'),
                          Text(counter.toString(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 30)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red),
                                  onPressed: decrement,
                                  child: const Text('Decrement')),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.green),
                                  onPressed: increment,
                                  child: const Text('Increment'))
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Text(
            'List View',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
          ),
          ...widgets,
          const SizedBox(height: 16),
          const Text(
            'Animated Container (onTap)',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: GestureDetector(
              onTap: () {
                setState(() {});
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                width: 50.0 + random.nextInt(101),
                height: 50.0 + random.nextInt(101),
                color: Color.fromARGB(255, random.nextInt(256),
                    random.nextInt(256), random.nextInt(256)),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
