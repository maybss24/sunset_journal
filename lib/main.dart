import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Sunset'),
        backgroundColor: Colors.lime[300],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10 ),
          child: Row(
              children: [
                Text('Name:',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.lime,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    )
                ),
                Text('Maybel Pesigan',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    )
                ),
              ]
          ),
      ),

          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10 ),
            child: Row(
                children: [
                  Text('Age:',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.lime,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      )
                  ),
                  Text('21 years old',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      )
                  ),
                ]
            ),
          ),

          Container(
            margin: EdgeInsets.fromLTRB(5, 4, 3, 2,),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10 ),
            child: Row(
                children: [
                  Text('Gender:',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.lime,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      )
                  ),
                  Text('Female',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      )
                  ),
                ]
            ),
          ),
        ],
      ),
    ),
  ));
}

