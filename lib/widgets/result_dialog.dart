// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'button_colors.dart';

void showResultDialog(BuildContext context, Map<String, dynamic> result) {
  final sortedNumbers = (result['dezenas'] as List<dynamic>).join(', ');
  final color = lotteryColors[result['loteria'].toLowerCase()] ?? Colors.grey;

  showDialog(
    context: context,
    barrierColor: color,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          '${result['loteria'].toUpperCase()}',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                'Concurso: ${result['concurso']}',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  'Data: ${result['data']}',
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
               Padding(
               padding:  const EdgeInsets.only(top: 8),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Text(
                  sortedNumbers,
                  style: TextStyle(
                    color: color,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              // Adicione mais campos conforme necessário
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Fechar'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
