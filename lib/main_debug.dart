import 'package:flutter/material.dart';

void main() {
  runApp(const DebugApp());
}

class DebugApp extends StatelessWidget {
  const DebugApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Debug Test',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Debug Test'),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Scratch学習サイト',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('カードテスト'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}