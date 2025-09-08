import 'package:flutter/material.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menú Flutter',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido a PartyFinder'),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
        
        backgroundColor: const Color.fromARGB(255, 117, 0, 252),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 189, 0, 196),
              ),
              child: Text(
                'Menú',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Conoce gente'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Reservas'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Perfil'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Cerrar sesión'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/fondo.jpg'), // tu imagen
        fit: BoxFit.cover, // ajusta la imagen a la pantalla
      ),
      ),
      child: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Image(image: AssetImage('assets/Disco1.jpg')),
          SizedBox(height: 20),
          Image(image: AssetImage('assets/Disco2.png')),
          SizedBox(height: 20),
          Image(image: AssetImage('assets/Disco3.jpg')),
          SizedBox(height: 20),
          Image(image: AssetImage('assets/Disco4.jpeg')),
          SizedBox(height: 20),
          Image(image: AssetImage('assets/Disco5.png')),
        ],
      ),
    ),
    );
  }
}
