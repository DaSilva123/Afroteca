
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class Login extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Login> {
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
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        borderSide: BorderSide(color: Color(0xFF880e4f))
                    ),
                    labelText: "E-mail",
                    labelStyle: TextStyle(
                        color: Colors.redAccent, fontWeight: FontWeight.w600)),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 18.0),
              ),
              SizedBox(
                height: 17,
              ),
              TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      borderSide: BorderSide(color: Color(0xFF880e4f))
                    ),
                    labelText: "Senha",
                    labelStyle: TextStyle(
                        color: Colors.redAccent, fontWeight: FontWeight.w600)),
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600),
              ),

              Container(
                height: 40,
                alignment: Alignment.centerRight,
                child: FlatButton(
                  child:const Text(
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
                    onPressed: (){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    }
                ),
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
                child:const Text("Cadastre-se",
                  style: TextStyle(
                    color: Colors.redAccent,
                  ),
                ),
                onPressed: () {}
            ),
          ],
        ),
      ),
    );
  }
}
