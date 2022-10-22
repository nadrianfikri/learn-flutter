import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
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
    return Align(
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
    );
  }
}
