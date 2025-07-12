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
        backgroundColor: const Color(0xFF4A90E2),
        title: const Row(
          children: [
            Icon(Icons.pets, color: Colors.white, size: 28),
            SizedBox(width: 8),
            Text(
              'Scratch学習サイト',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        elevation: 4,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFE8F4FD),
              Color(0xFFB8E6B8),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '🎮 楽しくプログラミングを学ぼう！',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2D3748),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Scratchブロックの使い方を覚えて、すてきなプログラムを作ろう！',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF4A5568),
                ),
              ),
              const SizedBox(height: 32),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: [
                    _buildLearningCard(
                      context,
                      '動きのブロック',
                      '🚀',
                      Colors.blue,
                      'スプライトを動かしてみよう！',
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MotionBlocksLesson(),
                        ),
                      ),
                    ),
                    _buildLearningCard(
                      context,
                      '見た目のブロック',
                      '🎨',
                      Colors.purple,
                      'スプライトの見た目を変えよう！',
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LooksBlocksLesson(),
                        ),
                      ),
                    ),
                    _buildLearningCard(
                      context,
                      '制御のブロック',
                      '🔄',
                      Colors.orange,
                      'プログラムの流れを制御しよう！',
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ControlBlocksLesson(),
                        ),
                      ),
                    ),
                    _buildLearningCard(
                      context,
                      'プログラムの流れ',
                      '📖',
                      Colors.green,
                      'ブロックが順番に動く様子を学ぼう！',
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProgramFlowLesson(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLearningCard(
    BuildContext context,
    String title,
    String emoji,
    Color color,
    String description,
    VoidCallback onTap,
  ) {
    return Card(
      elevation: 6,
      shadowColor: color.withOpacity(0.3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                color.withOpacity(0.1),
                color.withOpacity(0.05),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                emoji,
                style: const TextStyle(fontSize: 48),
              ),
              const SizedBox(height: 12),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: color.withOpacity(0.8),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF6B7280),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MotionBlocksLesson extends StatelessWidget {
  const MotionBlocksLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('動きのブロック', style: TextStyle(color: Colors.white)),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const ScratchBlockLessonView(
        blockType: ScratchBlockType.motion,
        title: '動きのブロック',
        description: 'スプライトを動かすためのブロックです',
        examples: [
          'move 10 steps',
          'turn right 90 degrees',
          'turn left 45 degrees',
          'go to x: 0 y: 0',
        ],
      ),
    );
  }
}

class LooksBlocksLesson extends StatelessWidget {
  const LooksBlocksLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('見た目のブロック', style: TextStyle(color: Colors.white)),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const ScratchBlockLessonView(
        blockType: ScratchBlockType.looks,
        title: '見た目のブロック',
        description: 'スプライトの見た目を変えるためのブロックです',
        examples: [
          'say Hello!',
          'say Hello! for 2 seconds',
          'think Hmm...',
          'show',
          'hide',
        ],
      ),
    );
  }
}

class ControlBlocksLesson extends StatelessWidget {
  const ControlBlocksLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('制御のブロック', style: TextStyle(color: Colors.white)),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const ScratchBlockLessonView(
        blockType: ScratchBlockType.control,
        title: '制御のブロック',
        description: 'プログラムの流れを制御するためのブロックです',
        examples: [
          'repeat 10 times',
          'forever',
          'if touching mouse-pointer then',
          'wait 1 seconds',
        ],
      ),
    );
  }
}

class ScratchBlockLessonView extends StatefulWidget {
  final ScratchBlockType blockType;
  final String title;
  final String description;
  final List<String> examples;

  const ScratchBlockLessonView({
    super.key,
    required this.blockType,
    required this.title,
    required this.description,
    required this.examples,
  });

  @override
  State<ScratchBlockLessonView> createState() => _ScratchBlockLessonViewState();
}

class _ScratchBlockLessonViewState extends State<ScratchBlockLessonView> {
  List<ScratchBlock> _blocks = [];

  @override
  void initState() {
    super.initState();
    _generateBlocks();
  }

