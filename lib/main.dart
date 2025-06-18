import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Sunset'),
        backgroundColor: Colors.lime[300],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children:  [
            Text('Hello', style: TextStyle(fontSize: 20,
              color: Colors.lime[700],
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,)
            ),
            Text('Welcomeee to my...', style: TextStyle(fontSize: 30,
              color: Colors.lime[700],
              fontWeight: FontWeight.bold,),
             ),
            Text('Sunset Journal', style: TextStyle(fontSize: 40,
              color: Colors.lime[700],
              fontWeight: FontWeight.bold,),
            ),
          ],
        ),
      ),
    ),
  ));
}

