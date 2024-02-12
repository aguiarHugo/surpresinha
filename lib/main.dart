import 'package:flutter/material.dart';
import 'widgets/lottery_button.dart'; // Importe o widget do botão

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Surpresinha'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), centerTitle: true,
      backgroundColor: const Color(0xFF00ab69),),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: LotteryButton(lotteryName: 'megasena'),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: LotteryButton(lotteryName: 'lotofacil'),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: LotteryButton(lotteryName: 'quina'),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: LotteryButton(lotteryName: 'lotomania'),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: LotteryButton(lotteryName: 'federal'),
            ),
          ],
        ),
      ),
    );
  }
}
