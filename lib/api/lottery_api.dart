import 'package:http/http.dart' as http;
import 'dart:convert';
import '../widgets/result_dialog.dart';
import 'package:flutter/material.dart';

Future<void> fetchLotteryResult(BuildContext context, String lottery) async {
  final url = Uri.parse('https://loteriascaixa-api.herokuapp.com/api/$lottery/latest');
  final response = await http.get(url);

  if (response.statusCode == 200) {
    final result = json.decode(response.body);
    showResultDialog(context, result);
  } else {
    // Tratamento de erro ou exibição de mensagem de falha
    print('Falha ao buscar os resultados da loteria.');
  }
}
