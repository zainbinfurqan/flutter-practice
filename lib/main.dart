import 'package:flutter/material.dart';
import 'components/Buttons/FlatButton.dart';
import 'components/Buttons/RaisedButton.dart';
import 'components/Buttons/RaisedButtonWithParams.dart';
import 'components/Buttons/IconButton.dart';
import 'components/InputFields/CheckFld.dart';
import 'components/InputFields/RadioFld.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/radiofld',
      routes: {
        '/flatbtn': (context) => FlatButtonEX(),
        '/raisedbtn': (context) => RaisedButtonEX(),
        '/raisedbtnwithparam': (context) => RaisedButtonWithParamsEX(),
        '/iconbtn': (context) => IconButtonEx(),
        '/checkfld': (context) => CheckFld(),
        '/radiofld': (context) => RadioFld(),
      },
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
