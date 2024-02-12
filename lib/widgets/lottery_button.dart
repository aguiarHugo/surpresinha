import 'package:flutter/material.dart';
import '../api/lottery_api.dart';

class LotteryButton extends StatelessWidget {
  final String lotteryName;

  const LotteryButton({Key? key, required this.lotteryName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => fetchLotteryResult(context, lotteryName),
      child: Text(lotteryName.toUpperCase()),
    );
  }
}
