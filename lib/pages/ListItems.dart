import 'package:flutter/material.dart';
import 'package:sunset/pages/ItemCard.dart';
import 'Colors.dart';

class Listitems extends StatefulWidget {
  const Listitems({super.key});

  @override
  State<Listitems> createState() => _ListitemsState();
}

class _ListitemsState extends State<Listitems> {
  List<Color> colors = [
    Color(name: 'Pink Sunset', description: 'soft pink tones', caption: 'Dusk Dreams'),
    Color(name: 'Yellow Sunset', description: 'yellowish', caption: 'Fiery Skies'),
    Color(name: 'Orange Sunset', description: 'yellow orange', caption: 'Golden Glow'),
    Color(name: 'Orange Glow', description: 'vibrant orange hue', caption: 'Sunset Magic'),
    Color(name: 'Red Twilight', description: 'deep red sunset', caption: 'Crimson Horizon'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Beautiful Ending',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Arial',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.pink.shade100,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text('Sunset Journal',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
            ),
            ...colors.map((color) {
              return ItemCard(color: color);
            }).toList(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.pushNamed(context, '/add');
          },
          backgroundColor: Colors.pink.shade200,
          child: Icon(Icons.add),
      ),
    );
  }
}
