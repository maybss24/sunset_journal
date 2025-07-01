import 'package:flutter/material.dart';
import 'package:sunset/pages/AddColor.dart';
import 'package:sunset/pages/Dashboard.dart';
import 'package:sunset/pages/ListItems.dart';

void main() {
 runApp(MaterialApp(
   routes: {
    '/' : (context) => Listitems(),
    '/add' : (context) => Addcolor()
   },
 ));
}

