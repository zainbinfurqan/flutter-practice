import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new FlatButtonEX(),
  ));
}

class FlatButtonEX extends StatefulWidget {
  @override
  HomePage createState() => new HomePage();
}

class HomePage extends State<FlatButtonEX> {
  int _value = 0;

  void _add() => setState(() => _value++);
  void _sub() => setState(() => _value--);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Flat Button'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(10),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new FlatButton(
                  onPressed: _add,
                  child: new Text("Add", style: TextStyle(fontSize: 20))),
              new Text(_value.toString(),
                  style: TextStyle(
                      fontSize: 20,
                      color: _value > 0 ? Colors.green : Colors.red)),
              new FlatButton(
                  onPressed: _sub,
                  child: new Text("Sub", style: TextStyle(fontSize: 20))),
            ],
          ),
        ),
      ),
    );
  }
}
