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
      home: MyHomePage(title: 'Supresinha'),
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
      backgroundColor: Colors.green[300],),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LotteryButton(lotteryName: 'megasena'),
            LotteryButton(lotteryName: 'lotofacil'),
          ],
        ),
      ),
    );
  }
}
