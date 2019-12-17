import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFd54a58),
        title: Container(
          child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text("Inicio"),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                iconSize: 30.0,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),

    );
  }
}
