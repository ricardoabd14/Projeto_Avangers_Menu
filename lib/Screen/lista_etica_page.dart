import 'package:flutter/material.dart';
import '../BackGroundColor/gradient_background.dart'; // Certifique-se de que o caminho está correto

class ListaEticaPage extends StatelessWidget {
  final List<String> eticaItems = [
    "Ética 1",
    "Ética 2",
    "Ética 3",
    "Ética 4",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Ética'),
        backgroundColor: Color.fromRGBO(138, 167, 236, 100),
      ),
      body: GradientBackground( // Envolvendo o ListView.builder com GradientBackground
        child: ListView.builder(
          itemCount: eticaItems.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(eticaItems[index]),
            );
          },
        ),
      ),
    );
  }
}
