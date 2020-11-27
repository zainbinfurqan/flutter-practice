import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new IconButtonEx(),
  ));
}

class IconButtonEx extends StatefulWidget {
  @override
  HomePage createState() => new HomePage();
}

class HomePage extends State<IconButtonEx> {
  int _value = 0;

  void _add() => setState(() => _value++);
  void _sub() => setState(() => _value--);

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
              new IconButton(icon: new Icon(Icons.add), onPressed: _add),
              new Text(_value.toString(),
                  style: TextStyle(
                      fontSize: 20,
                      color: _value > 0 ? Colors.green : Colors.red)),
              new IconButton(icon: new Icon(Icons.remove), onPressed: _sub),
            ],
          ),
        ),
      ),
    );
  }
}
