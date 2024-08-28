import 'package:flutter/material.dart';
import '../BackGroundColor/gradient_background.dart'; // Certifique-se de que o caminho está correto

class ListaFavoritosPage extends StatelessWidget {
  final List<String> favoritosItems = [
    "Favorito 1",
    "Favorito 2",
    "Favorito 3",
    "Favorito 4",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Favoritos'),
        backgroundColor: Color.fromRGBO(138, 167, 236, 100),
      ),
      body: GradientBackground( // Envolvendo o ListView.builder com GradientBackground
        child: ListView.builder(
          itemCount: favoritosItems.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(favoritosItems[index]),
            );
          },
        ),
      ),
    );
  }
}
