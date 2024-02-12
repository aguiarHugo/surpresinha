// ignore_for_file: use_build_context_synchronously, avoid_print

import 'package:http/http.dart' as http;
import 'dart:convert';
import '../widgets/result_dialog.dart';
import 'package:flutter/material.dart';

Future<void> fetchLotteryResult(BuildContext context, String lottery) async {
  // Mostra o loader antes de iniciar a requisição HTTP
  showDialog(
    context: context,
    barrierDismissible: false, // Impede que o dialog seja fechado ao tocar fora dele
    builder: (BuildContext context) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisSize: MainAxisSize.min, // Usa o mínimo espaço necessário
            children: [
              CircularProgressIndicator(
                color: Color.fromARGB(255, 7, 243, 15),
              ),
              // Texto opcional
            ],
          ),
        ),
      );
    },
  );

  try {
    final url = Uri.parse('https://loteriascaixa-api.herokuapp.com/api/$lottery/latest');
    final response = await http.get(url);

    // Fecha o dialog do loader antes de processar a resposta
    Navigator.pop(context);

    if (response.statusCode == 200) {
      final result = json.decode(response.body);
      showResultDialog(context, result);
    } else {
      // Tratamento de erro ou exibição de mensagem de falha
      print('Falha ao buscar os resultados da loteria.');
    }
  } catch (e) {
    // Fecha o dialog do loader em caso de exceção
    Navigator.pop(context);
    print('Erro ao buscar os resultados da loteria: $e');
  }
}
