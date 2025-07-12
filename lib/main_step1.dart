import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scratch学習サイト',
      home: const ScratchLearningHome(),
    );
  }
}

class ScratchLearningHome extends StatelessWidget {
  const ScratchLearningHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Scratch学習サイト',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '🎮 楽しくプログラミングを学ぼう！',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 32),
            Text(
              'Scratchブロックの使い方を覚えて、すてきなプログラムを作ろう！',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 48),
            Card(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text('📖', style: TextStyle(fontSize: 48)),
                    SizedBox(height: 16),
                    Text(
                      'プログラムの流れ',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text('ブロックが順番に動く様子を学ぼう！'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}