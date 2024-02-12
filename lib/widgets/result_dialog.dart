import 'package:flutter/material.dart';

void showResultDialog(BuildContext context, Map<String, dynamic> result) {
  final sortedNumbers = (result['dezenas'] as List<dynamic>).join(', ');

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          '${result['loteria'].toUpperCase()}',
          style: const TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.green),
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
                padding: const EdgeInsets.only(top: 8),
                child: Text('Resultado: $sortedNumbers',
                style: const TextStyle(
                      fontSize: 20,
                      ),),
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
