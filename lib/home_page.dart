import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sutra Home Page',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/load-icon-png-8.png', // Replace with your image asset path
              width: 120,
              height: 120,
            ),
            SizedBox(height: 20),
            const Text(
              'Loading.. please wait!!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            //SizedBox(height: 10),
            //const Text(
              //'time remaining: 4s',
              //style: TextStyle(fontSize: 16),
            //),
          ],
        ),
      ),
    );
  }
}
