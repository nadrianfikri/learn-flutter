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
        body: Center(
            child: Container(
          color: Colors.cyan,
          width: 150,
          // height: 50,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Lorem ipsum dolor sit amet yang panjang sekali sampai tiga baris seharusnya',
              // maxLines: 2,
              // overflow: TextOverflow.ellipsis,
              // softWrap: false,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
          ),
        )),
      ),
    );
  }
}
