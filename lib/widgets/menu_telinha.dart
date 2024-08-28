import 'package:flutter/material.dart';
import '../Screen/lista_etica_page.dart';  // Importe a ListaEticaPage
import '../Screen/lista_favoritos_page.dart';  // Importe a ListaFavoritosPage

class MenuTelinha extends StatelessWidget {
  const MenuTelinha({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromRGBO(138, 167, 236, 100),
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Página Inicial'),
            onTap: () {
              Navigator.pop(context);  // Fecha o drawer
            },
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Lista'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListaEticaPage()),  // Navega para ListaEticaPage
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favoritos'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListaFavoritosPage()),  // Navega para ListaFavoritosPage
              );
            },
          ),
        ],
      ),
    );
  }
}
