import 'package:flutter/material.dart';
import 'ButtonGoLogin2.dart';
import 'ButtonGoRegister2.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
        Colors.white,
        Colors.yellow[200],
        Colors.blue,
        Colors.blue[700],
      ])),
      child: Column(children: <Widget>[
        SizedBox(
          height: 150,
        ),
        Center(
          child: Text(
            "Appkinson",
            style: TextStyle(
                color: Colors.blue[900], fontSize: 40, fontFamily: 'Raleway'),
          ),
        ),
        Positioned(
            child: Image.asset(
          "images/cerebroAzul.png",
          height: size.height * 0.25,
        )),
        SizedBox(
          height: 70,
        ),
        Center(
          child: Text(
            "Bienvenido!",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ButtonGoLogin2(),
        SizedBox(
          height: 10,
        ),
        ButtonGoRegister2(),
      ]),
    ));
  }
}
