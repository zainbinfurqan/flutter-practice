import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new TextInputfld(),
  ));
}

class TextInputfld extends StatefulWidget {
  @override
  HomePage createState() => new HomePage();
}

class HomePage extends State<TextInputfld> {
  String _value = '';

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
              new TextField(
                autocorrect: true,
                autofocus: true,
                onChanged: (String value) {
                  setState(() => _value = value);
                },
                keyboardType: TextInputType.text,
                decoration:
                    new InputDecoration(labelText: "Name", hintText: "example"),
              ),
              new Text(_value)
            ],
          ),
        ),
      ),
    );
  }
}
