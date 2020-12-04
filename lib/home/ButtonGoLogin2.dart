import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../LoginPage.dart';

class ButtonGoLogin2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        color: Colors.cyan[500],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        onPressed: () {},
        child: Text(
          "Login",
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );*/
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: RaisedButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        //   side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
        onPressed: () {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => LoginPage()));
        },
        padding: EdgeInsets.symmetric(horizontal: 50),
        color: Colors.grey[100],
        textColor: Colors.blue,
        child: Text("Iniciar Sesion ", style: TextStyle(fontSize: 15)),
      ),
    );
  }
}
