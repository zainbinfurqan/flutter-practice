import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new RadioFld(),
  ));
}

class RadioFld extends StatefulWidget {
  @override
  HomePage createState() => new HomePage();
}

class HomePage extends State<RadioFld> {
  int gender = 0;

  void _selectGender(int value) => setState(() => gender = value);

  Widget radioList() {
    List<Widget> list = new List<Widget>();

    for (var i = 0; i < 10; i++) {
      list.add(new RadioListTile(
        value: i,
        groupValue: gender,
        onChanged: _selectGender,
        title: new Text(i.toString()),
      ));
    }

    Column column = new Column(
      children: list,
    );
    return column;
  }

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
              radioList(),
            ],
          ),
        ),
      ),
    );
  }
}
