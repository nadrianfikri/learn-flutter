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

  _MyAppState() {
    for (int i = 0; i < 100; i++) {
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
          title: const Text('Listview widget'),
        ),
        body: ListView(padding: const EdgeInsets.all(20), children: [
          Container(
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
          const Text(
            'List View',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
          ),
          ...widgets
        ]),
      ),
    );
  }
}
