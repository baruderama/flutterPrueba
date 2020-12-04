import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'LoginPage.dart';
//import 'package:flutter_gen/gen_l10n/gallery_localizations.dart';
import 'dart:async';
import 'dart:convert';
import 'register/RegisterPage.dart';
import 'home/HomePage.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage2 extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage2> {
  Map data;
  List usersData;
  getUsers() async {
    http.Response response =
        await http.get('http://192.168.0.16:4000/api/getAllUsers');
    debugPrint(response.body);

    data = json.decode(response.body);

    setState(() {
      usersData = data['users'];
    });
  }

  addUsers(String username, String password) async {
    Map data2 = {'username': username, 'password': password};
    debugPrint(data2.toString());
    http.Response response =
        await http.post('http://192.168.0.16:4000/api/addUsers', body: data2);

    //debugPrint(response.body);

    //data = json.decode(response.body);
  }

  @override
  void initState() {
    super.initState();
    getUsers();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('user list'),
        backgroundColor: Colors.indigo[800],
      ),
      body: ListView.builder(
        itemCount: usersData == null ? 0 : usersData.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                    onPressed: () {
                      addUsers('jorge', '1234');
                    },
                    child: Text('button'),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red)))
              ],
            ),
          );
          /*return Card(
            child: Row(
              children: <Widget>[Text("${usersData[index]["id"]}")],
            ),
          );*/
        },
      ),
    );
  }
}
