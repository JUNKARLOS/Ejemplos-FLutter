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
        title: Text('Ejemplo con Navigator'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
          child: Center(
            child: Text('Ejemplo Navigator'),
          )
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orangeAccent,
          child: Icon(Icons.add),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return NewScreen();
              }),
            );
          }
      ),
    );
  }
}

class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nueva pantalla'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Contenido nueva pantalla'),
            RaisedButton(
              child: Text('Atrás'),
              onPressed: () {
                Navigator.pop(context);
              }
            )
          ],
          ),
        )
    );
  }
}