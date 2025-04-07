import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          '계산기',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          // 상단 표시 영역
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.bottomRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "표준",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "0",
                    style: TextStyle(color: Colors.white, fontSize: 48),
                  ),
                ],
              ),
            ),
          ),
          // 버튼 영역
          Expanded(
            flex: 5,
            child: GridView.builder(
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemCount: buttons.length,
              itemBuilder: (context, index) {
                final button = buttons[index];
                return CalculatorButton(
                  text: button['text'],
                  color: button['color'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// 버튼 데이터
final List<Map<String, dynamic>> buttons = [
  {'text': 'MC', 'color': Colors.grey},
  {'text': 'MR', 'color': Colors.grey},
  {'text': 'M+', 'color': Colors.grey},
  {'text': 'M-', 'color': Colors.grey},
  {'text': 'MS', 'color': Colors.grey},
  {'text': '%', 'color': Colors.grey},
  {'text': 'CE', 'color': Colors.grey},
  {'text': 'C', 'color': Colors.grey},
  {'text': '<-', 'color': Colors.grey},
  {'text': '/', 'color': Colors.orange},
  {'text': '1/x', 'color': Colors.grey},
  {'text': 'x²', 'color': Colors.grey},
  {'text': '√x', 'color': Colors.grey},
  {'text': '*', 'color': Colors.orange},
  {'text': '7', 'color': Colors.white},
  {'text': '8', 'color': Colors.white},
  {'text': '9', 'color': Colors.white},
  {'text': '-', 'color': Colors.orange},
  {'text': '4', 'color': Colors.white},
  {'text': '5', 'color': Colors.white},
  {'text': '6', 'color': Colors.white},
  {'text': '+', 'color': Colors.orange},
  {'text': '1', 'color': Colors.white},
  {'text': '2', 'color': Colors.white},
  {'text': '3', 'color': Colors.white},
  {'text': '=', 'color': Colors.blueAccent},
];

// 계산기 버튼 위젯
class CalculatorButton extends StatelessWidget {
  final String text;
  final Color color;

  CalculatorButton({required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: text == '=' ? Colors.white : Colors.black,
            fontSize: text == '=' ? 24 : 20, // 수정된 부분
          ),
        ),
      ),
    );
  }
}
