import 'package:flutter/material.dart';
import 'InputField.dart';
import 'Button.dart';
import 'ButtonGoRegister.dart';

class InputWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: InputField(),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Olvidaste tu contraseña?",
            style: TextStyle(color: Colors.blueGrey[400], fontSize: 10),
          ),
          SizedBox(
            height: 40,
          ),
          Button(),
          SizedBox(
            height: 40,
          ),
          ButtonGoRegister()
        ],
      ),
    );
  }
}
