import 'package:flutter/material.dart';
import '../api/lottery_api.dart';
import 'button_colors.dart';


class LotteryButton extends StatelessWidget {
  final String lotteryName;

  const LotteryButton({Key? key, required this.lotteryName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Busca a cor da loteria no mapa, com uma cor padrão se não encontrada
    final color = lotteryColors[lotteryName.toLowerCase()] ?? Colors.grey;

    return SizedBox(
      width: 200,
      height: 50,
      child: ElevatedButton(
        onPressed: () => fetchLotteryResult(context, lotteryName),
        style: ElevatedButton.styleFrom(
          backgroundColor: color, // Aplica a cor do botão baseada no nome da loteria
          foregroundColor: Colors.white, // Cor do texto dentro do botão, para garantir contraste
        ),
        child: Text(lotteryName.toUpperCase()),
      ),
    );
  }
}
