import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Counter: $counter',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: incrementCounter,
          style: ElevatedButton.styleFrom(
            primary: Colors.teal,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            elevation: 5,
          ),
          child: Text(
            'Increment',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
