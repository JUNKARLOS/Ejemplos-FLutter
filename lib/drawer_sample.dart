import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My app title',
        home: new HomeScreen()
    );
  }
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Mi App'),
        backgroundColor: Colors.red,
      ),
      body: Center(
          child: Center(
            child: Text('Mi contenido'),
          )
      ),
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text("Guillermo García"),
              accountEmail: Text("email@prueba.es"),
              currentAccountPicture: CircleAvatar(backgroundColor: Colors.white),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            ListTile(
              title: Text('Primero elemento!'),
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text('Segundo elemento!'),
              leading: Icon(Icons.settings),
            ),
          ],
        )
      ),
    );
  }
}