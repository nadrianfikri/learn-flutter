import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello World App'),
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
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
