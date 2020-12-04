import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Button extends StatelessWidget {
  addUsers(String username, String password) async {
    Map data2 = {'username': username, 'password': password};
    debugPrint(data2.toString() + '?');
    http.Response response = await http.post(
      'http://192.168.0.16:4000/api/addUsers',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{'username': username}),
    );

    //debugPrint(response.body);

    //data = json.decode(response.body);
  }

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
      margin: EdgeInsets.symmetric(horizontal: 50),
      child: RaisedButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        //   side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))),
        onPressed: () {
          addUsers('jorge', '1234');
        },
        padding: EdgeInsets.symmetric(horizontal: 50),
        color: Color.fromRGBO(0, 160, 227, 1),
        textColor: Colors.white,
        child: Text("Iniciar Sesión", style: TextStyle(fontSize: 15)),
      ),
    );
  }
}
