import 'package:flutter/material.dart';
import './widgets/menu_telinha.dart';  // Importa o menu lateral
import './Screen/lista_etica_page.dart';  // Importe o arquivo lista_etica_page.dart
import './Screen/lista_favoritos_page.dart';  // Importe o arquivo lista_favoritos_page.dart
import './BackGroundColor/gradient_background.dart'; // Importe o widget GradientBackground

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projeto Menu Telinha',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),  // Mantém o HomeScreen como a página inicial
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Inicial'),
        backgroundColor: Color.fromRGBO(138, 167, 236, 100),
      ),
      drawer: const MenuTelinha(),  // Mantém o menu lateral
      body: GradientBackground( // Envolvendo o conteúdo com GradientBackground
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Card para a página de Lista
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListaEticaPage()),  // Navega para ListaEticaPage
                  );
                },
                child: Card(
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    width: 200,
                    height: 100,
                    child: Center(
                      child: Text(
                        'Lista',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Card para a página de Favoritos
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListaFavoritosPage()),  // Navega para ListaFavoritosPage
                  );
                },
                child: Card(
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    width: 200,
                    height: 100,
                    child: Center(
                      child: Text(
                        'Favoritos',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
