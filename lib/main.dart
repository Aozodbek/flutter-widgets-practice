import 'package:flutter/material.dart';
import 'counter_widget.dart';
import 'greeting_widget.dart';

void main() {
  runApp(WidgetsPracticeApp());
}

class GreetingWidget extends StatelessWidget {
  final String message;

  GreetingWidget({required this.message});

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: TextStyle(fontSize: 24),
    );
  }
}

class WidgetsPracticeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.indigo,
        fontFamily: 'Roboto',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Widgets Practice',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GreetingWidget(message: 'Hello, World!'),
              SizedBox(height: 20),
              GreetingWidget(message: 'Hello, Flutter!'),
              SizedBox(height: 20),
              CounterWidget(),
              SizedBox(height: 20),
              // Add more styled widgets here...
            ],
          ),
        ),
      ),
    );
  }
}