  void _generateBlocks() {
    Color blockColor;
    switch (widget.blockType) {
      case ScratchBlockType.motion:
        blockColor = const Color(0xFF4C97FF); // Scratch blue
        break;
      case ScratchBlockType.looks:
        blockColor = const Color(0xFF9966FF); // Scratch purple
        break;
      case ScratchBlockType.control:
        blockColor = const Color(0xFFFFAB19); // Scratch orange
        break;
      case ScratchBlockType.events:
        blockColor = const Color(0xFFFFD500); // Scratch yellow
        break;
      case ScratchBlockType.sensing:
        blockColor = const Color(0xFF5CB1D6); // Scratch light blue
        break;
      case ScratchBlockType.operators:
        blockColor = const Color(0xFF59C059); // Scratch green
        break;
      case ScratchBlockType.variables:
        blockColor = const Color(0xFFFF8C1A); // Scratch orange-red
        break;
      default:
        blockColor = Colors.grey;
    }

    List<ScratchBlock> blocks = [];
    for (String example in widget.examples) {
      blocks.add(ScratchBlock(
        type: widget.blockType,
        text: example,
        color: blockColor,
        isControl: widget.blockType == ScratchBlockType.control,
      ));
    }

    setState(() {
      _blocks = blocks;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2D3748),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            widget.description,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFF4A5568),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'ブロックの例:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2D3748),
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: _blocks.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ScratchBlockWidget(block: _blocks[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ProgramFlowLesson extends StatefulWidget {
  const ProgramFlowLesson({super.key});

  @override
  State<ProgramFlowLesson> createState() => _ProgramFlowLessonState();
}

class _ProgramFlowLessonState extends State<ProgramFlowLesson> {
  int _currentStep = 0;
  List<ScratchBlock> _availableBlocks = [];
  List<ScratchBlock> _targetBlocks = [];

  @override
  void initState() {
    super.initState();
    _initializeLesson();
  }

  void _initializeLesson() {
    // Step 1: Available blocks to choose from
    _availableBlocks = [
      ScratchBlock(
        type: ScratchBlockType.events,
        text: 'when green flag clicked',
        color: const Color(0xFFFFD500),
      ),
      ScratchBlock(
        type: ScratchBlockType.looks,
        text: 'say Hello!',
        color: const Color(0xFF9966FF),
      ),
      ScratchBlock(
        type: ScratchBlockType.motion,
        text: 'move 50 steps',
        color: const Color(0xFF4C97FF),
      ),
      ScratchBlock(
        type: ScratchBlockType.looks,
        text: 'say Goodbye!',
        color: const Color(0xFF9966FF),
      ),
      ScratchBlock(
        type: ScratchBlockType.motion,
        text: 'turn right 90 degrees',
        color: const Color(0xFF4C97FF),
      ),
    ];

    // Target solution
    _targetBlocks = [
      ScratchBlock(
        type: ScratchBlockType.events,
        text: 'when green flag clicked',
        color: const Color(0xFFFFD500),
      ),
      ScratchBlock(
        type: ScratchBlockType.looks,
        text: 'say Hello!',
        color: const Color(0xFF9966FF),
      ),
      ScratchBlock(
        type: ScratchBlockType.motion,
        text: 'move 50 steps',
        color: const Color(0xFF4C97FF),
      ),
      ScratchBlock(
        type: ScratchBlockType.motion,
        text: 'turn right 90 degrees',
        color: const Color(0xFF4C97FF),
      ),
      ScratchBlock(
        type: ScratchBlockType.looks,
        text: 'say Goodbye!',
        color: const Color(0xFF9966FF),
      ),
    ];
  }

  void _nextStep() {
    setState(() {
      if (_currentStep < 2) {
        _currentStep++;
      }
    });
  }

  void _previousStep() {
    setState(() {
      if (_currentStep > 0) {
        _currentStep--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4A90E2),
        title: const Text(
          'プログラムの流れを学ぼう',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Progress indicator
            LinearProgressIndicator(
              value: (_currentStep + 1) / 3,
              backgroundColor: Colors.grey[300],
              valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF4A90E2)),
            ),
            const SizedBox(height: 20),
            
            // Step indicator
            Text(
              'ステップ ${_currentStep + 1} / 3',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4A90E2),
              ),
            ),
            const SizedBox(height: 10),

            // Content based on current step
            Expanded(
              child: _buildStepContent(),
            ),

            // Navigation buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: _currentStep > 0 ? _previousStep : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[300],
                    foregroundColor: Colors.black,
                  ),
                  child: const Text('前へ'),
                ),
                ElevatedButton(
                  onPressed: _currentStep < 2 ? _nextStep : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4A90E2),
                    foregroundColor: Colors.white,
                  ),
                  child: Text(_currentStep < 2 ? '次へ' : '完了'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStepContent() {
    switch (_currentStep) {
      case 0:
        return _buildStep1(); // Block selection
      case 1:
        return _buildStep2(); // Assembly demonstration
      case 2:
        return _buildStep3(); // Execution flow
      default:
        return Container();
    }
  }

  Widget _buildStep1() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '📦 必要なブロックを用意してください',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF2D3748),
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          '下のブロックの中から、プログラムに必要なブロックを選んでください。',
          style: TextStyle(fontSize: 16, color: Color(0xFF4A5568)),
        ),
        const SizedBox(height: 24),
        const Text(
          '利用可能なブロック:',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF2D3748),
          ),
        ),
        const SizedBox(height: 16),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: _availableBlocks.length,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey[300]!),
                ),
                child: ScratchBlockWidget(block: _availableBlocks[index]),
              );
            },
          ),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.blue[50],
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.blue[200]!),
          ),
          child: const Row(
            children: [
              Icon(Icons.lightbulb, color: Colors.orange),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  'ヒント: 緑の旗をクリックしたときから始まるプログラムを作りましょう！',
                  style: TextStyle(fontSize: 14, color: Color(0xFF2D3748)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildStep2() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '🔧 このように組み立ててください',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF2D3748),
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          '正しい順番でブロックを組み立てると、次のようになります：',
          style: TextStyle(fontSize: 16, color: Color(0xFF4A5568)),
        ),
        const SizedBox(height: 24),
        const Text(
          '正解例:',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF2D3748),
          ),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            children: _targetBlocks.map((block) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: ScratchBlockWidget(block: block),
              );
            }).toList(),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.green[50],
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.green[200]!),
          ),
          child: const Row(
            children: [
              Icon(Icons.check_circle, color: Colors.green),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  'この順番でブロックを組み立てると、プログラムが正しく動きます！',
                  style: TextStyle(fontSize: 14, color: Color(0xFF2D3748)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildStep3() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '▶️ プログラムの実行',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF2D3748),
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          'プログラムは上から順番に実行されます。どのような順番で動くか見てみましょう！',
          style: TextStyle(fontSize: 16, color: Color(0xFF4A5568)),
        ),
        const SizedBox(height: 24),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: [
                const Row(
                  children: [
                    Icon(Icons.play_arrow, color: Colors.green, size: 28),
                    SizedBox(width: 8),
                    Text(
                      '実行順序:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2D3748),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: ListView.builder(
                    itemCount: _targetBlocks.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 12),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.blue[200]!),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                color: Color(0xFF4A90E2),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  '${index + 1}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: ScratchBlockWidget(block: _targetBlocks[index]),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.purple[50],
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.purple[200]!),
          ),
          child: const Row(
            children: [
              Icon(Icons.school, color: Colors.purple),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  'プログラムは必ず上から下へ、順番通りに実行されます。この順序が大切です！',
                  style: TextStyle(fontSize: 14, color: Color(0xFF2D3748)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ScratchBlockDemo extends StatefulWidget {
  const ScratchBlockDemo({super.key});

  @override
  State<ScratchBlockDemo> createState() => _ScratchBlockDemoState();
}

class _ScratchBlockDemoState extends State<ScratchBlockDemo> {
  final TextEditingController _textController = TextEditingController();
  List<ScratchBlock> _blocks = [];

  @override
  void initState() {
    super.initState();
    _textController.text = '''when green flag clicked
say Welcome to Scratch!
move 50 steps
turn right 90 degrees
repeat 4 times
  move 100 steps
  turn right 90 degrees
end
say I drew a square!
think That was fun...
show
wait 2 seconds
hide''';
    _parseBlocks();
  }

  void _parseBlocks() {
    List<String> lines = _textController.text.split('\n');
    List<ScratchBlock> blocks = [];
    
    for (String line in lines) {
      line = line.trim();
      if (line.isEmpty) continue;
      
      // Motion blocks
      if (line.startsWith('move ') && line.contains(' steps')) {
        String steps = line.replaceAll('move ', '').replaceAll(' steps', '');
        blocks.add(ScratchBlock(
          type: ScratchBlockType.motion,
          text: 'move $steps steps',
          color: const Color(0xFF4C97FF),
        ));
      } else if (line.startsWith('turn ') && line.contains(' degrees')) {
        blocks.add(ScratchBlock(
          type: ScratchBlockType.motion,
          text: line,
          color: const Color(0xFF4C97FF),
        ));
      } else if (line.startsWith('go to ')) {
        blocks.add(ScratchBlock(
          type: ScratchBlockType.motion,
          text: line,
          color: const Color(0xFF4C97FF),
        ));
      } 
      // Looks blocks
      else if (line.startsWith('say ')) {
        String message = line.replaceAll('say ', '');
        blocks.add(ScratchBlock(
          type: ScratchBlockType.looks,
          text: 'say $message',
          color: const Color(0xFF9966FF),
        ));
      } else if (line.startsWith('think ')) {
        String message = line.replaceAll('think ', '');
        blocks.add(ScratchBlock(
          type: ScratchBlockType.looks,
          text: 'think $message',
          color: const Color(0xFF9966FF),
        ));
      } else if (line == 'show' || line == 'hide') {
        blocks.add(ScratchBlock(
          type: ScratchBlockType.looks,
          text: line,
          color: const Color(0xFF9966FF),
        ));
      }
      // Control blocks
      else if (line.startsWith('repeat ') && line.contains(' times')) {
        String times = line.replaceAll('repeat ', '').replaceAll(' times', '');
        blocks.add(ScratchBlock(
          type: ScratchBlockType.control,
          text: 'repeat $times',
          color: const Color(0xFFFFAB19),
          isControl: true,
        ));
      } else if (line == 'forever') {
        blocks.add(ScratchBlock(
          type: ScratchBlockType.control,
          text: 'forever',
          color: const Color(0xFFFFAB19),
          isControl: true,
        ));
      } else if (line.startsWith('if ') && line.contains(' then')) {
        blocks.add(ScratchBlock(
          type: ScratchBlockType.control,
          text: line,
          color: const Color(0xFFFFAB19),
          isControl: true,
        ));
      } else if (line.startsWith('wait ') && line.contains(' seconds')) {
        blocks.add(ScratchBlock(
          type: ScratchBlockType.control,
          text: line,
          color: const Color(0xFFFFAB19),
        ));
      } else if (line == 'end') {
        blocks.add(ScratchBlock(
          type: ScratchBlockType.control,
          text: 'end',
          color: const Color(0xFFFFAB19),
          isControl: true,
        ));
      }
      // Events blocks
      else if (line.startsWith('when green flag clicked')) {
        blocks.add(ScratchBlock(
          type: ScratchBlockType.events,
          text: 'when green flag clicked',
          color: const Color(0xFFFFD500),
        ));
      } else if (line.startsWith('when ') && line.contains(' clicked')) {
        blocks.add(ScratchBlock(
          type: ScratchBlockType.events,
          text: line,
          color: const Color(0xFFFFD500),
        ));
      } else if (line.startsWith('when ') && line.contains(' key pressed')) {
        blocks.add(ScratchBlock(
          type: ScratchBlockType.events,
          text: line,
          color: const Color(0xFFFFD500),
        ));
      }
    }
    
    setState(() {
      _blocks = blocks;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4A90E2),
        title: const Text(
          'ブロック作成テスト',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'テキスト入力:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: TextField(
                      controller: _textController,
                      maxLines: null,
                      expands: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Scratchブロックをテキストで入力...',
                      ),
                      style: const TextStyle(fontFamily: 'monospace'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _parseBlocks,
                    child: const Text('ブロック生成'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: Color(0xFFF5F5F5),
                border: Border(left: BorderSide(color: Colors.grey)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Scratchブロック:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: _blocks.map((block) => ScratchBlockWidget(block: block)).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

enum ScratchBlockType { motion, looks, sound, events, control, sensing, operators, variables }

class ScratchBlock {
  final ScratchBlockType type;
  final String text;
  final Color color;
  final bool isControl;

  ScratchBlock({
    required this.type,
    required this.text,
    required this.color,
    this.isControl = false,
  });
}

class ScratchBlockWidget extends StatelessWidget {
  final ScratchBlock block;

  const ScratchBlockWidget({super.key, required this.block});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 6.0),
      child: IntrinsicWidth(
        child: CustomPaint(
          painter: ScratchBlockPainter(
            color: block.color,
            isControl: block.isControl,
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (block.type == ScratchBlockType.motion)
                  const Icon(Icons.arrow_forward, color: Colors.white, size: 16),
                if (block.type == ScratchBlockType.looks)
                  const Icon(Icons.chat_bubble, color: Colors.white, size: 16),
                if (block.type == ScratchBlockType.control)
                  const Icon(Icons.loop, color: Colors.white, size: 16),
                if (block.type == ScratchBlockType.events)
                  const Icon(Icons.flag, color: Colors.white, size: 16),
                if (block.type != ScratchBlockType.control && block.type != ScratchBlockType.events)
                  const SizedBox(width: 8),
                if (block.type == ScratchBlockType.control || block.type == ScratchBlockType.events)
                  const SizedBox(width: 6),
                Text(
                  block.text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    fontFamily: 'Arial',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ScratchBlockPainter extends CustomPainter {
  final Color color;
  final bool isControl;

  ScratchBlockPainter({required this.color, this.isControl = false});

  @override
  void paint(Canvas canvas, Size size) {
    // 影を描画
    final shadowPaint = Paint()
      ..color = Colors.black.withOpacity(0.2)
      ..style = PaintingStyle.fill;
    
    final shadowPath = _createBlockPath(size, offset: const Offset(2, 2));
    canvas.drawPath(shadowPath, shadowPaint);

    // メインのブロック形状を描画
    final path = _createBlockPath(size);
    
    // グラデーション効果
    final gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        color,
        color.withOpacity(0.8),
      ],
    );
    
    final paint = Paint()
      ..shader = gradient.createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);

    // 外枠を描画
    final borderPaint = Paint()
      ..color = color.withOpacity(0.6)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    canvas.drawPath(path, borderPaint);

    // ハイライト効果
    final highlightPaint = Paint()
      ..color = Colors.white.withOpacity(0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    final highlightPath = _createBlockPath(size, inset: 2);
    canvas.drawPath(highlightPath, highlightPaint);
  }

  Path _createBlockPath(Size size, {Offset offset = Offset.zero, double inset = 0}) {
    final path = Path();
    final cornerRadius = 8.0;
    final notchSize = 12.0;
    
    double left = offset.dx + inset;
    double top = offset.dy + inset;
    double right = size.width + offset.dx - inset;
    double bottom = size.height + offset.dy - inset;

    // 左上角から開始
    path.moveTo(left + cornerRadius, top);
    
    // 上辺と上部の凹み（接続部分）
    path.lineTo(left + 20, top);
    path.lineTo(left + 20 + notchSize / 2, top + notchSize / 2);
    path.lineTo(left + 20 + notchSize, top);
    path.lineTo(right - cornerRadius, top);
    
    // 右上角
    path.arcToPoint(
      Offset(right, top + cornerRadius),
      radius: Radius.circular(cornerRadius),
    );
    
    // 右辺
    path.lineTo(right, bottom - cornerRadius);
    
    // 右下角
    path.arcToPoint(
      Offset(right - cornerRadius, bottom),
      radius: Radius.circular(cornerRadius),
    );
    
    // 下辺と下部の凸み（接続部分）
    if (!isControl) {
      path.lineTo(left + 20 + notchSize, bottom);
      path.lineTo(left + 20 + notchSize / 2, bottom + notchSize / 2);
      path.lineTo(left + 20, bottom);
    }
    path.lineTo(left + cornerRadius, bottom);
    
    // 左下角
    path.arcToPoint(
      Offset(left, bottom - cornerRadius),
      radius: Radius.circular(cornerRadius),
    );
    
    // 左辺
    path.lineTo(left, top + cornerRadius);
    
    // 左上角
    path.arcToPoint(
      Offset(left + cornerRadius, top),
      radius: Radius.circular(cornerRadius),
    );
    
    path.close();
    return path;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
