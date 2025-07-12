import 'package:flutter/material.dart';

void main() {
  runApp(const SimpleApp());
}

class SimpleApp extends StatelessWidget {
  const SimpleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Test',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple Test App'),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Text(
            'Hello World! This is a test.',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}