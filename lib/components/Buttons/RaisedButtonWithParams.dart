import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new RaisedButtonWithParamsEX(),
  ));
}

class RaisedButtonWithParamsEX extends StatefulWidget {
  @override
  HomePage createState() => new HomePage();
}

class HomePage extends State<RaisedButtonWithParamsEX> {
  String name = '';

  void _showName(value) => setState(() => name = value);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Raised Button With Params'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(10),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new RaisedButton(
                  onPressed: () => _showName("Zain Ahmed"),
                  color: Colors.green,
                  child: new Text("Show Zain Ahmed",
                      style: TextStyle(fontSize: 20, color: Colors.white))),
              new Text(name,
                  style: TextStyle(
                    fontSize: 20,
                  )),
              new RaisedButton(
                  onPressed: () => _showName("Faraz Ahmed"),
                  color: Colors.green,
                  child: new Text("Show Faraz Ahmed",
                      style: TextStyle(fontSize: 20, color: Colors.white))),
            ],
          ),
        ),
      ),
    );
  }
}
