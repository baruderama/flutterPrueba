import 'package:flutter/material.dart';
import 'InputFieldRegister.dart';
import 'ButtonRegister.dart';
import 'ButtonGoLogin.dart';

class InputWrapperRegister extends StatelessWidget {
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
            child: InputFieldRegister(),
          ),
          SizedBox(
            height: 40,
          ),
          ButtonRegister(),
          SizedBox(
            height: 40,
          ),
          ButtonGoLogin(),
        ],
      ),
    );
  }
}
