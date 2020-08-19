import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage('images/avatar.jpg'),
              ),
              Text(
                'Yosafat Martinez',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              Text(
                'Estudiante de Flutter',
                style: TextStyle(
                  fontFamily: 'Sans',
                  fontSize: 20,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.call,
                      size: 25.0,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+52-5525-9083',
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 20.0,
                        fontFamily: 'Sans',
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      size: 20.0,
                    ),
                    title: Text(
                      'yosafatmartinez@qwip-app.com',
                      style: TextStyle(
                        fontFamily: 'Sans',
                        color: Colors.teal,
                        fontSize: 18.0,
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
