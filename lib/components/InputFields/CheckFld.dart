import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new CheckFld(),
  ));
}

class CheckFld extends StatefulWidget {
  @override
  HomePage createState() => new HomePage();
}

class HomePage extends State<CheckFld> {
  String gender = '';

  void _selectGender(value) => setState(() => gender = value());

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Check box '),
      ),
      body: new Container(
        padding: new EdgeInsets.all(10),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new CheckboxListTile(
                value: gender == 'male' ? true : false,
                onChanged: (value) {
                  setState(() => gender = "male");
                },
                title: new Text("Male"),
              ),
              new Text(gender),
              new CheckboxListTile(
                value: gender == 'female' ? true : false,
                onChanged: (value) {
                  setState(() => gender = "female");
                },
                title: new Text("Female"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
