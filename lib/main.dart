import 'package:alubank/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Alubank());
}

class Alubank extends StatelessWidget {
const Alubank({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Alubank',
      home: Home(),
      theme:
          ThemeData(primarySwatch: Colors.purple, brightness: Brightness.dark),
    );
  }
}
