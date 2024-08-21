import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Added constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Fixed the property name
            crossAxisAlignment: CrossAxisAlignment.center, // Added for better alignment
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('imagenes/brandy.jpg'),
              ),
              const SizedBox(height: 10.0), // Added spacing
              Text(
                'Brandy Guadrón',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Branding',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              const SizedBox(height: 10.0), // Added spacing
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.deepOrangeAccent,
                  ),
                  title: Text(
                    '+503 7258 3863',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Serif',
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.deepOrangeAccent,
                  ),
                  title: Text(
                    'brandy.guadrón@unasa.edu.sv',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Serif',
                      fontSize: 16.0,
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
