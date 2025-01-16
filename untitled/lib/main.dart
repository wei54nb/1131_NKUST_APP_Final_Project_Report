import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(SpinWheelApp());
}

class SpinWheelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SpinWheelPage(),
    );
  }
}

class SpinWheelPage extends StatefulWidget {
  @override
  _SpinWheelPageState createState() => _SpinWheelPageState();
}

class _SpinWheelPageState extends State<SpinWheelPage> {
  List<String> options = ['獎品 A', '獎品 B', '獎品 C', '獎品 D', '再接再厲'];
  String result = '點擊下方按鈕開始轉盤!';

  void spinWheel() {
    // 隨機選擇轉盤結果
    Random random = Random();
    int index = random.nextInt(options.length);

    setState(() {
      result = '恭喜你，轉到了: ${options[index]}!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('轉盤遊戲'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: spinWheel,
              child: Text('開始轉盤'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
