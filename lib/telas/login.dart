import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class Login extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Login> {

  TextStyle _textoLogin = TextStyle(
      color: Colors.black,
      fontSize: 18.0,
      fontWeight: FontWeight.w600
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfdf7e7),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(
              "images/afroteca.jpg",
              height: MediaQuery.of(context).size.height / 2.3,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Color(0xFF880e4f),
                    fontWeight: FontWeight.w500
                ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(0xFF880e4f)
                      )
                  ),
              ),
              textAlign: TextAlign.left,
              style: _textoLogin
            ),
            SizedBox(
              height: 17,
            ),
            TextField(
              keyboardType: TextInputType.text,

              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Senha",
                  suffixIcon: IconButton(
                      icon: Icon(
                          Icons.visibility,
                      ),
                      onPressed: (){}),
                  labelStyle: TextStyle(
                      color: Color(0xFF880e4f),
                      fontWeight: FontWeight.w500
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey
                      )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color(0xFF880e4f)
                      )
                  )
              ),
              textAlign: TextAlign.left,
              style: _textoLogin
            ),
            Container(
              height: 40,
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: const Text(
                  "Esqueceu a senha?",
                  style: TextStyle(color: Color(0xFF1565c0)),
                  textAlign: TextAlign.right,
                ),
                onPressed: () {},
              ),
            ),
            Container(
              height: 42.0,
              child: RaisedButton(
                  child: const Text(
                    "Entrar",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  color: Color(0xFF2196f3),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Ainda não tem uma conta?"),
            FlatButton(
              padding: EdgeInsets.all(1.0),
                child: const Text(
                  "Cadastre-se",
                  style: TextStyle(
                    letterSpacing: 0.5,
                    color: Colors.redAccent,
                  ),
                ),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
