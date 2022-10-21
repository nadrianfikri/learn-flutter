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
        body: Column(
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
                  padding: EdgeInsets.all(8.0),
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
                              color: Colors.redAccent, child: Text('Row 1')),
                          Container(
                              color: Colors.pinkAccent, child: Text('Row 2')),
                          Container(
                              color: Colors.orangeAccent, child: Text('Row 3')),
                        ],
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
