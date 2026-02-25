import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 96, 148, 201), 
        appBar: AppBar(
          title: const Text(
            "Knock-Knock!",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 53, 80, 124), 
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/riu_door.jpg'),
          ),
        ),
      ),
    ),
  );
}
