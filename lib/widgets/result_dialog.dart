import 'package:flutter/material.dart';
import 'button_colors.dart';

void showResultDialog(BuildContext context, Map<String, dynamic> result) {
  final sortedNumbers = (result['dezenas'] as List<dynamic>).join(', ');
  final color = lotteryColors[result['loteria'].toLowerCase()] ?? Colors.grey;

  showDialog(
    context: context,
    barrierColor: color.withOpacity(0.8),
    builder: (BuildContext context) {
      return Dialog(
        child: Stack(
          alignment: Alignment.topRight, 
          children: [
            Container(
              padding: const EdgeInsets.only(top: 45, right: 10, left: 10, bottom: 10),
              height: 300,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    result['loteria'].toUpperCase(),
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: color,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        Text(
                          'Concurso: ${result['concurso']}',
                          style: const TextStyle(fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            'Data: ${result['data']}',
                            style: const TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            sortedNumbers,
                            style: TextStyle(
                              color: color,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, right: 8),
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.grey),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ],
        ),
      );
    },
  );
}
