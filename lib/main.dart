import 'dart:math';
import 'package:flutter/material.dart';
import './components/counter.dart';
import './components/animatedContainer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  Random random = Random();

  _MyAppState() {
    for (int i = 0; i < 15; i++) {
      widgets.add(Text('Data ke-$i', style: const TextStyle(fontSize: 20)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Animated Container widget'),
        ),
        body: ListView(padding: const EdgeInsets.all(20), children: [
          const Counter(),
          const Text(
            'List View',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
          ),
          ...widgets,
          const SizedBox(height: 16),
          const MyAnimatedContainer(),
        ]),
      ),
    );
  }
}
