import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              // 상단 영역
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    // 빨간색 박스
                    Expanded(
                      flex: 2,
                      child: Container(color: Colors.red),
                    ),
                    // 파란색, 검정색, 주황색 박스를 포함하는 Column
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(color: Colors.blue),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(color: Colors.black),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(color: Colors.orange),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // 하단 노란색 박스
              Expanded(
                flex: 3,
                child: Container(color: Colors.yellow),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
