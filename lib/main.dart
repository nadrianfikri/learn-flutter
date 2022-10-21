import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

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
          title: const Text('Statefull widget'),
        ),
        body: Container(
          color: Colors.blueGrey,
          padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
          margin: const EdgeInsets.all(20),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.amber, Colors.blue])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Colors.cyan,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Column 1',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  color: Colors.blue,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Column 2',
                    ),
                  ),
                ),
                Container(
                  color: Colors.lightGreen,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Column 3',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  color: Colors.redAccent,
                                  child: const Text('Row 1')),
                              Container(
                                  color: Colors.pinkAccent,
                                  child: const Text('Row 2')),
                              Container(
                                  color: Colors.orangeAccent,
                                  child: const Text('Row 3')),
                            ],
                          ),
                        ],
                      )),
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.only(top: 20),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
