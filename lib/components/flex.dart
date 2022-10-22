import 'package:flutter/material.dart';

class MyFlex extends StatelessWidget {
  const MyFlex({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.all(16),
      height: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Flexible',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
          ),
          const SizedBox(
            height: 8,
          ),
          Flexible(
              flex: 1,
              child: Container(
                color: Colors.pinkAccent,
              )),
          Flexible(
              flex: 2,
              child: Container(
                color: Colors.orange,
              )),
          Flexible(
              flex: 1,
              child: Container(
                color: Colors.yellow,
              )),
        ],
      ),
    );
  }
}
