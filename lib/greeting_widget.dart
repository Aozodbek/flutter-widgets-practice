import 'package:flutter/material.dart';

class GreetingWidget extends StatelessWidget {
  final String message;

  GreetingWidget({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple, Colors.deepPurple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Text(
        message,
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
