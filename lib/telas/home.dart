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
        title: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Inicio",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.0),
                )
              ],
            )
          ],
        ),
        leading: IconButton(
          padding: EdgeInsets.only(left: 350.0),
          onPressed: () {},
          icon: Icon(Icons.search),
          iconSize: 30.0,
          color: Colors.white,
        ),
      ),

    );
  }
}
