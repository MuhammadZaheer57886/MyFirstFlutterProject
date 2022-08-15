import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int hours = 8;
  final String foryou = "Zaheer bro this is";

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fareed App'),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Text(
            '$foryou $hours hours cource of flutter',
            style: const TextStyle(
              fontSize: 25,
              color: Colors.teal,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
