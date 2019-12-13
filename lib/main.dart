import 'package:afroteca/telas/login.dart';
import 'package:flutter/material.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Afroteca',
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
