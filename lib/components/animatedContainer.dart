// ignore: file_names
import 'dart:math';
import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({Key key}) : super(key: key);

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            color: Color.fromARGB(255, random.nextInt(256), random.nextInt(256),
                random.nextInt(256)),
          ),
        ),
      ),
    ]);
  }
}
